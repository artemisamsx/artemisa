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

// This macro, when declared, activates the debug mode using the serial port of the Arduino board.
// There is another PS2_DEBUG macro that controls the low level debugging in the PS2 library.
// You can comment and uncomment this to disable and enable debug, respectively.
// #define DEBUG 1

// The custom PS2 library made by Artemisa project.
#include "ps2.h"

// The mappings between PS2 scancodes and MSX matrix positions
#include "mapping.h"

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
#define KANALOCK_PIN     6 // ATmega328 pin #12 (PD6)

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

  // The pins used to read CAPSLOCK and KANALOCK signals
  pinMode(CAPSLOCK_PIN, INPUT_PULLUP);
  pinMode(KANALOCK_PIN, INPUT_PULLUP);
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

void reset_keyboard() {
  if (ps2_cmd_reset()) {
#ifdef DEBUG
    Serial.println(F("Error: reset command failed"));
#endif
  }
}

void setup_ps2_keyboard() {
  ps2_begin(PS2_PIN_DATA, PS2_PIN_CLK);
  reset_keyboard();
}

void process_locks(bool force = false) {
  static uint8_t locks = 0;

  uint8_t prev = locks;
  if (digitalRead(CAPSLOCK_PIN)) locks &= ~PS2_LED_CAPSLOCK;
  else locks |= PS2_LED_CAPSLOCK;

  if (digitalRead(KANALOCK_PIN)) locks &= ~PS2_LED_KANALOCK;
  else locks |= PS2_LED_KANALOCK;

  if (force || (prev != locks)) {
    ps2_cmd_leds(locks);
  }
}

bool handle_special_scancode(uint8_t (&scancode)[3]) {
  switch (scancode[0]) {
    case PS2_SCANCODE_SELFTEST_PASSED:
      process_locks(true);
      return true;
  }
  return false;
}

void handle_scancode(uint8_t (&scancode)[3]) {
  if (handle_special_scancode(scancode)) {
    return;
  }

  mapping m = map_scancodes(scancode);
  if (m.row == -1) {
    // There is no mapping defined for that scancode. Skip it.
    return;
  }

  byte r = matrix[m.row];
  if (ps2_scancode_is_break(scancode)) {
    bitSet(r, m.offset);
  } else {
    bitClear(r, m.offset);
  }

  if (r != matrix[m.row]) {
    // We detected a change in the row. Something was pressed or released!
#ifdef DEBUG
    Serial.print(F("Row changed: "));
    Serial.print(m.row);
    Serial.print(F("="));
    Serial.println(r, BIN);
#endif
    matrix[m.row] = r;
    write_row(m.row, r);
  }
}

void process_scancodes() {
  uint8_t scancode[3];
  if (!ps2_receive(scancode)) {
#ifdef DEBUG
    Serial.print(F("Scanned: "));
    Serial.print(scancode[0], HEX);
    if (scancode[1] > 0) Serial.print(scancode[1], HEX);
    if (scancode[2] > 0) Serial.print(scancode[2], HEX);
    Serial.println();
#endif
    handle_scancode(scancode);
  }
}

// Setup the microcontroller
void setup() {
#ifdef DEBUG
  Serial.begin(115200);
  Serial.println( F( "PS2 Keyboard Adapter board" ) );
#endif

  setup_ps2_keyboard();
  init_iopins();
  init_matrix();
}

// Main loop of the microcontroller
void loop() {
  process_scancodes();
  process_locks();
}
