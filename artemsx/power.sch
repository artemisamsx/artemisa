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
Sheet 5 6
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L VCC #PWR016
U 1 1 5AE11F1D
P 4150 2100
F 0 "#PWR016" H 4150 1950 50  0001 C CNN
F 1 "VCC" H 4150 2250 50  0000 C CNN
F 2 "" H 4150 2100 50  0001 C CNN
F 3 "" H 4150 2100 50  0001 C CNN
	1    4150 2100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR017
U 1 1 5AE11F31
P 4150 2950
F 0 "#PWR017" H 4150 2700 50  0001 C CNN
F 1 "GND" H 4150 2800 50  0000 C CNN
F 2 "" H 4150 2950 50  0001 C CNN
F 3 "" H 4150 2950 50  0001 C CNN
	1    4150 2950
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG018
U 1 1 5AE11F45
P 3750 2100
F 0 "#FLG018" H 3750 2175 50  0001 C CNN
F 1 "PWR_FLAG" H 3750 2250 50  0000 C CNN
F 2 "" H 3750 2100 50  0001 C CNN
F 3 "" H 3750 2100 50  0001 C CNN
	1    3750 2100
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG019
U 1 1 5AE11F57
P 3700 2950
F 0 "#FLG019" H 3700 3025 50  0001 C CNN
F 1 "PWR_FLAG" H 3700 3100 50  0000 C CNN
F 2 "" H 3700 2950 50  0001 C CNN
F 3 "" H 3700 2950 50  0001 C CNN
	1    3700 2950
	-1   0    0    1   
$EndComp
Wire Wire Line
	3750 2100 3750 2300
Wire Wire Line
	3750 2300 4150 2300
Wire Wire Line
	4150 2300 4150 2100
Wire Wire Line
	4150 2950 4150 2800
Wire Wire Line
	4150 2800 3700 2800
Wire Wire Line
	3700 2800 3700 2950
$EndSCHEMATC
