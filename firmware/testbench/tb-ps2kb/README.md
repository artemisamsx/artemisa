# PS2 Keyboard Adapter Testbench

This testbench can be used to test PS2 Keyboard Adapter boards.

You will need an Arduino Mega/2560 board.

## Arduino Mega pinout

- Pin 2 (out): /VDPSEL (pin 16 of IDC connector)
- Pin 3 (out): /WR (pin 13 of IDC connector)
- Pin 4 (out): /RD (pin 14 of IDC connector)
- Pin 5 (in): /IRQ (pin 8 of IDC connector)
- Pin 6 (out): /RESET (pin 15 of IDC connector)
- Pin 7 (out): A0 (pin 28 of IDC connector)
- Pin A0 (out): D0 (pin 34 of IDC connector)
- Pin A1 (out): D1 (pin 33 of IDC connector)
- Pin A2 (out): D2 (pin 36 of IDC connector)
- Pin A3 (out): D3 (pin 35 of IDC connector)
- Pin A4 (out): D4 (pin 38 of IDC connector)
- Pin A5 (out): D5 (pin 37 of IDC connector)
- Pin 12 (out): D6 (pin 40 of IDC connector)
- Pin 13 (out): D7 (pin 39 of IDC connector)

## How to test the board

Connect the keyboard to the adapter board and wire everything according to the pinout above.

Power up, reset the Arduino, and open the serial monitor in your Arduino IDE. Everything you type in the PS2 keyboard should be seen in the console.
