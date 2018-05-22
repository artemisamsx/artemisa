#include <PS2KeyAdvanced.h>

#define PS2_PIN_DATA     3
#define PS2_PIN_CLK      2
#define MATRIX_PIN_DS    5
#define MATRIX_PIN_SHCP  4

#define MATRIX_NROWS     11
#define KEYCODE_MAX      0xa0

PS2KeyAdvanced keyboard;

int outputs[MATRIX_NROWS] = {
  A0, A1, A2, A3, A4, A5,
  8, 9, 10, 11, 12,
};

byte matrix[MATRIX_NROWS];

struct mapping {
  int row;
  int offset;
};

// MSX international keyboard mapping.
// See http://map.grauw.nl/articles/keymatrix.php
mapping international_mapping[] = {  
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

void init_outputs() {
  pinMode(MATRIX_PIN_DS, OUTPUT);
  pinMode(MATRIX_PIN_SHCP, OUTPUT);
  shift_value(0xff);  // all 1s means unpressed
  
  for (int i = 0; i < MATRIX_NROWS; i++) {
    pinMode(outputs[i], OUTPUT);
    digitalWrite(outputs[i], LOW);
    latch_row(i);
  }
}

void init_matrix() {
  for (int i = 0; i < MATRIX_NROWS; i++) {
    matrix[i] = 0xff; // all 1s means unpressed
  }
}

void shift_value(byte value) {
  shiftOut(MATRIX_PIN_DS, MATRIX_PIN_SHCP, MSBFIRST, value);
  /*
  for (int i = 7; i >= 0; i--) {
    digitalWrite(MATRIX_PIN_DS, bitRead(value, i));
    digitalWrite(MATRIX_PIN_SHCP, HIGH);
    //delayMicroseconds(10);
    digitalWrite(MATRIX_PIN_SHCP, LOW);
  }
  digitalWrite(MATRIX_PIN_DS, HIGH);
  */
}

void latch_row(int row) {
  digitalWrite(outputs[row], HIGH);
  delayMicroseconds(10);
  digitalWrite(outputs[row], LOW);
}

void write_row(int row, byte value) {
  shift_value(value);
  latch_row(row);
}

void handle_code(int16_t c) {
  byte key = c & 0x00ff;
  if (key >= KEYCODE_MAX) {
    return;
  }
  mapping m = international_mapping[key];
  if (m.row == -1) {
    return;
  }
  byte r = matrix[m.row];
  if (c & PS2_BREAK) {
    bitSet(r, m.offset);
  } else {
    bitClear(r, m.offset);
  }
  if (r != matrix[m.row]) {
    Serial.print(F("Row "));
    Serial.print(m.row);
    Serial.print(F(" has changed to "));
    Serial.println(r, BIN);
    matrix[m.row] = r;
    write_row(m.row, r);
  }
}

void setup() {
  // Configure the keyboard library
  keyboard.begin(PS2_PIN_DATA, PS2_PIN_CLK);
  keyboard.resetKey();
  init_outputs();
  init_matrix();
  Serial.begin(9600);
  Serial.println( F( "PS2 Advanced Key Simple Test:" ) );
}


void loop() {
  if (keyboard.available()) {
    // read the next key
    uint16_t c = keyboard.read();
    if (c > 0) {
      handle_code(c);
    }
  }
}

