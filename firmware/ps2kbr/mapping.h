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

// Returns the mapping for the given scancodes
mapping map_scancodes(uint8_t (&scancode)[3]);

#endif
