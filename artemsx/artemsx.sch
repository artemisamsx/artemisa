EESchema Schematic File Version 2
LIBS:artemsx
LIBS:power
LIBS:device
LIBS:switches
LIBS:relays
LIBS:motors
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:artemsx-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 4
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 6300 1650 1150 1350
U 5AD4D0ED
F0 "RAM" 60
F1 "ram.sch" 60
F2 "ADDR[0..15]" I L 6300 1850 60 
F3 "DATA[0..7]" B L 6300 2050 60 
F4 "~WR" I L 6300 2300 60 
F5 "~RD" I L 6300 2500 60 
F6 "~SLTSEL3" I L 6300 2700 60 
$EndSheet
$Sheet
S 6300 3450 1150 1350
U 5AD4D7B1
F0 "VDP" 60
F1 "vdp.sch" 60
$EndSheet
$Sheet
S 2750 1750 1300 2400
U 5ADBC286
F0 "CPU" 60
F1 "cpu.sch" 60
F2 "ADDR[0..15]" O R 4050 2250 60 
F3 "~M1" O L 2750 1900 60 
F4 "~MREQ" O L 2750 2000 60 
F5 "~IORQ" O L 2750 2100 60 
F6 "~M1_D" O L 2750 2650 60 
F7 "~MREQ_D" O L 2750 2750 60 
F8 "~IORQ_D" O L 2750 2850 60 
F9 "~RD_D" O L 2750 2950 60 
F10 "~WR_D" O L 2750 3050 60 
F11 "~RFSH_D" O L 2750 3150 60 
F12 "~RD" O L 2750 2200 60 
F13 "~WR" O L 2750 2300 60 
F14 "~RFSH" O L 2750 2400 60 
F15 "DATA[0..7]" B R 4050 2550 60 
F16 "CLK" I L 2750 3600 60 
F17 "~EXTWAIT" I L 2750 4000 60 
F18 "~RESET" I L 2750 3700 60 
F19 "~VDPINT" I L 2750 3800 60 
F20 "~EXTINT" I L 2750 3900 60 
$EndSheet
Entry Bus Bus
	4700 2250 4800 2150
Entry Bus Bus
	4800 1950 4900 1850
Wire Bus Line
	4900 1850 6300 1850
Wire Bus Line
	4800 1950 4800 2150
Wire Bus Line
	4700 2250 4050 2250
Entry Bus Bus
	5050 2550 5150 2450
Entry Bus Bus
	5150 2150 5250 2050
Wire Bus Line
	5250 2050 6300 2050
Wire Bus Line
	5150 2150 5150 2450
Text Label 4100 2550 0    60   ~ 0
DATA[0..7]
Text Label 4100 2250 0    60   ~ 0
ADDR[0..15]
Wire Bus Line
	4050 2550 5050 2550
Entry Wire Line
	2400 1900 2300 2000
Entry Wire Line
	2400 2000 2300 2100
Entry Wire Line
	2400 2100 2300 2200
Entry Wire Line
	2400 2200 2300 2300
Entry Wire Line
	2400 2300 2300 2400
Entry Wire Line
	2400 2400 2300 2500
Text Label 2400 1900 0    60   ~ 0
~M1
Text Label 2400 2000 0    60   ~ 0
~MREQ
Text Label 2400 2100 0    60   ~ 0
~IORQ
Text Label 2400 2200 0    60   ~ 0
~RD
Text Label 2400 2300 0    60   ~ 0
~WR
Text Label 2400 2400 0    60   ~ 0
~RFSH
Wire Wire Line
	2400 1900 2750 1900
Wire Wire Line
	2750 2000 2400 2000
Wire Wire Line
	2400 2100 2750 2100
Wire Wire Line
	2750 2200 2400 2200
Wire Wire Line
	2400 2300 2750 2300
Wire Wire Line
	2750 2400 2400 2400
Entry Wire Line
	2400 2650 2300 2750
Entry Wire Line
	2400 2750 2300 2850
Entry Wire Line
	2400 2850 2300 2950
Entry Wire Line
	2400 2950 2300 3050
Entry Wire Line
	2400 3050 2300 3150
Entry Wire Line
	2400 3150 2300 3250
Text Label 2400 2650 0    60   ~ 0
~M1_D
Text Label 2400 2750 0    60   ~ 0
~MREQ_D
Text Label 2400 2850 0    60   ~ 0
~IORQ_D
Text Label 2400 2950 0    60   ~ 0
~RD_D
Text Label 2400 3050 0    60   ~ 0
~WR_D
Text Label 2400 3150 0    60   ~ 0
~RFSH_D
Wire Wire Line
	2400 2650 2750 2650
Wire Wire Line
	2750 2750 2400 2750
Wire Wire Line
	2400 2850 2750 2850
Wire Wire Line
	2750 2950 2400 2950
Wire Wire Line
	2400 3050 2750 3050
Wire Wire Line
	2750 3150 2400 3150
Entry Wire Line
	2400 3600 2300 3700
Entry Wire Line
	2400 3700 2300 3800
Entry Wire Line
	2400 3800 2300 3900
Entry Wire Line
	2400 3900 2300 4000
Entry Wire Line
	2400 4000 2300 4100
Text Label 2400 3600 0    60   ~ 0
CLK
Text Label 2400 3700 0    60   ~ 0
~RESET
Text Label 2400 3800 0    60   ~ 0
~VDPINT
Text Label 2400 3900 0    60   ~ 0
~EXTINT
Text Label 2400 4000 0    60   ~ 0
~EXTWAIT
Wire Wire Line
	2400 3600 2750 3600
Wire Wire Line
	2750 3700 2400 3700
Wire Wire Line
	2400 3800 2750 3800
Wire Wire Line
	2750 3900 2400 3900
Wire Wire Line
	2400 4000 2750 4000
Wire Bus Line
	2300 1950 2300 4200
Entry Wire Line
	5850 2300 5750 2400
Entry Wire Line
	5850 2500 5750 2600
Entry Wire Line
	5850 2700 5750 2800
Text Label 5850 2300 0    60   ~ 0
~WR
Text Label 5850 2500 0    60   ~ 0
~RD
$EndSCHEMATC
