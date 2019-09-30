# PS2 Keyboard Adapter Firmware

## Requirements

- A XGecu TL866II+ universal programmer.
- A UNIX-like operating system. It might work in Windows, but that's not tested.

## Dependencies

- Install [arduino-cli](https://github.com/arduino/arduino-cli), the Arduino command line utility to build sketches. You will find install instructions in the project page. At the time of this writing, it was not ported to Homebrew yet, but it was WIP.
- Install [minipro](https://gitlab.com/DavidGriffith/minipro) programming tool. You will have to install from sources (instructions in the project README).
- Install [srecord](http://srecord.sourceforge.net/), a tool to handle ROM images. You can install it with `brew install srecord`.

## Build

There is a Makefile available in this directory. We will start by configuring the toolchain:

```bash
make config
```

This will configure the Arduino CLI and will download the Arduino Uno environment if not done yet.

After this is completed, we can compile with:

```bash
make compile
```

This will generate a `ps2kbr.bin` file that contains the firmware image ready to be flashed in a ATMEGA328P.

## Burn

Put an ATMEGA328P chip in the programmer and let the Makefile do the magic:

```bash
make burn
```

If there are no errors, this will leave the 328 programmed with PS2 Keyboard Adapter firmware.
