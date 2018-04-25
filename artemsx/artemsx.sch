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
Sheet 1 5
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
F5 "~RD" I L 6300 2400 60 
F6 "~SLTSEL3" I L 6300 2500 60 
$EndSheet
$Sheet
S 6300 3600 1150 1350
U 5AD4D7B1
F0 "VDP" 60
F1 "vdp.sch" 60
F2 "DATA[0..7]" I L 6300 3950 60 
F3 "~RESET" I L 6300 4200 60 
F4 "~VDPINT" O L 6300 4600 60 
F5 "ADDR[0..15]" I L 6300 3750 60 
F6 "~WR" I L 6300 4400 60 
F7 "~RD" I L 6300 4300 60 
F8 "~IOSL3" I L 6300 4500 60 
$EndSheet
$Sheet
S 2750 1750 1300 1450
U 5ADBC286
F0 "CPU" 60
F1 "cpu.sch" 60
F2 "ADDR[0..15]" O R 4050 2250 60 
F3 "~M1" O L 2750 1900 60 
F4 "~MREQ" O L 2750 2000 60 
F5 "~IORQ" O L 2750 2100 60 
F6 "~RD" O L 2750 2200 60 
F7 "~WR" O L 2750 2300 60 
F8 "~RFSH" O L 2750 2400 60 
F9 "DATA[0..7]" B R 4050 2550 60 
F10 "CLK" I L 2750 2600 60 
F11 "~EXTWAIT" I L 2750 3000 60 
F12 "~RESET" I L 2750 2700 60 
F13 "~VDPINT" I L 2750 2800 60 
F14 "~EXTINT" I L 2750 2900 60 
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
	2400 2600 2300 2700
Entry Wire Line
	2400 2700 2300 2800
Entry Wire Line
	2400 2800 2300 2900
Entry Wire Line
	2400 2900 2300 3000
Entry Wire Line
	2400 3000 2300 3100
Text Label 2400 2600 0    60   ~ 0
CLK
Text Label 2400 2700 0    60   ~ 0
~RESET
Text Label 2400 2800 0    60   ~ 0
~VDPINT
Text Label 2400 2900 0    60   ~ 0
~EXTINT
Text Label 2400 3000 0    60   ~ 0
~EXTWAIT
Wire Wire Line
	2400 2600 2750 2600
Wire Wire Line
	2750 2700 2400 2700
Wire Wire Line
	2400 2800 2750 2800
Wire Wire Line
	2750 2900 2400 2900
Wire Wire Line
	2400 3000 2750 3000
Entry Wire Line
	5600 2300 5500 2400
Entry Wire Line
	5600 2400 5500 2500
Entry Wire Line
	5600 2500 5500 2600
Text Label 5600 2300 0    60   ~ 0
~WR
Text Label 5600 2400 0    60   ~ 0
~RD
Text Label 5600 2500 0    60   ~ 0
~SLTSEL3
Entry Bus Bus
	2300 3450 2400 3550
Entry Bus Bus
	5400 3550 5500 3450
Wire Bus Line
	2300 1900 2300 3450
Wire Bus Line
	2400 3550 5400 3550
Wire Bus Line
	5500 2300 5500 3450
Wire Wire Line
	5600 2300 6300 2300
Wire Wire Line
	6300 2400 5600 2400
Wire Wire Line
	5600 2500 6300 2500
Entry Bus Bus
	4700 2250 4800 2350
Wire Bus Line
	4800 2350 4800 3650
Entry Bus Bus
	4800 3650 4900 3750
Wire Bus Line
	4900 3750 6300 3750
Text Label 6250 1850 2    60   ~ 0
ADDR[0..15]
Text Label 6250 3750 2    60   ~ 0
ADDR[0..15]
Entry Bus Bus
	5050 2550 5150 2650
Entry Bus Bus
	5150 3850 5250 3950
Wire Bus Line
	5150 2650 5150 3850
Wire Bus Line
	5250 3950 6300 3950
Text Label 6250 2050 2    60   ~ 0
DATA[0..7]
Text Label 6250 3950 2    60   ~ 0
DATA[0..7]
Entry Bus Bus
	5400 3550 5500 3650
Wire Bus Line
	5500 3650 5500 4750
Entry Wire Line
	5600 4200 5500 4300
Entry Wire Line
	5600 4300 5500 4400
Entry Wire Line
	5600 4400 5500 4500
Text Label 5600 4200 0    60   ~ 0
~RESET
Text Label 5600 4300 0    60   ~ 0
~RD
Text Label 5600 4400 0    60   ~ 0
~WR
Wire Wire Line
	5600 4200 6300 4200
Wire Wire Line
	6300 4300 5600 4300
Wire Wire Line
	5600 4400 6300 4400
Entry Wire Line
	5600 4500 5500 4600
Entry Wire Line
	5600 4600 5500 4700
Text Label 5600 4500 0    60   ~ 0
~IOSL3
Text Label 5600 4600 0    60   ~ 0
~VDPINT
Wire Wire Line
	5600 4500 6300 4500
Wire Wire Line
	6300 4600 5600 4600
$Sheet
S 8750 1000 1150 950 
U 5AE11EC9
F0 "Power" 60
F1 "power.sch" 60
$EndSheet
$Comp
L VCC #PWR01
U 1 1 5AE12DC4
P 1650 2350
F 0 "#PWR01" H 1650 2200 50  0001 C CNN
F 1 "VCC" H 1650 2500 50  0000 C CNN
F 2 "" H 1650 2350 50  0001 C CNN
F 3 "" H 1650 2350 50  0001 C CNN
	1    1650 2350
	1    0    0    -1  
$EndComp
Entry Wire Line
	2200 2450 2300 2550
Text Label 2200 2450 2    60   ~ 0
~SLTSEL3
Wire Wire Line
	1650 2350 1650 2950
Wire Wire Line
	1650 2450 2200 2450
Entry Wire Line
	2200 2550 2300 2650
Text Label 2200 2550 2    60   ~ 0
~RESET
Wire Wire Line
	1650 2550 2200 2550
Entry Wire Line
	2200 2650 2300 2750
Text Label 2200 2650 2    60   ~ 0
~EXTINT
Wire Wire Line
	1650 2650 2200 2650
Entry Wire Line
	2200 2750 2300 2850
Text Label 2200 2750 2    60   ~ 0
~EXTWAIT
Wire Wire Line
	1650 2750 2200 2750
Entry Wire Line
	2200 2850 2300 2950
Text Label 2200 2850 2    60   ~ 0
~IOSL3
Wire Wire Line
	1650 2850 2200 2850
Entry Wire Line
	2200 2950 2300 3050
Text Label 2200 2950 2    60   ~ 0
CLK
Wire Wire Line
	1650 2950 2200 2950
Connection ~ 1650 2450
Connection ~ 1650 2550
Connection ~ 1650 2650
Connection ~ 1650 2750
Connection ~ 1650 2850
Entry Wire Line
	2200 3250 2300 3350
Text Label 2200 3250 2    60   ~ 0
~MREQ
Wire Wire Line
	2200 3250 1650 3250
NoConn ~ 1650 3250
Entry Wire Line
	2200 3350 2300 3450
Text Label 2200 3350 2    60   ~ 0
~RFSH
Wire Wire Line
	2200 3350 1650 3350
NoConn ~ 1650 3350
$EndSCHEMATC
