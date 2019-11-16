#ifndef MAPPING_H
#define MAPPING_H

#include "ps2.h"

// A struct that describes the mapping between some scancode of the PS2
// keyboard and a key in the MSX keyboard.
struct mapping {
  // The row of that key in the MSX matrix
  int row;
  // The column of the key in the MSX matrix
  int offset;
};

// Some definitions of the MSX keyboard matrix coordinates
#define MATRIX_NULL           { -1, -1 }

#define MATRIX_INT_0          {  0,  0 }
#define MATRIX_INT_1          {  0,  1 }
#define MATRIX_INT_2          {  0,  2 }
#define MATRIX_INT_3          {  0,  3 }
#define MATRIX_INT_4          {  0,  4 }
#define MATRIX_INT_5          {  0,  5 }
#define MATRIX_INT_6          {  0,  6 }
#define MATRIX_INT_7          {  0,  7 }
#define MATRIX_INT_8          {  1,  0 }
#define MATRIX_INT_9          {  1,  1 }
#define MATRIX_INT_MINUS      {  1,  2 }
#define MATRIX_INT_EQUAL      {  1,  3 }
#define MATRIX_INT_BACKSLASH  {  1,  4 }
#define MATRIX_INT_SQBRACKL   {  1,  5 }
#define MATRIX_INT_SQBRACKR   {  1,  6 }
#define MATRIX_INT_SEMICOLON  {  1,  7 }
#define MATRIX_INT_QUOTE      {  2,  0 }
#define MATRIX_INT_BACKQUOTE  {  2,  1 }
#define MATRIX_INT_COMMA      {  2,  2 }
#define MATRIX_INT_DOT        {  2,  3 }
#define MATRIX_INT_DIV        {  2,  4 }
#define MATRIX_INT_DEAD       {  2,  5 }
#define MATRIX_INT_A          {  2,  6 }
#define MATRIX_INT_B          {  2,  7 }
#define MATRIX_INT_C          {  3,  0 }
#define MATRIX_INT_D          {  3,  1 }
#define MATRIX_INT_E          {  3,  2 }
#define MATRIX_INT_F          {  3,  3 }
#define MATRIX_INT_G          {  3,  4 }
#define MATRIX_INT_H          {  3,  5 }
#define MATRIX_INT_I          {  3,  6 }
#define MATRIX_INT_J          {  3,  7 }
#define MATRIX_INT_K          {  4,  0 }
#define MATRIX_INT_L          {  4,  1 }
#define MATRIX_INT_M          {  4,  2 }
#define MATRIX_INT_N          {  4,  3 }
#define MATRIX_INT_O          {  4,  4 }
#define MATRIX_INT_P          {  4,  5 }
#define MATRIX_INT_Q          {  4,  6 }
#define MATRIX_INT_R          {  4,  7 }
#define MATRIX_INT_S          {  5,  0 }
#define MATRIX_INT_T          {  5,  1 }
#define MATRIX_INT_U          {  5,  2 }
#define MATRIX_INT_V          {  5,  3 }
#define MATRIX_INT_W          {  5,  4 }
#define MATRIX_INT_X          {  5,  5 }
#define MATRIX_INT_Y          {  5,  6 }
#define MATRIX_INT_Z          {  5,  7 }
#define MATRIX_INT_SHIFT      {  6,  0 }
#define MATRIX_INT_CTRL       {  6,  1 }
#define MATRIX_INT_GRAPH      {  6,  2 }
#define MATRIX_INT_CAPSLOCK   {  6,  3 }
#define MATRIX_INT_CODE       {  6,  4 }
#define MATRIX_INT_F1         {  6,  5 }
#define MATRIX_INT_F2         {  6,  6 }
#define MATRIX_INT_F3         {  6,  7 }
#define MATRIX_INT_F4         {  7,  0 }
#define MATRIX_INT_F5         {  7,  1 }
#define MATRIX_INT_ESC        {  7,  2 }
#define MATRIX_INT_TAB        {  7,  3 }
#define MATRIX_INT_STOP       {  7,  4 }
#define MATRIX_INT_BS         {  7,  5 }
#define MATRIX_INT_SELECT     {  7,  6 }
#define MATRIX_INT_RET        {  7,  7 }
#define MATRIX_INT_SPACE      {  8,  0 }
#define MATRIX_INT_HOME       {  8,  1 }
#define MATRIX_INT_INS        {  8,  2 }
#define MATRIX_INT_DEL        {  8,  3 }
#define MATRIX_INT_LARROW     {  8,  4 }
#define MATRIX_INT_UARROW     {  8,  5 }
#define MATRIX_INT_DARROW     {  8,  6 }
#define MATRIX_INT_RARROW     {  8,  7 }
#define MATRIX_INT_NUMMULT    {  9,  0 }
#define MATRIX_INT_NUMPLUS    {  9,  1 }
#define MATRIX_INT_NUMDIV     {  9,  2 }
#define MATRIX_INT_NUM0       {  9,  3 }
#define MATRIX_INT_NUM1       {  9,  4 }
#define MATRIX_INT_NUM2       {  9,  5 }
#define MATRIX_INT_NUM3       {  9,  6 }
#define MATRIX_INT_NUM4       {  9,  7 }
#define MATRIX_INT_NUM5       { 10,  0 }
#define MATRIX_INT_NUM6       { 10,  1 }
#define MATRIX_INT_NUM7       { 10,  2 }
#define MATRIX_INT_NUM8       { 10,  3 }
#define MATRIX_INT_NUM9       { 10,  4 }
#define MATRIX_INT_NUMMINUS   { 10,  5 }
#define MATRIX_INT_NUMCOMMA   { 10,  6 }
#define MATRIX_INT_NUMDOT     { 10,  7 }

// The mapping table establishes a mapping between a scancode coming from the
// PS2 keyboard and the matrix coordinates of MSX keyboard being emulated.
// A value of `{-1, -1 }` means there is no MSX equivalent for such scancode.
//
// MSX international keyboard mapping.
// See http://map.grauw.nl/articles/keymatrix.php
const mapping international_mapping[] = {
  MATRIX_NULL,          // 0x00:
  MATRIX_NULL,          // 0x01:
  MATRIX_NULL,          // 0x02:
  MATRIX_INT_CAPSLOCK,  // 0x03: PS2_KEY_CAPS
  MATRIX_NULL,          // 0x04: PS2_KEY_PRTSCR
  MATRIX_NULL,          // 0x05:
  MATRIX_INT_SHIFT,     // 0x06: PS2_KEY_L_SHIFT
  MATRIX_INT_SHIFT,     // 0x07: PS2_KEY_R_SHIFT
  MATRIX_INT_CTRL,      // 0x08: PS2_KEY_L_CTRL
  MATRIX_INT_DEAD,      // 0x09: PS2_KEY_R_CTRL
  MATRIX_INT_GRAPH,     // 0x0a: PS2_KEY_L_ALT
  MATRIX_INT_CODE,      // 0x0b: PS2_KEY_R_ALT
  MATRIX_NULL,          // 0x0c: PS2_KEY_L_GUI
  MATRIX_NULL,          // 0x0d: PS2_KEY_R_GUI
  MATRIX_NULL,          // 0x0e:
  MATRIX_NULL,          // 0x0f:
  MATRIX_NULL,          // 0x10:
  MATRIX_INT_HOME,      // 0x11: PS2_KEY_HOME
  MATRIX_NULL,          // 0x12: PS2_KEY_END
  MATRIX_NULL,          // 0x13:
  MATRIX_NULL,          // 0x14:
  MATRIX_INT_LARROW,    // 0x15: PS2_KEY_L_ARROW
  MATRIX_INT_RARROW,    // 0x16: PS2_KEY_R_ARROW
  MATRIX_INT_UARROW,    // 0x17: PS2_KEY_UP_ARROW
  MATRIX_INT_DARROW,    // 0x18: PS2_KEY_DN_ARROW
  MATRIX_INT_INS,       // 0x19: PS2_KEY_INSERT
  MATRIX_INT_DEL,       // 0x1a: PS2_KEY_DELETE
  MATRIX_INT_ESC,       // 0x1b: PS2_KEY_ESC
  MATRIX_INT_BS,        // 0x1c: PS2_KEY_BS
  MATRIX_INT_TAB,       // 0x1d: PS2_KEY_TAB
  MATRIX_INT_RET,       // 0x1e: PS2_KEY_ENTER
  MATRIX_INT_SPACE,     // 0x1f: PS2_KEY_SPACE
  MATRIX_INT_NUM0,      // 0x20: PS2_KEY_KP0
  MATRIX_INT_NUM1,      // 0x21: PS2_KEY_KP1
  MATRIX_INT_NUM2,      // 0x22: PS2_KEY_KP2
  MATRIX_INT_NUM3,      // 0x23: PS2_KEY_KP3
  MATRIX_INT_NUM4,      // 0x24: PS2_KEY_KP4
  MATRIX_INT_NUM5,      // 0x25: PS2_KEY_KP5
  MATRIX_INT_NUM6,      // 0x26: PS2_KEY_KP6
  MATRIX_INT_NUM7,      // 0x27: PS2_KEY_KP7
  MATRIX_INT_NUM8,      // 0x28: PS2_KEY_KP8
  MATRIX_INT_NUM9,      // 0x29: PS2_KEY_KP9
  MATRIX_INT_NUMDOT,    // 0x2a: PS2_KEY_KP_DOT
  MATRIX_INT_RET,       // 0x2b: PS2_KEY_KP_ENTER
  MATRIX_INT_NUMPLUS,   // 0x2c: PS2_KEY_KP_PLUS
  MATRIX_INT_NUMMINUS,  // 0x2d: PS2_KEY_KP_MINUS
  MATRIX_INT_NUMMULT,   // 0x2e: PS2_KEY_KP_TIMES
  MATRIX_INT_NUMDIV,    // 0x2f: PS2_KEY_KP_DIV
  MATRIX_INT_0,         // 0x30: PS2_KEY_0
  MATRIX_INT_1,         // 0x31: PS2_KEY_1
  MATRIX_INT_2,         // 0x32: PS2_KEY_2
  MATRIX_INT_3,         // 0x33: PS2_KEY_3
  MATRIX_INT_4,         // 0x34: PS2_KEY_4
  MATRIX_INT_5,         // 0x35: PS2_KEY_5
  MATRIX_INT_6,         // 0x36: PS2_KEY_6
  MATRIX_INT_7,         // 0x37: PS2_KEY_7
  MATRIX_INT_8,         // 0x38: PS2_KEY_8
  MATRIX_INT_9,         // 0x39: PS2_KEY_9
  MATRIX_INT_QUOTE,     // 0x3a: PS2_KEY_APOS
  MATRIX_INT_COMMA,     // 0x3b: PS2_KEY_COMMA
  MATRIX_INT_MINUS,     // 0x3c: PS2_KEY_MINUS
  MATRIX_INT_DOT,       // 0x3d: PS2_KEY_DOT
  MATRIX_INT_DIV,       // 0x3e: PS2_KEY_DIV
  MATRIX_NULL,          // 0x3f:
  MATRIX_INT_BACKQUOTE, // 0x40: PS2_KEY_SINGLE
  MATRIX_INT_A,         // 0x41: PS2_KEY_A
  MATRIX_INT_B,         // 0x42: PS2_KEY_B
  MATRIX_INT_C,         // 0x43: PS2_KEY_C
  MATRIX_INT_D,         // 0x44: PS2_KEY_D
  MATRIX_INT_E,         // 0x45: PS2_KEY_E
  MATRIX_INT_F,         // 0x46: PS2_KEY_F
  MATRIX_INT_G,         // 0x47: PS2_KEY_G
  MATRIX_INT_H,         // 0x48: PS2_KEY_H
  MATRIX_INT_I,         // 0x49: PS2_KEY_I
  MATRIX_INT_J,         // 0x4a: PS2_KEY_J
  MATRIX_INT_K,         // 0x4b: PS2_KEY_K
  MATRIX_INT_L,         // 0x4c: PS2_KEY_L
  MATRIX_INT_M,         // 0x4d: PS2_KEY_M
  MATRIX_INT_N,         // 0x4e: PS2_KEY_N
  MATRIX_INT_O,         // 0x4f: PS2_KEY_O
  MATRIX_INT_P,         // 0x50: PS2_KEY_P
  MATRIX_INT_Q,         // 0x51: PS2_KEY_Q
  MATRIX_INT_R,         // 0x52: PS2_KEY_R
  MATRIX_INT_S,         // 0x53: PS2_KEY_S
  MATRIX_INT_T,         // 0x54: PS2_KEY_T
  MATRIX_INT_U,         // 0x55: PS2_KEY_U
  MATRIX_INT_V,         // 0x56: PS2_KEY_V
  MATRIX_INT_W,         // 0x57: PS2_KEY_W
  MATRIX_INT_X,         // 0x58: PS2_KEY_X
  MATRIX_INT_Y,         // 0x59: PS2_KEY_Y
  MATRIX_INT_Z,         // 0x5a: PS2_KEY_Z
  MATRIX_INT_SEMICOLON, // 0x5b: PS2_KEY_SEMI
  MATRIX_INT_BACKSLASH, // 0x5c: PS2_KEY_BACK
  MATRIX_INT_SQBRACKL,  // 0x5d: PS2_KEY_OPEN_SQ
  MATRIX_INT_SQBRACKR,  // 0x5e: PS2_KEY_CLOSE_SQ
  MATRIX_INT_EQUAL,     // 0x5f: PS2_KEY_EQUAL
  MATRIX_INT_NUMCOMMA,  // 0x60: PS2_KEY_KP_COMMA
  MATRIX_INT_F1,        // 0x61: PS2_KEY_F1
  MATRIX_INT_F2,        // 0x62: PS2_KEY_F2
  MATRIX_INT_F3,        // 0x63: PS2_KEY_F3
  MATRIX_INT_F4,        // 0x64: PS2_KEY_F4
  MATRIX_INT_F5,        // 0x65: PS2_KEY_F5
  MATRIX_NULL,          // 0x66:
  MATRIX_INT_SELECT,    // 0x67: PS2_KEY_F7
  MATRIX_INT_STOP,      // 0x68: PS2_KEY_F8
  MATRIX_NULL,          // 0x69:
  MATRIX_NULL,          // 0x6a:
  MATRIX_NULL,          // 0x6b:
  MATRIX_NULL,          // 0x6c:
  MATRIX_NULL,          // 0x6d:
  MATRIX_NULL,          // 0x6e:
  MATRIX_NULL,          // 0x6f:
  MATRIX_NULL,          // 0x70:
  MATRIX_NULL,          // 0x71:
  MATRIX_NULL,          // 0x72:
  MATRIX_NULL,          // 0x73:
  MATRIX_NULL,          // 0x74:
  MATRIX_NULL,          // 0x75:
  MATRIX_NULL,          // 0x76:
  MATRIX_NULL,          // 0x77:
  MATRIX_NULL,          // 0x78:
  MATRIX_NULL,          // 0x79:
  MATRIX_NULL,          // 0x7a:
  MATRIX_NULL,          // 0x7b:
  MATRIX_NULL,          // 0x7c:
  MATRIX_NULL,          // 0x7d:
  MATRIX_NULL,          // 0x7e:
  MATRIX_NULL,          // 0x7f:
  MATRIX_NULL,          // 0x80:
  MATRIX_NULL,          // 0x81:
  MATRIX_NULL,          // 0x82:
  MATRIX_NULL,          // 0x83:
  MATRIX_NULL,          // 0x84:
  MATRIX_NULL,          // 0x85:
  MATRIX_NULL,          // 0x86:
  MATRIX_NULL,          // 0x87:
  MATRIX_NULL,          // 0x88:
  MATRIX_NULL,          // 0x89:
  MATRIX_NULL,          // 0x8a:
  MATRIX_NULL,          // 0x8b:
  MATRIX_NULL,          // 0x8c:
  MATRIX_NULL,          // 0x8d:
  MATRIX_NULL,          // 0x8e:
  MATRIX_NULL,          // 0x8f:
  MATRIX_NULL,          // 0x90:
  MATRIX_NULL,          // 0x91:
  MATRIX_NULL,          // 0x92:
  MATRIX_NULL,          // 0x93:
  MATRIX_NULL,          // 0x94:
  MATRIX_NULL,          // 0x95:
  MATRIX_NULL,          // 0x96:
  MATRIX_NULL,          // 0x97:
  MATRIX_NULL,          // 0x98:
  MATRIX_NULL,          // 0x99:
  MATRIX_NULL,          // 0x9a:
  MATRIX_NULL,          // 0x9b:
  MATRIX_NULL,          // 0x9c:
  MATRIX_NULL,          // 0x9d:
  MATRIX_NULL,          // 0x9e:
  MATRIX_NULL,          // 0x9f:
  MATRIX_NULL,          // 0xa0:
};

mapping map_scancodes(uint8_t (&scancode)[3]);

#endif
