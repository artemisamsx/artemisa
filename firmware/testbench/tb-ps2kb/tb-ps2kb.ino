// Artemisa Computer System
// PS2 Keyboard Adapter Testbench
// Copyright (C) 2018-2019 Alvaro Polo
//
// This is an Arduino sketch aimed to provide a testbench for the PS2 Keyboard
// Adapter board. It basically makes the Arduino simulate an Artemisa Computer
// motherboard, interacting with the adapter board as it were a real keyboard
// matrix.
//
// It works for Arduino Mega or Arduino Mega 2560 boards only.

// A flag used for deep debugging
#define DEBUG 0

// The baud rate used for the serial communication
#define SERIAL_BAUDRATE 9600

// The number of rows present in the keyboard matrix
#define NROWS     11

// The number of columns present in the keyboard matrix
#define NCOLS     8

// Pin settings for KBCOL bus lines
#define PIN_KBCOL0 2
#define PIN_KBCOL1 3
#define PIN_KBCOL2 4
#define PIN_KBCOL3 5
#define PIN_KBCOL4 6
#define PIN_KBCOL5 7
#define PIN_KBCOL6 8
#define PIN_KBCOL7 9

// Pin settings for RSL bus lines
#define PIN_RSL0    22
#define PIN_RSL1    23
#define PIN_RSL2    24
#define PIN_RSL3    25
#define PIN_RSL4    26
#define PIN_RSL5    27
#define PIN_RSL6    28
#define PIN_RSL7    29
#define PIN_RSL8    30
#define PIN_RSL9    31
#define PIN_RSL10   32

#define PIN_CAPSLOCK  11
#define PIN_KANALOCK  12
#define PIN_RESET     13


// The pins used by KBCOL bus lines
const int pins_kbcol[NCOLS] = {
  PIN_KBCOL0, PIN_KBCOL1, PIN_KBCOL2, PIN_KBCOL3,
  PIN_KBCOL4, PIN_KBCOL5, PIN_KBCOL6, PIN_KBCOL7,
};

// The pins used by RSL bus lines
const int pins_rsl[NROWS] = {
  PIN_RSL0, PIN_RSL1, PIN_RSL2, PIN_RSL3, PIN_RSL4, PIN_RSL5,
  PIN_RSL6, PIN_RSL7, PIN_RSL8, PIN_RSL9, PIN_RSL10,
};

// Setup of Arduino pins
void setupPins() {
  for (int i = 0; i < NCOLS; i++) {
    pinMode(pins_kbcol[i], INPUT_PULLUP);
  }
  for (int i = 0; i < NROWS; i++) {
    pinMode(pins_rsl[i], OUTPUT);
    digitalWrite(pins_rsl[i], HIGH); // Reverse logic
  }
  pinMode(PIN_CAPSLOCK, OUTPUT);
  pinMode(PIN_KANALOCK, OUTPUT);
  pinMode(PIN_RESET, OUTPUT);
  digitalWrite(PIN_CAPSLOCK, HIGH); // Reverse logic
  digitalWrite(PIN_KANALOCK, HIGH); // Reverse logic
  digitalWrite(PIN_RESET, HIGH); // Reverse logic
}

// Reset the PS2 Adapter board
void reset() {
  digitalWrite(PIN_RESET, LOW);
  delay(50);
  digitalWrite(PIN_RESET, HIGH);
}

// Deselect the row from the keyboard matrix
void deselectRow() {
  for (int i = 0; i < NROWS; i++) {
    digitalWrite(pins_rsl[i], HIGH);
  }
}

// Select the given row of the keyboard matrix
void selectRow(unsigned int row) {
  if (row > NROWS) {
    return;
  }
  deselectRow();
  digitalWrite(pins_rsl[row], LOW);
}

// Read the columns from the selected row
byte readRow() {
  byte col = 0;
  for (int i = 7; i >= 0; i--) {
    col <<= 1;
    col |= digitalRead(pins_kbcol[i]);
  }
  return col;
}

// Setup of the serial port
void setupSerial() {
  Serial.begin(SERIAL_BAUDRATE);
  Serial.println("PS2 Keyboard Adapter initialized");
}

// Setup the Arduino board
void setup() {
  setupPins();
  reset();
  setupSerial();
}

// The current known status of the matrix
static byte matrix_status[] = {
  0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff
};

// The current status of the caps lock
static bool capslock_status = false;

// The mapping from keys to symbols with lower case
const char mappingLower[] = {
  '0', '1', '2', '3', '4', '5', '6', '7',
  '8', '9', '-', '=', '\\', '[', ']', ';',
  '\'', '`', ',', '.', '/', ' ', 'a', 'b',
  'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j',
  'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r',
  's', 't', 'u', 'v', 'w', 'x', 'y', 'z',
};

// The mapping from keys to symbols with upper case
const char mappingUpper[] = {
  ')', '!', '@', '#', '$', '%', '^', '&',
  '*', '(', '_', '+', '|', '{', '}', ':',
  '"', '~', '<', '>', '?', ' ', 'A', 'B',
  'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J',
  'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R',
  'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z',
};

// The mapping from keys to symbols for the keypad
const char mappingKeypad[] = {
  '*', '+', '/', '0', '1', '2', '3', '4',
  '5', '6', '7', '8', '9', '-', ',', '.',
};

void processKey(unsigned int row, byte before, byte after) {
  for (int i = 0; i < NCOLS; i++) {
    if ((before & 1) == 0 && (after & 1) == 1) {
      // Key released
      if (row == 8 && i == 0) {
        // Space bar
        Serial.print(" ");
      } else if (row == 7 && i == 7) {
        // Return
        Serial.println("");
      } else if (row == 6 && i == 3) {
        // Caps lock
        capslock_status = !capslock_status;
        digitalWrite(PIN_CAPSLOCK, capslock_status ? LOW : HIGH);
      } else if (row < 6 && !(row == 2 && i == 5)) {
        // Regular key (other than DEAD)
        if (capslock_status) {
          Serial.print(mappingUpper[row * NCOLS + i]);
        } else {
          Serial.print(mappingLower[row * NCOLS + i]);
        }
      } else if (row >= 9) {
        // Keypad
        Serial.print(mappingKeypad[(row - 9) * NCOLS + i]);
      } else {
        // Unknown. Print coordinates
        Serial.print("<");
        Serial.print(row);
        Serial.print(";");
        Serial.print(i);
        Serial.print(">");
      }

    }
    before >>= 1;
    after >>= 1;
  }
}

// Main program
void loop() {
  for (int i = 0; i < NROWS; i++) {
    selectRow(i);
    byte row = readRow();
    if (matrix_status[i] != row) {
#if DEBUG == 1
      Serial.print("Detected changes in row ");
      Serial.print(i);
      Serial.print(": ");
      Serial.print(row, BIN);
      Serial.println("");
#endif

      processKey(i, matrix_status[i], row);
      matrix_status[i] = row;
    }
  }
}