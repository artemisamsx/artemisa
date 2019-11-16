#include "ps2.h"

// Flags indicating the status of the PS2 port
volatile uint8_t _ps2_status;

// Masks for _ps2_status variable
#define _STATUS_PARITYERR 0x80 // bit 7, parity error detected
#define _STATUS_TXREQ     0x04 // bit 2, indicates whether a transmission is requested
#define _STATUS_DIR       0x02 // bit 1, indicates TX (HIGH) or RX (LOW) when not idle
#define _STATUS_BUSY      0x01 // bit 0, indicates whether the port is busy (HIGH) or idle (LOW)

// The pins used for data and IRQ
uint8_t _ps2_data_pin;
uint8_t _ps2_clk_pin;

// Some counters for data transmission over PS2
volatile uint8_t _ps2_bitcount; // Main state variable and bit count for ints
volatile uint8_t _ps2_shiftdata;
volatile uint8_t _ps2_parity;

// Some variables for the RX buffer
volatile uint8_t _ps2_rx_buffer[PS2_RX_BUFFER_SIZE]; // buffer for data from keyboard
volatile uint8_t _ps2_rx_head;                       // _rx_head = last byte written
volatile uint8_t _ps2_rx_tail;                       // _rx_tail = last byte read (not modified in IRQ ever)

// Some variables for the TX buffer
volatile uint8_t _ps2_tx_buff[PS2_TX_BUFFER_SIZE];  // buffer for keyboard commans
volatile uint8_t _ps2_tx_head;                      // buffer write pointer
volatile uint8_t _ps2_tx_tail;                      // buffer read pointer

// Pre-declare the private functions of this module
void ps2_reset(void);
void ps2_send_next(void);
void ps2_send_now(uint8_t command);
void ps2_request_to_send();
void ps2_interrupt(void);
void ps2_send_bit(void);
void ps2_receive_bit();
uint8_t ps2_decode_key(uint8_t value);

void ps2_begin(uint8_t data_pin, uint8_t clk_pin) {
  ps2_reset();

  _ps2_data_pin = data_pin;
  _ps2_clk_pin = clk_pin;

  pinMode(_ps2_clk_pin, INPUT_PULLUP);  /* Setup Clock pin */
  pinMode(_ps2_data_pin, INPUT_PULLUP); /* Setup Data pin */

  attachInterrupt(digitalPinToInterrupt(clk_pin), ps2_interrupt, FALLING);
}

uint8_t ps2_cmd_reset() {
  if (ps2_available()) {
    // If there are pending bytes to read, we cannot do this
    return -1;
  }
  ps2_write(PS2_COMMAND_RESET);
  uint8_t scancode = ps2_wait(100);
  if (scancode != PS2_SCANCODE_ACKNOWLEDGE) {
    return -1;
  }
  scancode = ps2_wait(1000);
  return (scancode != PS2_SCANCODE_SELFTEST_PASSED);
}

uint8_t ps2_cmd_leds(uint8_t leds) {
  ps2_write(PS2_COMMAND_LED_STATE);
  uint8_t scancode = ps2_wait(100);
  if (scancode != PS2_SCANCODE_ACKNOWLEDGE) {
    return -1;
  }
  ps2_write(leds);
  if (scancode != PS2_SCANCODE_ACKNOWLEDGE) {
    return -1;
  }
}

uint8_t ps2_receive(uint8_t (&scancodes)[3]) {
  if (!ps2_available()) {
    return -1;
  }
  scancodes[1] = scancodes[2] = 0;
  scancodes[0] = ps2_read();
  if (scancodes[0] == PS2_SCANCODE_EXTENDED) {
    scancodes[1] = ps2_wait(100);
    if (scancodes[1] == PS2_SCANCODE_BREAK) {
      scancodes[2] = ps2_wait(100);
    }
  } else if (scancodes[0] == PS2_SCANCODE_BREAK) {
    scancodes[1] = ps2_wait(100);
  }
  return 0;
}

uint8_t ps2_available() {
  int8_t i;

  i = _ps2_rx_head - _ps2_rx_tail;
  if (i < 0) {
    i += PS2_RX_BUFFER_SIZE;
  }

  return uint8_t(i);
}

uint8_t ps2_read() {
  uint8_t index;

  // get next character
  // Check first something to fetch
  index = _ps2_rx_tail;
  // check for empty buffer
  if (index == _ps2_rx_head)
    return 0;
  index++;
  if (index >= PS2_RX_BUFFER_SIZE)
    index = 0;
  _ps2_rx_tail = index;

  uint8_t scancode = _ps2_rx_buffer[index];
#ifdef PS2_DEBUG
    Serial.print(F("ps2_read: "));
    Serial.println(scancode, HEX);
#endif
  return scancode;
}

uint8_t ps2_wait(unsigned long timeout) {
  unsigned long t0 = millis();
  unsigned long t1;
  uint8_t scancode = PS2_SCANCODE_ERR;
  do {
    if (ps2_available()) {
      scancode = ps2_read();
      break;
    }
    t1 = millis();
  } while (t1 - t0 < timeout);
#ifdef PS2_DEBUG
    Serial.print(F("ps2_wait: "));
    Serial.println(scancode, HEX);
#endif
  return scancode;
}

uint8_t ps2_write(uint8_t cmd) {
  uint8_t index = _ps2_tx_head + 1;
  if (index >= PS2_TX_BUFFER_SIZE) {
    index = 0;
  }
  if (index != _ps2_tx_tail) {
#ifdef PS2_DEBUG
    Serial.print(F("ps2_write: "));
    Serial.println(cmd, HEX);
#endif
    _ps2_tx_buff[index] = cmd;
    _ps2_tx_head = index;
    ps2_send_next();
    return 1;
  }
  return 0;
}

void ps2_reset(void) {
  _ps2_tx_head = 0;
  _ps2_tx_tail = 0;
  _ps2_rx_head = 0;
  _ps2_rx_tail = 0;
  _ps2_bitcount = 0;
  _ps2_status = 0;
}

void ps2_send_next(void) {
  // Check buffer not empty
  if (_ps2_tx_head == _ps2_tx_tail) {
    return;
  }

  // If busy, mark it as TX requested
  if (_ps2_status & _STATUS_BUSY) {
    _ps2_status |= _STATUS_TXREQ;
    return;
  }

  _ps2_tx_tail++;
  _ps2_shiftdata = _ps2_tx_buff[_ps2_tx_tail];;
  _ps2_bitcount = 0;
  _ps2_status &= ~_STATUS_TXREQ;
  _ps2_status |= _STATUS_DIR | _STATUS_BUSY;

  ps2_request_to_send();
}

void ps2_request_to_send() {
  // Inhibit communication by pulling down CLK signal
  pinMode(_ps2_clk_pin, OUTPUT);
  digitalWrite(_ps2_clk_pin, LOW);
  delayMicroseconds(100);

  // Request to send by pulling the DATA signal LOW and the giving back control of CLK signal
  pinMode(_ps2_data_pin, OUTPUT);
  digitalWrite(_ps2_data_pin, LOW);
  digitalWrite(_ps2_clk_pin, HIGH);
  pinMode(_ps2_clk_pin, INPUT_PULLUP);
}


// The ISR for the external interrupt
void ps2_interrupt(void) {
  if (_ps2_status & _STATUS_DIR) {
    ps2_send_bit();
  } else {
    ps2_receive_bit();
  }
}

void ps2_send_bit(void) {
  _ps2_bitcount++;
  uint8_t bit;
  switch (_ps2_bitcount) {
    case 1:
      _ps2_parity = 0;
      digitalWrite(_ps2_data_pin, LOW);
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
      bit = _ps2_shiftdata & 0x01;
      digitalWrite(_ps2_data_pin, bit);
      _ps2_parity += bit;                 // another one received ?
      _ps2_shiftdata >>= 1;               // right _SHIFT one place for next bit
      break;
    case 10:
      // Parity: even is HIGH, odd is LOW
      bit = ~_ps2_parity & 0x01;
      digitalWrite(_ps2_data_pin, bit);
      break;
    case 11: // Stop bit write change to input pull up for high stop bit
      pinMode(_ps2_data_pin, INPUT_PULLUP);
      break;
    case 12: // Acknowledge bit low we cannot do anything if high instead of low
      bit = digitalRead(_ps2_data_pin);
      if (!bit) {
        // TODO: send again?
      }
    default: // in case of weird error and end of byte reception re-sync
      // Clear state
      _ps2_bitcount = 0;
      _ps2_status &= ~_STATUS_DIR;
      _ps2_status &= ~_STATUS_BUSY;
  }
}

void ps2_receive_bit() {
  // Check whether last bit was received long ago
  // If so, we consider this a new transmission
  static uint32_t last_bit_rcv_at = 0;
  uint32_t now = millis();
  if (_ps2_bitcount && (now - last_bit_rcv_at > PS2_RX_TIMEOUT)) {
    Serial.println(F("rx timeout"));
    _ps2_bitcount = 0;
    _ps2_shiftdata = 0;
  }
  last_bit_rcv_at = now;

  uint8_t bit = digitalRead(_ps2_data_pin);
  _ps2_bitcount++; // Now point to next bit
  switch (_ps2_bitcount) {
    case 1: // Start bit
      _ps2_parity = 0;
      _ps2_shiftdata = 0;
      _ps2_status |= _STATUS_BUSY;
      break;
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9: // Data bits
      _ps2_parity += bit;                 // another one received ?
      _ps2_shiftdata >>= 1;               // right _SHIFT one place for next bit
      _ps2_shiftdata |= (bit) ? 0x80 : 0; // or in MSbit
      break;
    case 10: // Parity check
      if ((_ps2_parity & 0x01) == bit) {
        // Received bit is even if HIGH, odd if LOW
        // Stored parity LSB is odd if HIGH, even if LOW
        // Same value means parity error
        _ps2_status |= _STATUS_PARITYERR;
      }
      break;
    case 11: // Stop bit lots of spare time now
      uint16_t scancode = _ps2_shiftdata;
      if (_ps2_status & _STATUS_PARITYERR) {
        scancode = PS2_SCANCODE_ERR;
      }
      uint8_t index = _ps2_rx_head + 1;
      if (index >= PS2_RX_BUFFER_SIZE) {
        index = 0;
      }
      if (index != _ps2_rx_tail) {
        _ps2_rx_buffer[index] = scancode;
        _ps2_rx_head = index;
      }
      // fall through to default
    default: // in case of weird error and end of byte reception resync
      _ps2_bitcount = 0;
      _ps2_status &= ~_STATUS_BUSY;
      _ps2_status &= ~_STATUS_PARITYERR;
      if (_ps2_status & _STATUS_TXREQ) {
        ps2_send_next();
      }
  }
}
