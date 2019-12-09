#ifndef PS2KBR_PS2_H
#define PS2KBR_PS2_H

#include <Arduino.h>

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

////////////
// Scancodes
////////////

#define PS2_SCANCODE_ERR              0x00
#define PS2_SCANCODE_SELFTEST_PASSED  0xAA
#define PS2_SCANCODE_EXTENDED         0xE0
#define PS2_SCANCODE_ECHO             0xEE
#define PS2_SCANCODE_BREAK            0xF0
#define PS2_SCANCODE_ACKNOWLEDGE      0xFA
#define PS2_SCANCODE_RESEND           0xFE

///////////
// Commands
///////////

#define PS2_COMMAND_LED_STATE           0xED
#define PS2_COMMAND_ECHO                0xEE
#define PS2_COMMAND_SCANCODE_SETTING    0xF0
#define PS2_COMMAND_KEYMODE_MAKERELEASE 0xF8
#define PS2_COMMAND_RESEND              0xFE
#define PS2_COMMAND_RESET               0xFF

#define PS2_SCANCODE_GET  0x00
#define PS2_SCANCODE_SET1 0x01
#define PS2_SCANCODE_SET2 0x02
#define PS2_SCANCODE_SET3 0x03

// LED status flag masks
#define PS2_LED_KANALOCK   0x08
#define PS2_LED_CAPSLOCK   0x04
#define PS2_LED_NUMBERLOCK 0x02
#define PS2_LED_SCROLLLOCK 0x01


//////////////
// Error codes
//////////////

// No error, the operation was completed successfully
#define PS2_ERROR_OK 0x00

// The operation cannot be completed because the PS2 port was busy
#define PS2_ERROR_BUSY 0x01

// The operation timed out
#define PS2_ERROR_TIMEOUT 0x02

// There is no available scancode in the port
#define PS2_ERROR_NOTAVAIL 0x03

// The operation failed due to a parity error
#define PS2_ERROR_PARITY 0x04

// A bad response was received from the PS2 device
#define PS2_ERROR_BADRESPONSE 0x05

///////////////////////////////////////////
// Public functions exported by this module
///////////////////////////////////////////

// Initializes the PS2 module for use the given pins
void ps2_begin(uint8_t data_pin, uint8_t irq_pin);

// Request the keyboard to reset and make the self-test
uint8_t ps2_cmd_reset();

// Set the status of the CAPSLOCK led
uint8_t ps2_cmd_leds(uint8_t leds);

// A command to request to resend the last code.
uint8_t ps2_cmd_resend();

// Receive a scancode from the keyboard.
uint8_t ps2_receive(uint8_t (&scancodes)[3], unsigned long timeout);

// Check whether the given scancodes represent a key break
inline bool ps2_scancode_is_break(uint8_t (&scancode)[3]) {
  return scancode[0] == PS2_SCANCODE_BREAK || scancode[1] == PS2_SCANCODE_BREAK;
}

// Check whether the given scancodes represent a key break
inline bool ps2_scancode_is_extended(uint8_t (&scancode)[3]) {
  return scancode[0] == PS2_SCANCODE_EXTENDED;
}

// Check whether the given scancodes represent a key break
inline uint8_t ps2_scancode_key(uint8_t (&scancode)[3]) {
  if (ps2_scancode_is_extended(scancode)) {
    if (ps2_scancode_is_break(scancode)) {
      return scancode[2];
    }
    return scancode[1];
  } else if (ps2_scancode_is_break(scancode)) {
    return scancode[1];
  }
  return scancode[0];
}


// Indicates the number of available bytes in the reception buffer
uint8_t ps2_available();

// Read a scancode from the PS2 keyboard.
// This will work only if `ps2_available() > 0`. Otherwise, `PS2_SCANCODE_ERR` is returned.
uint8_t ps2_read();

// Wait for a scancode from the PS2 keyboard for a max of `timeout` milliseconds.
// If timeout is exceeded, `PS2_SCANCODE_ERR` is returned.
uint8_t ps2_wait(unsigned long timeout);

// Write a command to the PS2 keyboard.
// Returns the number of bytes accepted for transmission, or 0 if none.
uint8_t ps2_write(uint8_t cmd);

#endif
