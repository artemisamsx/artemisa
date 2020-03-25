#include "ps2.h"

const char* _PS2_STATE_NAME[] = {
  "CREATED",
  "IDLE",
  "TX_SENDREQ",
  "TX_TRANSFER",
  "TX_WAITACK",
  "TX_WAITRESP",
  "RX_TRANSFER",
  "RX_PARITYERR",
  "PANIC",
};

const char* _PS2_ERROR_NAME[] = {
  "TX_BUFFER_OVERFLOW",
  "RX_BUFFER_OVERFLOW",
  "DEVICE_PROTOERR",
  "TIMEOUT",
};

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

  int_attach();
  _state = PS2State::IDLE;
  return PS2Result::OK;
}

PS2Result PS2Port::send_cmd_reset() {
  uint8_t cmd[] = { PS2_COMMAND_RESET };
  return send_cmd(cmd, 1);
}

PS2Result PS2Port::send_cmd_leds(uint8_t leds) {
  uint8_t cmd[] = { PS2_COMMAND_LED_STATE, leds };
  return send_cmd(cmd, 2);
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
    case PS2State::TX_WAITACK:
    case PS2State::TX_WAITRESP:
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

PS2Result PS2Port::send_cmd(uint8_t *cmd, uint8_t len) volatile {
  PS2Result res = state_result();
  if (res != PS2Result::OK) {
    return res;
  }

  _tx_cmd = cmd[0];
  _tx_resp = 0;
  if (!_tx_buffer.write(cmd, len)) {
    return PS2Result::ERR_BUFFER_OVERFLOW;
  }

  // The following request to send may interrupt a incoming transmission. The PS2 protocol
  // states that, if that occurs, the device will try to retransmit all the bytes that
  // comprise the transmission. For example, if it fails to transmit the second byte of a 
  // breaking code, it will retransmit again both bytes. Because of that, we clean up
  // all the rx state to be prepared for this situation.
  _rx_scancode = 0;
  _rx_bitcount = 0;
  _rx_bits = 0;

  send_byte(cmd[0]);

  PS2Timer timer;
  timer.reset(PS2_COMMAND_TIMEOUT);
  while (_state != PS2State::IDLE && _state != PS2State::PANIC) {
    if (timer.triggered()) {
      panic(PS2Error::TIMEOUT);
      break;
    }
  }

  res = state_result();
  if (_state == PS2State::PANIC) {
    _state = PS2State::IDLE;
  }
  return res;
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
      if (_tx_resend) {
        // Special case: resend command does not require acknowledge
        _state = PS2State::IDLE;
      } else {
        _state = PS2State::TX_WAITACK;
      }
  }
}

void PS2Port::receive_bit() volatile {
  // Check whether last bit was received long ago
  // If so, we consider this a new transmission
  if (_rx_timer.triggered()) {
    _rx_bitcount = 0;
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
      receive(_rx_bits);
      break;
  }
}

void PS2Port::send_byte(uint8_t data) volatile {
  _tx_bits = data;
  _tx_resend = (data == PS2_COMMAND_RESEND);
  _state = PS2State::TX_SENDREQ;

#ifdef PS2_DEBUG
      Serial.print(F("+TX: "));
      Serial.print(_tx_bits, HEX);
      Serial.println();
#endif

  comm_reqsend();
}

void PS2Port::receive(uint8_t data) volatile {
#ifdef PS2_DEBUG
    Serial.print(F("+RCV: "));
    Serial.print(data, HEX);
    Serial.println();
#endif
  if (data == PS2_CODE_RESEND) {
    uint8_t byte;
    if (_tx_buffer.peek(byte)) {
      send_byte(byte);
    }
    return;
  }

  switch (_state) {
    case PS2State::TX_WAITACK:
      if (data != PS2_CODE_ACKNOWLEDGE) {
        panic(PS2Error::DEVICE_PROTOERR);
        return;
      }
      receive_ack();
      break;
    case PS2State::TX_WAITRESP:
      _tx_resp = data;
      _state = PS2State::IDLE;
      break;
    case PS2State::RX_TRANSFER:
      receive_scancode(data);
      break;
    case PS2State::RX_PARITYERR:
#ifdef PS2_DEBUG
      Serial.println(F("+PARITYERR"));
#endif       
      send_byte(PS2_COMMAND_RESEND);
      break;
  }
}

void PS2Port::receive_ack() volatile {  
  uint8_t next;
  if (_tx_buffer.peek_next(next)) {
    // The acknowledge of non-last byte. Let's transmit the next one.
    send_byte(next);
    return;
  }

  switch (_tx_cmd) {
    case PS2_COMMAND_LED_STATE:
      // Commands that does not require any response
      _state = PS2State::IDLE;
      break;
    case PS2_COMMAND_RESET:
      // Commands that require a response
      _state = PS2State::TX_WAITRESP;
      break;
    default:
      Serial.print(F("+ERR: unknown last command: "));
      Serial.println(_tx_cmd, HEX);
      break;
  }
}

void PS2Port::receive_scancode(uint8_t data) volatile {  
  _rx_scancode <<= 8;
  _rx_scancode |= data;
  switch (data) {
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
      _state = PS2State::IDLE;
      break;
    case PS2_CODE_EXTENDED:
    case PS2_CODE_BREAK:
      // Special code, collect it and wait for next bytes
      break;
    default:
      // Regular code, collect it and save into the buffer
      if (_rx_buffer.write(_rx_scancode)) {
        _rx_scancode = 0;
        _state = PS2State::IDLE;
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
  Serial.print(F("+panic:"));
  Serial.println(_PS2_ERROR_NAME[err]);
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
    case TIMEOUT:
      return PS2Result::ERR_TIMEOUT;
    default:
      return PS2Result::ERR_UNKNOWN;
  }
}

void PS2Port::comm_reqsend() volatile {
  int_detach();
  comm_inhibit();
  pinMode(_data_pin, OUTPUT);
  digitalWrite(_data_pin, LOW);
  digitalWrite(_clk_pin, HIGH);
  pinMode(_clk_pin, INPUT_PULLUP);
  int_attach();
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

void PS2Port::int_attach() {
  int interrupt = digitalPinToInterrupt(_clk_pin);
  _ps2_interrupt_ports[interrupt] = this;
  void (*int_handler)() = _ps2_interrupt_handlers[interrupt];
  attachInterrupt(interrupt, int_handler, FALLING);
}

void PS2Port::int_detach() {
  int interrupt = digitalPinToInterrupt(_clk_pin);
  detachInterrupt(interrupt);
  _ps2_interrupt_ports[interrupt] = NULL;
}
