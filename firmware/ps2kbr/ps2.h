#ifndef PS2KBR_PS2_H
#define PS2KBR_PS2_H

#include <Arduino.h>

#include "ps2/buffer.h"
#include "ps2/timer.h"

/////////////////////////
// Configuration settings
/////////////////////////

// This macro, when declared, activates the debug mode using the serial port of the Arduino board.
// You can comment and uncomment this to disable and enable debug, respectively.
// #define PS2_DEBUG 1

// The size of the reception buffer (min 8)
#define PS2_RX_BUFFER_SIZE  64

// The size of the transmission buffer (min 6)
#define PS2_TX_BUFFER_SIZE  64

// The timeout of reception in milliseconds
#define PS2_RX_TIMEOUT 500

// PS2 protocol codes
#define PS2_CODE_ERR0             0x00
#define PS2_CODE_EXTENDED         0xE0
#define PS2_CODE_ECHO             0xEE
#define PS2_CODE_BREAK            0xF0
#define PS2_CODE_ACKNOWLEDGE      0xFA
#define PS2_CODE_RESEND           0xFE
#define PS2_CODE_ERR1             0xFF

// PS2 protocol commands
#define PS2_COMMAND_LED_STATE           0xED
#define PS2_COMMAND_ECHO                0xEE
#define PS2_COMMAND_SCANCODE_SETTING    0xF0
#define PS2_COMMAND_KEYMODE_MAKERELEASE 0xF8
#define PS2_COMMAND_RESEND              0xFE
#define PS2_COMMAND_RESET               0xFF

// LED status flag masks
#define PS2_LED_KANALOCK   0x08
#define PS2_LED_CAPSLOCK   0x04
#define PS2_LED_NUMBERLOCK 0x02
#define PS2_LED_SCROLLLOCK 0x01

// Special key codes
#define PS2_KEYCODE_SELFTEST_PASSED  0xAA

// The result of an operation invoked on the PS2 device
enum PS2Result {
  OK                    = 0x00, // The operation was completed successfully
  ERR_ALREADY_INIT      = 0x01, // The resource is already initialized
  ERR_DEVICE_FAILED     = 0x02, // The device is not working properly
  ERR_BUFFER_OVERFLOW   = 0x03, // An overflow in one of the internal buffers
  ERR_UNKNOWN           = 0xff, // An unknown error
};

// The internal state of the PS2 device
enum PS2State {
  CREATED,
  IDLE,
  TX_SENDREQ,
  TX_TRANSFER,
  RX_TRANSFER,
  RX_PARITYERR,
  PANIC,
};

// A scancode representing an event over the PS2 keyboard.
struct PS2Scancode {
  uint32_t code;

  uint8_t keycode() const {
    return code & 0xff;
  }

  bool is_extended() const {
    return ((code >> 8) == PS2_CODE_EXTENDED) || ((code >> 16) == PS2_CODE_EXTENDED);
  }

  bool is_break() const {
    return ((code >> 8) & 0xff) == PS2_CODE_BREAK;
  }

  bool is_null() const {
    return code == 0;
  }
};

// The PS2 port
class PS2Port {
public:
  PS2Port() : _state(PS2State::CREATED) {}

  // Begin the PS2 port at the given pins.
  PS2Result begin(uint8_t data_pin, uint8_t clk_pin);

  // Send a reset command to the device.
  PS2Result send_cmd_reset();

  // Send a LEDs state set command to the device
  PS2Result send_cmd_leds(uint8_t leds);

  // Receive a scancode, or 0 if none is available
  PS2Result receive_scancode(PS2Scancode &code);

  // The clock interrupt handler. Do not ever call it.
  void clock_interrupt() volatile;

private:

  enum PS2Error {
    TX_BUFFER_OVERFLOW = 0x01,
    RX_BUFFER_OVERFLOW = 0x02,
    DEVICE_PROTOERR    = 0x03,
  };

  void send_bit() volatile;
  void receive_bit() volatile;
  void try_send() volatile;
  void send(uint8_t data) volatile;
  void receive(uint8_t data) volatile;
  void receive_scancode(uint8_t data) volatile;
  void panic(PS2Error err) volatile;
  PS2Result state_result() const;
  void comm_reqsend() volatile;
  void comm_inhibit();
  void comm_allow();

  PS2State _state;
  PS2Error _error;

  uint8_t _data_pin;
  uint8_t _clk_pin;

  ps2_buffer<uint8_t, 32> _tx_buffer;
  uint8_t                 _tx_bitcount;
  uint8_t                 _tx_bits;
  uint8_t                 _tx_parity;
  uint8_t                 _tx_last;

  ps2_buffer<uint32_t, 256> _rx_buffer;
  uint32_t                  _rx_scancode;
  PS2Timer                  _rx_timer;
  uint8_t                   _rx_bitcount;
  uint8_t                   _rx_bits;
  uint8_t                   _rx_parity;
};

#endif
