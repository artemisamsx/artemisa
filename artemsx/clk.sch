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
Sheet 11 11
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
L Crystal Y3
U 1 1 5AEC5AF6
P 6450 3700
F 0 "Y3" H 6450 3800 50  0000 C CNN
F 1 "3.58Mhz" H 6450 3600 50  0000 C CNN
F 2 "" H 6450 3700 50  0001 C CNN
F 3 "" H 6450 3700 50  0001 C CNN
	1    6450 3700
	-1   0    0    -1  
$EndComp
$Comp
L CP C5
U 1 1 5AEC5B3F
P 6900 4000
F 0 "C5" H 6910 4070 50  0000 L CNN
F 1 "22pF" H 6910 3920 50  0000 L CNN
F 2 "" H 6900 4000 50  0001 C CNN
F 3 "" H 6900 4000 50  0001 C CNN
	1    6900 4000
	-1   0    0    -1  
$EndComp
$Comp
L CP C6
U 1 1 5AEC5B76
P 6000 4000
F 0 "C6" H 6010 4070 50  0000 L CNN
F 1 "22pF" H 6010 3920 50  0000 L CNN
F 2 "" H 6000 4000 50  0001 C CNN
F 3 "" H 6000 4000 50  0001 C CNN
	1    6000 4000
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5AEC5BE8
P 6450 4250
F 0 "#PWR?" H 6450 4000 50  0001 C CNN
F 1 "GND" H 6450 4100 50  0000 C CNN
F 2 "" H 6450 4250 50  0001 C CNN
F 3 "" H 6450 4250 50  0001 C CNN
	1    6450 4250
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6900 4100 6900 4200
Wire Wire Line
	6900 4200 6450 4200
Wire Wire Line
	6450 4200 6000 4200
Wire Wire Line
	6450 4200 6450 4250
Wire Wire Line
	6000 4200 6000 4100
Connection ~ 6450 4200
Wire Wire Line
	6350 3700 6000 3700
Wire Wire Line
	6000 3600 6000 3700
Wire Wire Line
	6000 3700 6000 3900
Wire Wire Line
	6550 3700 6900 3700
Wire Wire Line
	6900 2850 6900 3200
Wire Wire Line
	6900 3200 6900 3700
Wire Wire Line
	6900 3700 6900 3900
$Comp
L 74HC04 U2
U 5 1 5AEC5C5A
P 6450 3200
F 0 "U2" H 6450 3350 50  0000 C CNN
F 1 "74HC04" H 6450 3050 50  0000 C CNN
F 2 "" H 6450 3200 50  0001 C CNN
F 3 "" H 6450 3200 50  0001 C CNN
	5    6450 3200
	-1   0    0    -1  
$EndComp
$Comp
L 74HC04 U2
U 6 1 5AEC5C93
P 5600 3200
F 0 "U2" H 5600 3350 50  0000 C CNN
F 1 "74HC04" H 5600 3050 50  0000 C CNN
F 2 "" H 5600 3200 50  0001 C CNN
F 3 "" H 5600 3200 50  0001 C CNN
	6    5600 3200
	-1   0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 5AEC5CF2
P 6000 3450
F 0 "R4" V 6080 3450 50  0000 C CNN
F 1 "1K" V 6000 3450 50  0000 C CNN
F 2 "" V 5930 3450 50  0001 C CNN
F 3 "" H 6000 3450 50  0001 C CNN
	1    6000 3450
	-1   0    0    -1  
$EndComp
Connection ~ 6000 3700
Wire Wire Line
	6000 2850 6000 3200
Wire Wire Line
	6000 3200 6000 3300
Wire Wire Line
	6150 3200 6000 3200
Wire Wire Line
	6000 3200 5900 3200
Connection ~ 6000 3200
Wire Wire Line
	6750 3200 6900 3200
Connection ~ 6900 3700
$Comp
L R R3
U 1 1 5AEC5D84
P 6450 2850
F 0 "R3" V 6530 2850 50  0000 C CNN
F 1 "2.2M" V 6450 2850 50  0000 C CNN
F 2 "" V 6380 2850 50  0001 C CNN
F 3 "" H 6450 2850 50  0001 C CNN
	1    6450 2850
	0    -1   1    0   
$EndComp
Wire Wire Line
	6000 2850 6300 2850
Wire Wire Line
	6600 2850 6900 2850
Connection ~ 6900 3200
Text HLabel 5200 3200 0    60   Output ~ 0
CLK
Wire Wire Line
	5300 3200 5200 3200
$EndSCHEMATC
