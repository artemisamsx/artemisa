# Artemisa Computer System User Manual - System Overview

## The System

Artemisa is a 8-bits computer powered by a Z80 microprocessor running at 3.58Mhz. This CPU was designed by Zilog in the 70's, as a binary compatible extension of the popular Intel 8080. The Z80 was also used in many other computers and videogame consoles during the 80's, as the ZX Spectrum, the Amstrad CPC, the Coleco Vision or the Sega Master System.

Artemisa is equipped with 64KB of RAM memory. It can be used by programs to store their code, data, and graphics. It also provides 32KB of ROM memory where MSX BIOS and MSX BASIC resides. The MSX BIOS is a collection of software routines used by programmers to make their programs interact with the hardware. The MSX BASIC is a programming language and user environment you can use to code programs and give commands to the computer.

As any other MSX system, there are two major chips that complete the system along the Z80: the VDP and the PSG.

The VDP is the Video Display Processor, an integrated circuit capable of generating a video output for your screen. There were different revisions of the VDP across different generations of MSX. First designs started with a [TMS9918](https://en.wikipedia.org/wiki/Texas_Instruments_TMS9918), a VDP that was already used in Coleco Vision, Sega SG-1000 and some other home computers as the SVI-328. This chip can generate graphics with 256x192 pixels and 16 colors, with hardware-accelarated sprites to make animated graphics. The TMS9918 has a video output limited to NTSC composite video, with synchronization, luminance and crominance all together in a single line. This limitation led the second wave of MSX computers to use the TMS9928 and TMS9929 instead. These VDPs have the same functionality as TMS9918, but they had a component video output that separates the chrominance from the luminance. Thanks to that, the designers can manipulate the video signals to generate the outputs that better fit their needs (composite video, radio-frequence modulation for TV sets, RGB, etc). In addition, the TMS9929 uses PAL encoding instead of NTSC, so they became the right option in most european countries.

Depending on your TV set or monitor, you will have different needs. NTSC vs PAL, composite vs RGB, SCART vs RCA connectors... This customization is really important for the users. That's why Artemisa is designed to support every single option for every single user. This is achieved by separating the VDP and its circuitry from the rest of the computer in a graphics card. This card is connected to the computer mainboard by a ribbon cable. Thus, users can purshase their Artemisa computer by choosing the graphics card that better fits their needs.

Along the VDP, any MSX has a PSG. The PSG is the Programmable Sound Generator, a chip that can generate and play sound and music. Artemisa is equipped with the [AY-3-8910A](https://es.wikipedia.org/wiki/General_Instrument_AY-3-8910). This PSG is also present in the ZX Spectrum and the Amstrad CPC computers. It capable to reproduce 3 different tones with base frequencies of up to 125 kHz.

Using this chip set, and some other circuitry, Artemisa supports several peripherals common in the MSX world.

- A keyboard port that supports keyboards with up to 96 keys.
- Two joystick ports compatible with MSX/Coleco/SEGA devices.
- One datassete port to load or save software from a magnetic tape data storage.
- Two expansion slots to connect cartridges with software or new hardware to expand the computer.

If you are a experienced MSX users, you should know there is a few things you may find in a MSX computer that are not present in Artemisa:

- Printer port. We expect you to do many things with your Artemisa computer. But printing documents is not one of them.
- Serial port. Same reason as for the printer port.
- +12V and -12V power lines. Complicates the design and introduces additional security concerns. Any hardware (cartridge) that depends upon this will not work.

## System Parts

After this introduction to the overall system, you have a high level idea of what you can get from Artemisa. Now it is time to tell you about the different parts that comprise an Artemisa system.

Artemisa is designed to fit your needs as much as possible. There are two parts of the system that are more sensible to customization than the rest:

- The video system. We already discussed a little bit about this. In Artemisa, the VDP and related circuits are separated from the rest of the computer into a separated graphics card. And the graphics card must be connected to an external monitor or a TV. The right option depends on the computer setup you want. See [Graphics card](#graphics-card) section for more details.

- The keyboard. Artemisa is designed to be used with an external keyboard specially designed for it. There are different options for these keyboards depending on the grade of experience you want to obtain and the cost you can afford. See [Keyboard](#keyboard) section for more details.

So in summary, in order to have a full Artemisa computer system, you will need the following parts:

- One Artemisa system base. This includes the motherboard of the computer, the case, the power supply, the cables, the screws and the spacers needed to assemble the computer.
- An Artemisa-compatible keyboard or a keyboard adapter with a suitable external keyboard.
- An Artemisa-compatible graphics card with a suitable external monitor or TV set.

## Graphics card

The graphics card is connected to the mainboard via IDC ports on both boards. A ribbon cable connects the ports. The graphics card is designed to be mounted beside the motherboard, so this internal connection is perfect for the job.

The graphics card port has 50 pins, and it have a pinout similar to those used in the MSX slots. This means the graphics card can behave like a MSX cartridge, mapping its hardware in arbitrary IO ports, or even memory space of the Z80. One of the particularities of this port is that the sound line is "reversed". Instead of connecting a external sound device to the computer, it takes the sound line from the computer to consume it. Thanks to that, the graphics card can produce its own video signal and combine it with the sound signal produced by the computer coming from the motherboard. This might be used to offer outputs that combine video and sound, as SCART connectors.

The following graphics cards are available:

- GFX9918. This is the most basic graphic card available for Artemisa. It is powered by the TMS9918 chip, the first video processor used in a MSX computer. This board generates a NTSC composite video output at 60Hz combined with the sound line via RCA connectors (classic yellow, white and red triad). It includes 16KB of video RAM (VRAM) using static memory.

![gfx-9918](img/gfx-9918.png)

- GFX992X (under development). This is an evolution of GFX9918. It uses a TMS9928 or a TMS9929 chip, for NTSC or PAL encoding, respectively. This card has the same graphical features as the GFX9918, but it generates a component video output (YPbPr) instead of composite video. In a few words, the crominance is separated from the luminance in the 9928/9929 chips, what provides a major improvement in the video quality. You can use one chip or the other using the same board, depending on the system used by your TV set or monitor (NTSC or PAL). The board encodes the component video signals to produce RGB+sync. All these outputs plus the sound signal are offered as a female SCART connector you can connect to your TV set via a standard cable.

## Keyboard

Artemisa provides a DB25 connector (classic parallel port, but with custom pinout) in its motherboard to connect an Artemisa compatible keyboard peripheral. This keyboard port basically sends row coordinates of the keyboard matrix to be read, and receives back the status of each column for that row in the matrix. You have different options in order to connect a real keyboard to the computer:

- Use the Artemisa PS2 Keyboard Adapter. This is a separated device that can be connected to the Artemisa keyboard port. It adapts a regular PS2 keyboard and exposes it to Artemisa as a regular keyboard. A unexpensive and simple option, but will affect your user experience negatively since you will have to use a keyboard with a PC key distribution.

- Use the Artemisa USB Keyboard adapter (under development). The same as PS2 adapter, but for USB keyboards.

- Use an Artemisa keyboard (under development). Use a mechanical keyboard designed specifically to be connected to an Artemisa computer, with a real MSX key distribution. For real pro users.

## Case

Artemisa motherboard is distributed with a very simple case comprised by two acrylic plates where motherboard and graphics card can be mounted. The lower plate is opaque white, and it has several holes to screw spacers where the boards stands on. The upper plate is transparent. So you can enjoy looking at the circuits of your favorite MSX computer every time you use it. The upper plate also has special cuts for the cartridge connectors.

## Power supply

The motherboard provides a 2.5/5.5mm DC power jack to connect a 5V, 2A external power supply. As mentioned above, no +12V/-12V power lines are used in Artemisa.

## Next

Now you have a clear general idea about what's Artemisa. Let's see how you can [assemble it from its parts](030-assembly.md).
