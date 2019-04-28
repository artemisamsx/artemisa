# GFX9918 Testbench

This testbench can be used to test GFX9918 boards.

You will need an Arduino Uno or an Arduino Mega 2560 board or similar to drive the test. The code is written to consider different pinouts for each board.

## Arduino Uno pinout

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

## Arduino Mega pinout

- Pin 2 (out): /VDPSEL (pin 16 of IDC connector)
- Pin 3 (out): /WR (pin 13 of IDC connector)
- Pin 4 (out): /RD (pin 14 of IDC connector)
- Pin 5 (in): /IRQ (pin 8 of IDC connector)
- Pin 6 (out): /RESET (pin 15 of IDC connector)
- Pin 7 (out): A0 (pin 28 of IDC connector)
- Pin 22 (out): D0 (pin 34 of IDC connector)
- Pin 23 (out): D1 (pin 33 of IDC connector)
- Pin 24 (out): D2 (pin 36 of IDC connector)
- Pin 25 (out): D3 (pin 35 of IDC connector)
- Pin 26 (out): D4 (pin 38 of IDC connector)
- Pin 27 (out): D5 (pin 37 of IDC connector)
- Pin 28 (out): D6 (pin 40 of IDC connector)
- Pin 29 (out): D7 (pin 39 of IDC connector)

## How to test the board

Connect the wires, including +5V and GND power lines and RCA connectors to a external monitor.

Power up, reset the Arduino, and you must see a message in the screen similar to the welcome any regular MSX1 gives.
