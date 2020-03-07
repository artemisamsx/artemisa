#include "ps2.h"

volatile PS2Port* _ps2_interrupt_ports[2] {
  NULL,
  NULL,
};

void _ps2_interrupt(int p) {
  volatile PS2Port* port = _ps2_interrupt_ports[p];
  if (port != NULL) {
    port->clock_interrupt();
  }
}

void _ps2_interrupt0() { _ps2_interrupt(0); }
void _ps2_interrupt1() { _ps2_interrupt(1); }

void(*_ps2_interrupt_handlers[2])() {
  _ps2_interrupt0,
  _ps2_interrupt1,
};

PS2Result PS2Port::begin(uint8_t data_pin, uint8_t clk_pin) {
  if (_state != PS2State::CREATED) {
    return PS2Result::ERR_ALREADY_INIT;
  }

  // Configure the IO pins
  _data_pin = data_pin;
  _clk_pin = clk_pin;
  pinMode(clk_pin, INPUT_PULLUP);  /* Setup Clock pin */
  pinMode(data_pin, INPUT_PULLUP); /* Setup Data pin */

  // Configure the clock signal interruption
  int interrupt = digitalPinToInterrupt(clk_pin);
  _ps2_interrupt_ports[interrupt] = this;
  void (*int_handler)() = _ps2_interrupt_handlers[interrupt];
  attachInterrupt(interrupt, int_handler, FALLING);

  // Configure internal state
  _state = PS2State::IDLE;
  return PS2Result::OK;
}

PS2Result PS2Port::send_cmd_reset() {
  PS2Result res = state_result();
  if (res != PS2Result::OK) {
    return res;
  }
  if (!_tx_buffer.write(PS2_COMMAND_RESET)) {
    return PS2Result::ERR_BUFFER_OVERFLOW;
  }
  return PS2Result::OK;
}

PS2Result PS2Port::send_cmd_leds(uint8_t leds) {
  PS2Result res = state_result();
  if (res != PS2Result::OK) {
    return res;
  }
  if (!_tx_buffer.write(PS2_COMMAND_LED_STATE)) {
    return PS2Result::ERR_BUFFER_OVERFLOW;
  }
  if (!_tx_buffer.write(leds)) {
    return PS2Result::ERR_BUFFER_OVERFLOW;
  }
  return PS2Result::OK;
}

PS2Result PS2Port::receive_scancode(PS2Scancode &sc) {
  PS2Result res = state_result();
  if (res != PS2Result::OK) {
    return res;
  }

  noInterrupts();
  sc.code = 0;
  _rx_buffer.read(sc.code);
  interrupts();
  return PS2Result::OK;
}

void PS2Port::clock_interrupt() volatile {
  switch (_state) {
    case PS2State::IDLE:
      // An incoming transfer is initiated
      _state = PS2State::RX_TRANSFER;
      [[fallthrough]];
    case PS2State::RX_TRANSFER:
    case PS2State::RX_PARITYERR:
      receive_bit();
      break;
    case PS2State::TX_SENDREQ:
      // An outgoing transfer is initiated
      _state = PS2State::TX_TRANSFER;
      [[fallthrough]];
    case PS2State::TX_TRANSFER:
      send_bit();
      break;
    default:
      // Not ready to transfer bits.
      break;
  }
}

void PS2Port::send_bit() volatile {
  _tx_bitcount++;
  uint8_t bit;
  switch (_tx_bitcount) {
    case 1:
      _tx_parity = 0;
      digitalWrite(_data_pin, LOW);
      break;
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
      // Data bits
      bit = _tx_bits & 0x01;
      digitalWrite(_data_pin, bit);
      _tx_parity += bit;
      _tx_bits >>= 1;
      break;
    case 10:
      // Parity: even is HIGH, odd is LOW
      bit = ~_tx_parity & 0x01;
      digitalWrite(_data_pin, bit);
      break;
    case 11: // Stop bit write change to input pull up for high stop bit
      comm_acksend();
      break;
    case 12: // Acknowledge bit low we cannot do anything if high instead of low
      bit = digitalRead(_data_pin);
      if (!bit) {
        // TODO: send again?
      }
      _tx_bitcount = 0;
      _state = PS2State::IDLE;
  }
}

void PS2Port::receive_bit() volatile {
  // Check whether last bit was received long ago
  // If so, we consider this a new transmission
  if (_rx_timer.triggered()) {
    _rx_bitcount = 0;
#ifdef PS2_DEBUG
    Serial.println(F("+rxto"));
#endif
  }
  _rx_timer.reset(PS2_RX_TIMEOUT);

  uint8_t bit = digitalRead(_data_pin);
  _rx_bitcount++;
  switch (_rx_bitcount) {
    case 1: // Start bit
      _rx_parity = 0;
      _rx_bits = 0;
      break;
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9: // Data bits
      _rx_parity += bit;
      _rx_bits >>= 1;
      _rx_bits |= (bit) ? 0x80 : 0;
      break;
    case 10: // Parity check
      if ((_rx_parity & 0x01) == bit) {
        // Received bit is even if HIGH, odd if LOW
        // Stored parity LSB is odd if HIGH, even if LOW
        // Same value means parity error
        _state = PS2State::RX_PARITYERR;
      }
      break;
    case 11: // Stop bit
      _rx_bitcount = 0;
      if (_state == PS2State::RX_PARITYERR) {
#ifdef PS2_DEBUG
        Serial.println(F("+PARITYERR"));
#endif
        send(PS2_COMMAND_RESEND);
      } else {
        receive(_rx_bits);
      }
      break;
  }
}

void PS2Port::try_send() volatile {
  uint8_t data;
  if (_state != PS2State::IDLE && _tx_buffer.read(data)) {
    _tx_last = data;
    send(data);
  }
}

void PS2Port::send(uint8_t data) volatile {
  _tx_bits = data;
  _state = PS2State::TX_SENDREQ;
  // The following request to send may interrupt a incoming transmission. The PS2 protocol
  // states that, if that occurs, the device will try to retransmit all the bytes that
  // comprise the transmission. For example, if it fails to transmit the second byte of a 
  // breaking code, it will retransmit again both bytes. Because of that, we clean up
  // all the rx state to be prepared for this situation.
  _rx_scancode = 0;
  _rx_bitcount = 0;
  _rx_bits = 0;
  comm_reqsend();
}

void PS2Port::receive(uint8_t data) volatile {
  // By default, assume we are now idle. If reception ends up in another state,
  // it will be set after this.
  _state = PS2State::IDLE;
  switch (data) {
    case PS2_CODE_ACKNOWLEDGE:
      try_send();
      break;
    case PS2_CODE_RESEND:
      send(_tx_last);
      break;
    case PS2_CODE_ECHO:
      if (_tx_last != PS2_COMMAND_ECHO) {
        // Unexpected echo response
        panic(PS2Error::DEVICE_PROTOERR);
      }
      try_send();
      break;
    case PS2_CODE_ERR0:
    case PS2_CODE_ERR1:
      // These are either a general error detected by the keybord or a buffer overrun in its side.
      // It is very common when several keys (4 or more) are pressed simultaneously. It could
      // also happen if the TX buffer of the keyboard is full. But this should be really unlikely
      // since we are operating in inhibit mode only when we send data to the device, accepting any 
      // transmission from they keyboard and buffering it. 
      // 
      // Considering the situations, when this error raised what we do is just to reset the RX
      // scancode and wait for the keyboard to recover from the situation.
      _rx_scancode = 0;
      break;
    default:
      receive_scancode(data);
      break;
  }
}

void PS2Port::receive_scancode(uint8_t data) volatile {  
  _rx_scancode <<= 8;
  _rx_scancode |= data;
  switch (data) {
    case PS2_CODE_EXTENDED:
    case PS2_CODE_BREAK:
      // Special code, collect it and wait for next bytes
      break;
    default:
      // Regular code, collect it and save into the buffer
      if (_rx_buffer.write(_rx_scancode)) {
        _rx_scancode = 0;
        try_send();        
      } else {
        panic(PS2Error::RX_BUFFER_OVERFLOW);
      }
      break;
  }
}

void PS2Port::panic(PS2Error err) volatile {
  _state = PS2State::PANIC;
  _error = err;
#ifdef PS2_DEBUG
  Serial.print(F("panic:"));
  Serial.println(err);
#endif
}

PS2Result PS2Port::state_result() const {
  if (_state != PS2State::PANIC) {
    return PS2Result::OK;
  }
  switch (_error) {
    case TX_BUFFER_OVERFLOW:
    case RX_BUFFER_OVERFLOW:
      return PS2Result::ERR_BUFFER_OVERFLOW;
    case DEVICE_PROTOERR:
      return PS2Result::ERR_DEVICE_FAILED;
    default:
      return PS2Result::ERR_UNKNOWN;
  }
}

void PS2Port::comm_reqsend() volatile {
  comm_inhibit();
  pinMode(_data_pin, OUTPUT);
  digitalWrite(_data_pin, LOW);
  digitalWrite(_clk_pin, HIGH);
  pinMode(_clk_pin, INPUT_PULLUP);
}

void PS2Port::comm_acksend() volatile {
  digitalWrite(_data_pin, HIGH);
  pinMode(_data_pin, INPUT_PULLUP);
}

void PS2Port::comm_inhibit() {
  pinMode(_clk_pin, OUTPUT);
  digitalWrite(_clk_pin, LOW);
  delayMicroseconds(100);
}

void PS2Port::comm_allow() {
  digitalWrite(_clk_pin, HIGH);
  pinMode(_clk_pin, INPUT);
}
