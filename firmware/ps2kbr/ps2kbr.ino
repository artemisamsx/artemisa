// Artemisa Computer System
// PS2 keyboard matrix emulator
// Copyright (C) 2018-2019 Alvaro Polo
//
// This is an Arduino sketch that implements the firmware of the keyboard
// matrix emulator used in the Artemisa Computer System. The purpose of
// this firmware is to adapt the PS2 interface of a modern keyboard and
// expose it to the MSX as a old-school keyboard matrix.
//
// It does so by using a network of 74HC595 ICs connected to an ATmega328
// microcontroller. The 595 network will operate as a sort of small and
// unexpensive dual-port memory based upon serial-to-parallel shift registers.
// The ATmega will write bytes into it using the serial interface (write port),
// while the MSX PPI will read the bytes using the parallel interface (read
// port). Each 595 stores 8-bits, representing a single row of the MSX keyboard
// matrix. Using a total of eleven 595s you can represent the whole keyboard
// matrix.
//

// This library is used to interact with the PS2 keyboard.
// More info in https://github.com/techpaul/PS2KeyAdvanced
#include "PS2KeyAdvanced.h"

// Uncomment this to debug the firmware using serial port
// #define DEBUG 1

// The Arduino pin where PS2 DATA is connected.
#define PS2_PIN_DATA     3 // ATmega328 pin #5 (PD3/INT1)

// The Arduino pin where PS2 CLOCK is connected.
// Note: this MUST be connected to an interrupt pin.
#define PS2_PIN_CLK      2 // ATmega328 pin #4 (PD2/INT0)

// The Arduino pin where matrix DS line is connected.
#define MATRIX_PIN_DS    5 // ATmega328 pin #11 (PD5)

// The Arduino pin where matrix SHCP line is connected.
#define MATRIX_PIN_SHCP  4 // ATmega328 pin #6 (PD4)

// The Arduino pin where CAPSLOCK line is connected.
#define CAPSLOCK_PIN     13 // ATmega328 pin #19 (PB5/SCLK)

// How many rows of MSX matrix we will emulate
#define MATRIX_NROWS     11

// What is the maximum scancode from PS2 keyboard we will process
#define KEYCODE_MAX      0xa0

// An array that indicates the Arduino pins where each matrix row STCP signal
// is connected.
const int outputs[MATRIX_NROWS] = {
  A0, // STCP0, ATmega328 pin #23 (PC0)
  A1, // STCP1, ATmega328 pin #24 (PC1)
  A2, // STCP2, ATmega328 pin #25 (PC2)
  A3, // STCP3, ATmega328 pin #26 (PC3)
  A4, // STCP4, ATmega328 pin #27 (PC4)
  A5, // STCP5, ATmega328 pin #28 (PC5)
  8,  // STCP6, ATmega328 pin #14 (PB0)
  9,  // STCP7, ATmega328 pin #15 (PB1)
  10, // STCP8, ATmega328 pin #16 (PB2/SS)
  11, // STCP9, ATmega328 pin #17 (PB3/MOSI)
  12, // STCP10, ATmega328 pin #18 (PB4/MISO)
};

// An array that maintains the state of the MSX matrix.
// Each item represents the n-th row of the matrix. Each row has 8 columns,
// each one represented by one bit in each entry of this array.
byte matrix[MATRIX_NROWS];

// A struct that describes the mapping between some scancode of the PS2
// keyboard and a key in the MSX keyboard.
struct mapping {
  // The row of that key in the MSX matrix
  int row;
  // The column of the key in the MSX matrix
  int offset;
};

// The mapping table establishes a mapping between a scancode coming from the
// PS2 keyboard and the matrix coordinates of MSX keyboard being emulated.
// A value of `{-1, -1 }` means there is no MSX equivalent for such scancode.
//
// MSX international keyboard mapping.
// See http://map.grauw.nl/articles/keymatrix.php
const mapping international_mapping[] = {
  { -1, -1 }, // 0x00:
  { -1, -1 }, // 0x01:
  { -1, -1 }, // 0x02:
  { 6, 3 },   // 0x03: PS2_KEY_CAPS
  { 6, 2 },   // 0x04: PS2_KEY_PRTSCR
  { -1, -1 }, // 0x05:
  { 6, 0 },   // 0x06: PS2_KEY_L_SHIFT
  { 6, 0 },   // 0x07: PS2_KEY_R_SHIFT
  { 6, 1 },   // 0x08: PS2_KEY_L_CTRL
  { 6, 1 },   // 0x09: PS2_KEY_R_CTRL
  { 2, 5 },   // 0x0a: PS2_KEY_L_ALT
  { 2, 5 },   // 0x0b: PS2_KEY_R_ALT
  { 6, 4 },   // 0x0c: PS2_KEY_L_GUI
  { 6, 4 },   // 0x0d: PS2_KEY_R_GUI
  { -1, -1 }, // 0x0e:
  { -1, -1 }, // 0x0f:
  { -1, -1 }, // 0x10:
  { 8, 1 },   // 0x11: PS2_KEY_HOME
  { 7, 6 },   // 0x12: PS2_KEY_END
  { -1, -1 }, // 0x13:
  { -1, -1 }, // 0x14:
  { 8, 4 },   // 0x15: PS2_KEY_L_ARROW
  { 8, 7 },   // 0x16: PS2_KEY_R_ARROW
  { 8, 5 },   // 0x17: PS2_KEY_UP_ARROW
  { 8, 6 },   // 0x18: PS2_KEY_DN_ARROW
  { 8, 2 },   // 0x19: PS2_KEY_INSERT
  { 8, 3 },   // 0x1a: PS2_KEY_DELETE
  { 7, 2 },   // 0x1b: PS2_KEY_ESC
  { 7, 5 },   // 0x1c: PS2_KEY_BS
  { 7, 3 },   // 0x1d: PS2_KEY_TAB
  { 7, 7 },   // 0x1e: PS2_KEY_ENTER
  { 8, 0 },   // 0x1f: PS2_KEY_SPACE
  { 9, 3 },   // 0x20: PS2_KEY_KP0
  { 9, 4 },   // 0x21: PS2_KEY_KP1
  { 9, 5 },   // 0x22: PS2_KEY_KP2
  { 9, 6 },   // 0x23: PS2_KEY_KP3
  { 9, 7 },   // 0x24: PS2_KEY_KP4
  { 10, 0 },  // 0x25: PS2_KEY_KP5
  { 10, 1 },  // 0x26: PS2_KEY_KP6
  { 10, 2 },  // 0x27: PS2_KEY_KP7
  { 10, 3 },  // 0x28: PS2_KEY_KP8
  { 10, 4 },  // 0x29: PS2_KEY_KP9
  { 10, 7 },  // 0x2a: PS2_KEY_KP_DOT
  { 7, 7 },   // 0x2b: PS2_KEY_KP_ENTER
  { 9, 1 },   // 0x2c: PS2_KEY_KP_PLUS
  { 10, 5 },  // 0x2d: PS2_KEY_KP_MINUS
  { 9, 0 },   // 0x2e: PS2_KEY_KP_TIMES
  { 9, 2 },   // 0x2f: PS2_KEY_KP_DIV
  { 0, 0 },   // 0x30: PS2_KEY_0
  { 0, 1 },   // 0x31: PS2_KEY_1
  { 0, 2 },   // 0x32: PS2_KEY_2
  { 0, 3 },   // 0x33: PS2_KEY_3
  { 0, 4 },   // 0x34: PS2_KEY_4
  { 0, 5 },   // 0x35: PS2_KEY_5
  { 0, 6 },   // 0x36: PS2_KEY_6
  { 0, 7 },   // 0x37: PS2_KEY_7
  { 1, 0 },   // 0x38: PS2_KEY_8
  { 1, 1 },   // 0x39: PS2_KEY_9
  { -1, -1 }, // 0x3a:
  { 2, 2 },   // 0x3b: PS2_KEY_COMMA
  { 1, 2 },   // 0x3c: PS2_KEY_MINUS
  { 2, 3 },   // 0x3d: PS2_KEY_DOT
  { 2, 4 },   // 0x3e: PS2_KEY_DIV
  { -1, -1 }, // 0x3f:
  { 2, 1 },   // 0x40: PS2_KEY_SINGLE
  { 2, 6 },   // 0x41: PS2_KEY_Az
  { 2, 7 },   // 0x42: PS2_KEY_B
  { 3, 0 },   // 0x43: PS2_KEY_C
  { 3, 1 },   // 0x44: PS2_KEY_D
  { 3, 2 },   // 0x45: PS2_KEY_E
  { 3, 3 },   // 0x46: PS2_KEY_F
  { 3, 4 },   // 0x47: PS2_KEY_G
  { 3, 5 },   // 0x48: PS2_KEY_H
  { 3, 6 },   // 0x49: PS2_KEY_I
  { 3, 7 },   // 0x4a: PS2_KEY_J
  { 4, 0 },   // 0x4b: PS2_KEY_K
  { 4, 1 },   // 0x4c: PS2_KEY_L
  { 4, 2 },   // 0x4d: PS2_KEY_M
  { 4, 3 },   // 0x4e: PS2_KEY_N
  { 4, 4 },   // 0x4f: PS2_KEY_O
  { 4, 5 },   // 0x50: PS2_KEY_P
  { 4, 6 },   // 0x51: PS2_KEY_Q
  { 4, 7 },   // 0x52: PS2_KEY_R
  { 5, 0 },   // 0x53: PS2_KEY_S
  { 5, 1 },   // 0x54: PS2_KEY_T
  { 5, 2 },   // 0x55: PS2_KEY_U
  { 5, 3 },   // 0x56: PS2_KEY_V
  { 5, 4 },   // 0x57: PS2_KEY_W
  { 5, 5 },   // 0x58: PS2_KEY_X
  { 5, 6 },   // 0x59: PS2_KEY_Y
  { 5, 7 },   // 0x5a: PS2_KEY_Z
  { 1, 7 },   // 0x5b: PS2_KEY_SEMI
  { 2, 0 },   // 0x5c: PS2_KEY_BACK
  { 1, 5 },   // 0x5d: PS2_KEY_OPEN_SQ
  { 1, 6 },   // 0x5e: PS2_KEY_CLOSE_SQ
  { 1, 3 },   // 0x5f: PS2_KEY_EQUAL
  { 10, 6 },  // 0x60: PS2_KEY_KP_COMMA
  { 6, 5 },   // 0x61: PS2_KEY_F1
  { 6, 6 },   // 0x62: PS2_KEY_F2
  { 6, 7 },   // 0x63: PS2_KEY_F3
  { 7, 0 },   // 0x64: PS2_KEY_F4
  { 7, 1 },   // 0x65: PS2_KEY_F5
  { -1, -1 }, // 0x66:
  { -1, -1 }, // 0x67:
  { -1, -1 }, // 0x68:
  { -1, -1 }, // 0x69:
  { -1, -1 }, // 0x6a:
  { -1, -1 }, // 0x6b:
  { -1, -1 }, // 0x6c:
  { -1, -1 }, // 0x6d:
  { -1, -1 }, // 0x6e:
  { -1, -1 }, // 0x6f:
  { -1, -1 }, // 0x70:
  { -1, -1 }, // 0x71:
  { -1, -1 }, // 0x72:
  { -1, -1 }, // 0x73:
  { -1, -1 }, // 0x74:
  { -1, -1 }, // 0x75:
  { -1, -1 }, // 0x76:
  { -1, -1 }, // 0x77:
  { -1, -1 }, // 0x78:
  { -1, -1 }, // 0x79:
  { -1, -1 }, // 0x7a:
  { 7, 4 },   // 0x7b: PS2_KEY_STOP
  { -1, -1 }, // 0x7c:
  { -1, -1 }, // 0x7d:
  { -1, -1 }, // 0x7e:
  { -1, -1 }, // 0x7f:
  { -1, -1 }, // 0x80:
  { -1, -1 }, // 0x81:
  { -1, -1 }, // 0x82:
  { -1, -1 }, // 0x83:
  { -1, -1 }, // 0x84:
  { -1, -1 }, // 0x85:
  { -1, -1 }, // 0x86:
  { -1, -1 }, // 0x87:
  { -1, -1 }, // 0x88:
  { -1, -1 }, // 0x89:
  { -1, -1 }, // 0x8a:
  { 1, 4 },     // 0x8b: PS2_KEY_EUROPE2
  { -1, -1 }, // 0x8c:
  { -1, -1 }, // 0x8d:
  { -1, -1 }, // 0x8e:
  { -1, -1 }, // 0x8f:
  { -1, -1 }, // 0x90:
  { -1, -1 }, // 0x91:
  { -1, -1 }, // 0x92:
  { -1, -1 }, // 0x93:
  { -1, -1 }, // 0x94:
  { -1, -1 }, // 0x95:
  { -1, -1 }, // 0x96:
  { -1, -1 }, // 0x97:
  { -1, -1 }, // 0x98:
  { -1, -1 }, // 0x99:
  { -1, -1 }, // 0x9a:
  { -1, -1 }, // 0x9b:
  { -1, -1 }, // 0x9c:
  { -1, -1 }, // 0x9d:
  { -1, -1 }, // 0x9e:
  { -1, -1 }, // 0x9f:
  { -1, -1 }, // 0xa0:
};

// The object that will manage the PS2 keyboard.
PS2KeyAdvanced keyboard;

// Initialize the IO pins
void init_iopins() {
  // The pin used to transmit the serial data
  pinMode(MATRIX_PIN_DS, OUTPUT);
  digitalWrite(MATRIX_PIN_DS, 0);

  // The pin used to transmit shift clock.
  pinMode(MATRIX_PIN_SHCP, OUTPUT);
  digitalWrite(MATRIX_PIN_SHCP, 0);

  // The pins used to transmit storage register clock to each 595.
  for (int i = 0; i < MATRIX_NROWS; i++) {
    pinMode(outputs[i], OUTPUT);
    digitalWrite(outputs[i], LOW);
  }

  // The pin used to read CAPSLOCK signal
  pinMode(CAPSLOCK_PIN, INPUT);
}

// Initialize the matrix
void init_matrix() {
  byte value = 0xff; // all 1s means unpressed
  for (int i = 0; i < MATRIX_NROWS; i++) {
    matrix[i] = value;
  }
  write_all_rows(value);
}

// Shift the given value to all 595s.
// Note this just shifts the value. It will not latch it.
void shift_value(byte value) {
  shiftOut(MATRIX_PIN_DS, MATRIX_PIN_SHCP, MSBFIRST, value);
}

// Latch the previously shifted value to 595 that governs the given row.
void latch_row(int row) {
  digitalWrite(outputs[row], HIGH);
  delayMicroseconds(10);
  digitalWrite(outputs[row], LOW);
}

// Write the given value for the given row.
// This shifts the value and sends the latch signal to the 595 that governs
// that row.
void write_row(int row, byte value) {
  shift_value(value);
  latch_row(row);
}

// Write the given value to all rows
void write_all_rows(byte value) {
  // We want each 595 to be loaded with value. To do that, we shift it to all
  // registers and then we send a latch signal to each 595.
  shift_value(value);
  for (int i = 0; i < MATRIX_NROWS; i++) {
    latch_row(i);
  }
}

// Handle the given scan code.
void handle_code(int16_t c) {
  // The actual key is in the lower nibble transmitted by the keyboard.
  byte key = c & 0x00ff;
  if (key >= KEYCODE_MAX) {
    return;
  }

  mapping m = international_mapping[key];
  if (m.row == -1) {
    // There is no mapping defined for that scancode. Skip it.
    return;
  }

  byte r = matrix[m.row];
  if (c & PS2_BREAK) {
    bitSet(r, m.offset);
  } else {
    bitClear(r, m.offset);
  }

  if (r != matrix[m.row]) {
    // We detected a change in the row. Something was pressed or released!
#ifdef DEBUG
    Serial.print(F("Row "));
    Serial.print(m.row);
    Serial.print(F(" has changed to "));
    Serial.println(r, BIN);
#endif
    matrix[m.row] = r;
    write_row(m.row, r);
  }
}

// Handle capslock state changes
void handle_capslock() {
  static int before = -1;
  int after = digitalRead(CAPSLOCK_PIN);
  if (before != after) {
    byte flags = keyboard.getLock();

    // CAPSLOCK is inverse logic, HIGH means disabled
    if (after) { flags &= ~PS2_LOCK_CAPS; } // Clear the LOCK_CAPS bit
    else { flags |= PS2_LOCK_CAPS; } // Set the LOCK_CAPS bit

    keyboard.setLock(flags);
    before = after;
  }
}

// Setup the microcontroller
void setup() {
  // Configure the keyboard library
  keyboard.begin(PS2_PIN_DATA, PS2_PIN_CLK);
  keyboard.resetKey();

  init_iopins();
  init_matrix();

#ifdef DEBUG
  Serial.begin(9600);
  Serial.println( F( "PS2 Keyboard Adapter board" ) );
#endif
}

// Main loop of the microcontroller
void loop() {
  // Process a PS2 keyboard event if available
  if (keyboard.available()) {
    uint16_t c = keyboard.read();
    if (c > 0) {
      handle_code(c);
    }
  }

  // Process capslock state change
  handle_capslock();
}
