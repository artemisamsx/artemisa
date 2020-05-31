#include "mapping.h"

mapping map_scancodes_ext(uint8_t key);

mapping map_scancodes(const PS2Scancode &sc) {
  if (sc.is_extended()) {
    return map_scancodes_ext(sc.keycode());
  }
  switch (sc.keycode()) {
    case 0x1C: return MATRIX_INT_A;
    case 0x32: return MATRIX_INT_B;
    case 0x21: return MATRIX_INT_C;
    case 0x23: return MATRIX_INT_D;
    case 0x24: return MATRIX_INT_E;
    case 0x2B: return MATRIX_INT_F;
    case 0x34: return MATRIX_INT_G;
    case 0x33: return MATRIX_INT_H;
    case 0x43: return MATRIX_INT_I;
    case 0x3B: return MATRIX_INT_J;
    case 0x42: return MATRIX_INT_K;
    case 0x4B: return MATRIX_INT_L;
    case 0x3A: return MATRIX_INT_M;
    case 0x31: return MATRIX_INT_N;
    case 0x44: return MATRIX_INT_O;
    case 0x4D: return MATRIX_INT_P;
    case 0x15: return MATRIX_INT_Q;
    case 0x2D: return MATRIX_INT_R;
    case 0x1B: return MATRIX_INT_S;
    case 0x2C: return MATRIX_INT_T;
    case 0x3C: return MATRIX_INT_U;
    case 0x2A: return MATRIX_INT_V;
    case 0x1D: return MATRIX_INT_W;
    case 0x22: return MATRIX_INT_X;
    case 0x35: return MATRIX_INT_Y;
    case 0x1A: return MATRIX_INT_Z;
    case 0x45: return MATRIX_INT_0;
    case 0x16: return MATRIX_INT_1;
    case 0x1E: return MATRIX_INT_2;
    case 0x26: return MATRIX_INT_3;
    case 0x25: return MATRIX_INT_4;
    case 0x2E: return MATRIX_INT_5;
    case 0x36: return MATRIX_INT_6;
    case 0x3D: return MATRIX_INT_7;
    case 0x3E: return MATRIX_INT_8;
    case 0x46: return MATRIX_INT_9;
    case 0x0E: return MATRIX_INT_BACKQUOTE;
    case 0x4E: return MATRIX_INT_MINUS;
    case 0x55: return MATRIX_INT_EQUAL;
    case 0x5D: return MATRIX_INT_BACKSLASH;
    case 0x66: return MATRIX_INT_BS;
    case 0x29: return MATRIX_INT_SPACE;
    case 0x0D: return MATRIX_INT_TAB;
    case 0x58: return MATRIX_INT_CAPSLOCK;
    case 0x12: return MATRIX_INT_SHIFT;       // LEFT SHIFT
    case 0x14: return MATRIX_INT_CTRL;        // LEFT CTRL
    case 0x11: return MATRIX_INT_GRAPH;       // LEFT ALT
    case 0x59: return MATRIX_INT_SHIFT;       // RIGHT SHIFT
    case 0x5A: return MATRIX_INT_RET;
    case 0x76: return MATRIX_INT_ESC;
    case 0x05: return MATRIX_INT_F1;
    case 0x06: return MATRIX_INT_F2;
    case 0x04: return MATRIX_INT_F3;
    case 0x0C: return MATRIX_INT_F4;
    case 0x03: return MATRIX_INT_F5;
    case 0x83: return MATRIX_INT_SELECT;      // F7
    case 0x0A: return MATRIX_INT_STOP;        // F8
    case 0x54: return MATRIX_INT_SQBRACKL;
    case 0x7C: return MATRIX_INT_NUMMULT;
    case 0x7B: return MATRIX_INT_NUMMINUS;
    case 0x79: return MATRIX_INT_NUMPLUS;
    case 0x71: return MATRIX_INT_NUMDOT;
    case 0x70: return MATRIX_INT_NUM0;
    case 0x69: return MATRIX_INT_NUM1;
    case 0x72: return MATRIX_INT_NUM2;
    case 0x7A: return MATRIX_INT_NUM3;
    case 0x6B: return MATRIX_INT_NUM4;
    case 0x73: return MATRIX_INT_NUM5;
    case 0x74: return MATRIX_INT_NUM6;
    case 0x6C: return MATRIX_INT_NUM7;
    case 0x75: return MATRIX_INT_NUM8;
    case 0x7D: return MATRIX_INT_NUM9;
    case 0x5B: return MATRIX_INT_SQBRACKR;
    case 0x4C: return MATRIX_INT_SEMICOLON;
    case 0x52: return MATRIX_INT_QUOTE;
    case 0x41: return MATRIX_INT_COMMA;
    case 0x49: return MATRIX_INT_DOT;
    case 0x4A: return MATRIX_INT_DIV;
    default: return MATRIX_NULL;
  }
}

mapping map_scancodes_ext(uint8_t key) {
  switch (key) {
    case 0x14: return MATRIX_INT_DEAD;        // RIGHT CTRL
    case 0x11: return MATRIX_INT_CODE;        // RIGHT ALT
    case 0x70: return MATRIX_INT_INS;
    case 0x6C: return MATRIX_INT_HOME;
    case 0x71: return MATRIX_INT_DEL;
    case 0x75: return MATRIX_INT_UARROW;
    case 0x6B: return MATRIX_INT_LARROW;
    case 0x72: return MATRIX_INT_DARROW;
    case 0x74: return MATRIX_INT_RARROW;
    case 0x4A: return MATRIX_INT_NUMDIV;
    case 0x5A: return MATRIX_INT_RET;
    default: return MATRIX_NULL;
  }
}
