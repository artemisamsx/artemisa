#include "ps2.h"

// Flags indicating the status of the PS2 port
volatile uint8_t _ps2_status;

// Masks for _ps2_status variable
#define _STATUS_PARITYERR 0x80 // bit 7, parity error detected
#define _STATUS_AVAIL     0x04 // bit 2, a scancode is available at the port
#define _STATUS_DIR       0x02 // bit 1, indicates TX (HIGH) or RX (LOW) when busy
#define _STATUS_BUSY      0x01 // bit 0, indicates whether the port is busy (HIGH) or idle (LOW)

// Utility functions get and set port status
inline bool ps2_status(uint8_t flag) { return _ps2_status & flag; }
inline void ps2_set_status(uint8_t flag) { _ps2_status |= flag; }
inline void ps2_reset_status(uint8_t flag) { _ps2_status &= ~flag; }

// The pins used for data and IRQ
uint8_t _ps2_data_pin;
uint8_t _ps2_clk_pin;

// Some counters for data transmission over PS2
volatile uint8_t _ps2_bitcount;  // The number of bits sent or received over the port
volatile uint8_t _ps2_parity;    // The parity of the bits sent or received over the port
volatile uint8_t _ps2_shiftdata; // The bits that are being shifted in or out over the port

// The buffers
volatile uint8_t _ps2_tx_buff;      // buffer for keyboard commans
volatile uint8_t _ps2_rx_buffer[3]; // buffer for data from keyboard
volatile uint8_t _ps2_rx_bufsize;   // the size of _ps2_rx_buffer

// Pre-declare the private functions of this module
uint8_t ps2_cmd_reset(uint8_t retries);
uint8_t ps2_receive_resp(uint8_t resp, unsigned long timeout);
uint8_t ps2_send(uint8_t cmd, unsigned long timeout);
void ps2_prepare_send(uint8_t cmd);
void ps2_inhibit(unsigned long wait = 0);
void ps2_idle();
void ps2_request_to_send();
void ps2_reset(bool cleanBuffers = true);
void ps2_interrupt(void);
void ps2_send_bit(void);
void ps2_receive_bit();
bool ps2_is_extended(uint8_t code);

void ps2_begin(uint8_t data_pin, uint8_t clk_pin) {
  ps2_reset(false);

  _ps2_data_pin = data_pin;
  _ps2_clk_pin = clk_pin;

  pinMode(_ps2_clk_pin, INPUT_PULLUP);  /* Setup Clock pin */
  pinMode(_ps2_data_pin, INPUT_PULLUP); /* Setup Data pin */

  attachInterrupt(digitalPinToInterrupt(clk_pin), ps2_interrupt, FALLING);
}

uint8_t ps2_cmd_reset() {
  uint8_t scancode[3];
  uint8_t err;

  err = ps2_send(PS2_COMMAND_RESET, 1000);
  if (err) { return err; }

  err = ps2_receive_resp(PS2_SCANCODE_ACKNOWLEDGE, 5000);
  if (err) { return err; }

  err = ps2_receive_resp(PS2_SCANCODE_SELFTEST_PASSED, 5000);
  if (err) { return err; }

  return PS2_ERROR_OK;
}

uint8_t ps2_cmd_leds(uint8_t leds) {
  uint8_t err = ps2_send(PS2_COMMAND_LED_STATE, 500);
  if (err) { return err; }

  err = ps2_receive_resp(PS2_SCANCODE_ACKNOWLEDGE, 100);
  if (err) { return err; }

  err = ps2_send(leds, 500);
  if (err) { return err; }

  return ps2_receive_resp(PS2_SCANCODE_ACKNOWLEDGE, 100);
}

uint8_t ps2_cmd_resend() {
  ps2_reset();
  uint8_t err = ps2_send(PS2_COMMAND_RESEND, 500);
  if (err) { return err; }
}

uint8_t ps2_receive(uint8_t (&scancodes)[3], unsigned long timeout) {
  unsigned long t0 = millis();
  for (;;) {
    if (ps2_status(_STATUS_PARITYERR)) {
      return PS2_ERROR_PARITY;
    }
    if (ps2_status(_STATUS_AVAIL)) {

      scancodes[0] = _ps2_rx_buffer[0];
      scancodes[1] = _ps2_rx_buffer[1];
      scancodes[2] = _ps2_rx_buffer[2];

#ifdef PS2_DEBUG
  Serial.print(F("ps2_receive: "));
  Serial.print(scancodes[0], HEX);
  Serial.print(F(":"));
  Serial.print(scancodes[1], HEX);
  Serial.print(F(":"));
  Serial.println(scancodes[2], HEX);
#endif

      ps2_reset();
      ps2_idle();

      return PS2_ERROR_OK;
    }
    unsigned long t1 = millis();
    unsigned long elapsed = t1 - t0;
    if (elapsed > timeout) {
      ps2_reset();
      return PS2_ERROR_TIMEOUT;
    }
  }
}

uint8_t ps2_receive_resp(uint8_t resp, unsigned long timeout) {
  uint8_t scancode[3];
  uint8_t err = ps2_receive(scancode, timeout);
  if (err) { return err; }
  if (scancode[0] != resp) {
    return PS2_ERROR_BADRESPONSE;
  }
  return PS2_ERROR_OK;
}

uint8_t ps2_send(uint8_t cmd, unsigned long timeout) {
  cli();
  if (ps2_status(_STATUS_BUSY)) {
    sei();
    return PS2_ERROR_BUSY;
  }
  ps2_inhibit(100);
  ps2_prepare_send(cmd);
  ps2_set_status(_STATUS_DIR + _STATUS_BUSY);

#ifdef PS2_DEBUG
  Serial.print(F("ps2_send: "));
  Serial.println(cmd, HEX);
#endif

  ps2_request_to_send();
  sei();

  // Wait until command is sent or timeout
  unsigned long t0 = millis();
  for (;;) {
    if (!ps2_status(_STATUS_BUSY | _STATUS_DIR)) {
      return PS2_ERROR_OK;
    }
    unsigned long t1 = millis();
    unsigned long elapsed = t1 - t0;
    if (elapsed > timeout) {
      return PS2_ERROR_TIMEOUT;
    }
  }
}

void ps2_prepare_send(uint8_t cmd) {
  _ps2_tx_buff = cmd;
  _ps2_bitcount = 0;
  _ps2_shiftdata = cmd;
}

void ps2_inhibit(unsigned long wait = 0) {
  // Inhibit communication by pulling down the CLK signal
  pinMode(_ps2_clk_pin, OUTPUT);
  digitalWrite(_ps2_clk_pin, LOW);
  if (wait > 0) {
    delay(wait);
  }
}

void ps2_idle() {
  digitalWrite(_ps2_clk_pin, HIGH);
  pinMode(_ps2_clk_pin, INPUT);
}

void ps2_request_to_send() {
  // Request to send by pulling the DATA signal LOW and the giving back control of CLK signal
  pinMode(_ps2_data_pin, OUTPUT);
  digitalWrite(_ps2_data_pin, LOW);
  digitalWrite(_ps2_clk_pin, HIGH);
  pinMode(_ps2_clk_pin, INPUT_PULLUP);
}


void ps2_reset(bool cleanBuffers = true) {
  cli();
  _ps2_bitcount = 0;
  _ps2_status = 0;
  if (cleanBuffers) {
    _ps2_rx_bufsize = 0;
    _ps2_rx_buffer[0] = _ps2_rx_buffer[1] = _ps2_rx_buffer[2] = 0;
  }
  sei();
}

// The ISR for the external interrupt
void ps2_interrupt(void) {
  if (ps2_status(_STATUS_DIR)) {
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
      _ps2_parity += bit;
      _ps2_shiftdata >>= 1;
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
      ps2_reset_status(_STATUS_DIR | _STATUS_BUSY);
  }
}

void ps2_receive_bit() {
  // Check whether last bit was received long ago
  // If so, we consider this a new transmission
  static unsigned long t0 = 0;
  unsigned long t1 = millis();
  unsigned long elapsed = t1 - t0;
  t0 = t1;
  if (_ps2_bitcount && (elapsed > PS2_RX_TIMEOUT)) {
#ifdef PS2_DEBUG
    Serial.println(F("rx timeout"));
#endif
    _ps2_bitcount = 0;
    _ps2_shiftdata = 0;
  }

  uint8_t bit = digitalRead(_ps2_data_pin);
  _ps2_bitcount++; // Now point to next bit
  switch (_ps2_bitcount) {
    case 1: // Start bit
      _ps2_parity = 0;
      _ps2_shiftdata = 0;
      ps2_set_status(_STATUS_BUSY);
      ps2_reset_status(_STATUS_DIR);
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
        ps2_set_status(_STATUS_PARITYERR);
      }
      break;
    case 11: // Stop bit lots of spare time now
      uint16_t scancode = _ps2_shiftdata;
      // If there is a parity error, do nothing. The error will be propagated to the app code.
      // There we can submit a resend command to continue from the last received byte.
      if (!ps2_status(_STATUS_PARITYERR)) {
        _ps2_rx_buffer[_ps2_rx_bufsize] = _ps2_shiftdata;
        if (_ps2_rx_bufsize < 3 && ps2_is_extended(_ps2_shiftdata)) {
          // Extended, wait for the next element
          _ps2_rx_bufsize++;
        } else {
          ps2_set_status(_STATUS_AVAIL);
          ps2_inhibit();
        }
      }
      // fall through to default
    default: // in case of weird error and end of byte reception resync
      _ps2_bitcount = 0;
  }
}

bool ps2_is_extended(uint8_t code) {
  switch (code) {
    case PS2_SCANCODE_EXTENDED:
    case PS2_SCANCODE_BREAK:
      return true;
    default:
      return false;
  }
}