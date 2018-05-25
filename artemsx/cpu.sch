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
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 10
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
L Z84C00 U18
U 1 1 5ADBCA58
P 5850 3700
F 0 "U18" H 5850 5100 60  0000 C CNN
F 1 "Z84C00" H 5900 2300 60  0000 C CNN
F 2 "" H 5850 3550 60  0001 C CNN
F 3 "" H 5850 3550 60  0001 C CNN
	1    5850 3700
	1    0    0    -1  
$EndComp
$Comp
L 74HCT244 U11
U 1 1 5ADBD2B3
P 8300 1000
F 0 "U11" H 8550 1300 60  0000 C CNN
F 1 "74HCT244" H 8600 650 60  0000 C CNN
F 2 "" H 8300 600 60  0001 C CNN
F 3 "" H 8300 600 60  0001 C CNN
	1    8300 1000
	1    0    0    -1  
$EndComp
$Comp
L 74HCT244 U11
U 2 1 5ADBD2DE
P 8300 1950
F 0 "U11" H 8550 2250 60  0000 C CNN
F 1 "74HCT244" H 8600 1600 60  0000 C CNN
F 2 "" H 8300 1550 60  0001 C CNN
F 3 "" H 8300 1550 60  0001 C CNN
	2    8300 1950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 5ADBD305
P 8300 1450
F 0 "#PWR05" H 8300 1200 50  0001 C CNN
F 1 "GND" H 8300 1300 50  0000 C CNN
F 2 "" H 8300 1450 50  0001 C CNN
F 3 "" H 8300 1450 50  0001 C CNN
	1    8300 1450
	1    0    0    -1  
$EndComp
$Comp
L 74HCT244 U12
U 1 1 5ADBD3DF
P 8300 2900
F 0 "U12" H 8550 3200 60  0000 C CNN
F 1 "74HCT244" H 8600 2550 60  0000 C CNN
F 2 "" H 8300 2500 60  0001 C CNN
F 3 "" H 8300 2500 60  0001 C CNN
	1    8300 2900
	1    0    0    -1  
$EndComp
$Comp
L 74HCT244 U12
U 2 1 5ADBD3E5
P 8300 3850
F 0 "U12" H 8550 4150 60  0000 C CNN
F 1 "74HCT244" H 8600 3500 60  0000 C CNN
F 2 "" H 8300 3450 60  0001 C CNN
F 3 "" H 8300 3450 60  0001 C CNN
	2    8300 3850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 5ADBD3EB
P 8300 3350
F 0 "#PWR06" H 8300 3100 50  0001 C CNN
F 1 "GND" H 8300 3200 50  0000 C CNN
F 2 "" H 8300 3350 50  0001 C CNN
F 3 "" H 8300 3350 50  0001 C CNN
	1    8300 3350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR07
U 1 1 5ADBD3FB
P 8300 2400
F 0 "#PWR07" H 8300 2150 50  0001 C CNN
F 1 "GND" H 8300 2250 50  0000 C CNN
F 2 "" H 8300 2400 50  0001 C CNN
F 3 "" H 8300 2400 50  0001 C CNN
	1    8300 2400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR08
U 1 1 5ADBD415
P 8300 4300
F 0 "#PWR08" H 8300 4050 50  0001 C CNN
F 1 "GND" H 8300 4150 50  0000 C CNN
F 2 "" H 8300 4300 50  0001 C CNN
F 3 "" H 8300 4300 50  0001 C CNN
	1    8300 4300
	1    0    0    -1  
$EndComp
Text HLabel 9550 2450 2    60   Output ~ 0
ADDR[0..15]
Entry Wire Line
	9100 1150 9200 1250
Entry Wire Line
	9100 1050 9200 1150
Entry Wire Line
	9100 950  9200 1050
Entry Wire Line
	9100 850  9200 950 
Text Label 9100 850  2    60   ~ 0
ADDR0
Text Label 9100 950  2    60   ~ 0
ADDR1
Text Label 9100 1050 2    60   ~ 0
ADDR2
Text Label 9100 1150 2    60   ~ 0
ADDR3
Entry Wire Line
	9100 2100 9200 2200
Entry Wire Line
	9100 2000 9200 2100
Entry Wire Line
	9100 1900 9200 2000
Entry Wire Line
	9100 1800 9200 1900
Text Label 9100 1800 2    60   ~ 0
ADDR4
Text Label 9100 1900 2    60   ~ 0
ADDR5
Text Label 9100 2000 2    60   ~ 0
ADDR6
Text Label 9100 2100 2    60   ~ 0
ADDR7
Entry Wire Line
	9100 2750 9200 2650
Entry Wire Line
	9100 2850 9200 2750
Entry Wire Line
	9100 2950 9200 2850
Entry Wire Line
	9100 3050 9200 2950
Text Label 9100 2750 2    60   ~ 0
ADDR8
Text Label 9100 2850 2    60   ~ 0
ADDR9
Text Label 9100 2950 2    60   ~ 0
ADDR10
Text Label 9100 3050 2    60   ~ 0
ADDR11
Entry Wire Line
	9100 3700 9200 3600
Entry Wire Line
	9100 3800 9200 3700
Entry Wire Line
	9100 3900 9200 3800
Entry Wire Line
	9100 4000 9200 3900
Text Label 9100 3700 2    60   ~ 0
ADDR12
Text Label 9100 3800 2    60   ~ 0
ADDR13
Text Label 9100 3900 2    60   ~ 0
ADDR14
Text Label 9100 4000 2    60   ~ 0
ADDR15
Entry Bus Bus
	9200 2350 9300 2450
Entry Bus Bus
	9200 2550 9300 2450
Entry Wire Line
	7500 1150 7400 1250
Entry Wire Line
	7500 1050 7400 1150
Entry Wire Line
	7500 950  7400 1050
Entry Wire Line
	7500 850  7400 950 
Text Label 7500 850  0    60   ~ 0
A0
Text Label 7500 950  0    60   ~ 0
A1
Text Label 7500 1050 0    60   ~ 0
A2
Text Label 7500 1150 0    60   ~ 0
A3
Entry Wire Line
	7500 2100 7400 2200
Entry Wire Line
	7500 2000 7400 2100
Entry Wire Line
	7500 1900 7400 2000
Entry Wire Line
	7500 1800 7400 1900
Text Label 7500 1800 0    60   ~ 0
A4
Text Label 7500 1900 0    60   ~ 0
A5
Text Label 7500 2000 0    60   ~ 0
A6
Text Label 7500 2100 0    60   ~ 0
A7
Entry Wire Line
	7500 2750 7400 2650
Entry Wire Line
	7500 2850 7400 2750
Entry Wire Line
	7500 2950 7400 2850
Entry Wire Line
	7500 3050 7400 2950
Text Label 7500 2750 0    60   ~ 0
A8
Text Label 7500 2850 0    60   ~ 0
A9
Text Label 7500 2950 0    60   ~ 0
A10
Text Label 7500 3050 0    60   ~ 0
A11
Entry Wire Line
	7500 3700 7400 3600
Entry Wire Line
	7500 3800 7400 3700
Entry Wire Line
	7500 3900 7400 3800
Entry Wire Line
	7500 4000 7400 3900
Text Label 7500 3700 0    60   ~ 0
A12
Text Label 7500 3800 0    60   ~ 0
A13
Text Label 7500 3900 0    60   ~ 0
A14
Text Label 7500 4000 0    60   ~ 0
A15
Entry Bus Bus
	7400 1400 7300 1500
Entry Bus Bus
	7400 1600 7300 1500
Entry Wire Line
	6800 3700 6900 3600
Entry Wire Line
	6800 3800 6900 3700
Entry Wire Line
	6800 3900 6900 3800
Entry Wire Line
	6800 4000 6900 3900
Text Label 6800 2500 2    60   ~ 0
A0
Text Label 6800 2600 2    60   ~ 0
A1
Text Label 6800 2700 2    60   ~ 0
A2
Text Label 6800 2800 2    60   ~ 0
A3
Entry Wire Line
	6800 3300 6900 3200
Entry Wire Line
	6800 3400 6900 3300
Entry Wire Line
	6800 3500 6900 3400
Entry Wire Line
	6800 3600 6900 3500
Text Label 6800 2900 2    60   ~ 0
A4
Text Label 6800 3000 2    60   ~ 0
A5
Text Label 6800 3100 2    60   ~ 0
A6
Text Label 6800 3200 2    60   ~ 0
A7
Entry Wire Line
	6800 2900 6900 2800
Entry Wire Line
	6800 3000 6900 2900
Entry Wire Line
	6800 3100 6900 3000
Entry Wire Line
	6800 3200 6900 3100
Text Label 6800 3300 2    60   ~ 0
A8
Text Label 6800 3400 2    60   ~ 0
A9
Text Label 6800 3500 2    60   ~ 0
A10
Text Label 6800 3600 2    60   ~ 0
A11
Entry Wire Line
	6800 2500 6900 2400
Entry Wire Line
	6800 2600 6900 2500
Entry Wire Line
	6800 2700 6900 2600
Entry Wire Line
	6800 2800 6900 2700
Text Label 6800 3700 2    60   ~ 0
A12
Text Label 6800 3800 2    60   ~ 0
A13
Text Label 6800 3900 2    60   ~ 0
A14
Text Label 6800 4000 2    60   ~ 0
A15
Entry Bus Bus
	7000 1500 6900 1600
$Comp
L 74HCT245 U13
U 1 1 5ADE24A9
P 8300 5350
F 0 "U13" H 8550 5850 60  0000 C CNN
F 1 "74HCT245" H 8550 4850 60  0000 C CNN
F 2 "" H 8300 4700 60  0001 C CNN
F 3 "" H 8300 4700 60  0001 C CNN
	1    8300 5350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR09
U 1 1 5ADE2895
P 8300 6100
F 0 "#PWR09" H 8300 5850 50  0001 C CNN
F 1 "GND" H 8300 5950 50  0000 C CNN
F 2 "" H 8300 6100 50  0001 C CNN
F 3 "" H 8300 6100 50  0001 C CNN
	1    8300 6100
	1    0    0    -1  
$EndComp
Entry Wire Line
	9150 5000 9250 5100
Text Label 9150 5000 2    60   ~ 0
DATA0
Entry Wire Line
	9150 5100 9250 5200
Text Label 9150 5100 2    60   ~ 0
DATA1
Entry Wire Line
	9150 5200 9250 5300
Text Label 9150 5200 2    60   ~ 0
DATA2
Entry Wire Line
	9150 5300 9250 5400
Text Label 9150 5300 2    60   ~ 0
DATA3
Entry Wire Line
	9150 5400 9250 5500
Text Label 9150 5400 2    60   ~ 0
DATA4
Entry Wire Line
	9150 5500 9250 5600
Text Label 9150 5500 2    60   ~ 0
DATA5
Entry Wire Line
	9150 5600 9250 5700
Text Label 9150 5600 2    60   ~ 0
DATA6
Entry Wire Line
	9150 5700 9250 5800
Text Label 9150 5700 2    60   ~ 0
DATA7
$Comp
L 74HCT244 U14
U 1 1 5ADE2CBE
P 2950 2000
F 0 "U14" H 2800 2300 60  0000 C CNN
F 1 "74HCT244" H 2650 1700 60  0000 C CNN
F 2 "" H 2950 1600 60  0001 C CNN
F 3 "" H 2950 1600 60  0001 C CNN
	1    2950 2000
	-1   0    0    -1  
$EndComp
$Comp
L 74HCT244 U14
U 2 1 5ADE2D35
P 2950 3150
F 0 "U14" H 2800 3450 60  0000 C CNN
F 1 "74HCT244" H 2650 2800 60  0000 C CNN
F 2 "" H 2950 2750 60  0001 C CNN
F 3 "" H 2950 2750 60  0001 C CNN
	2    2950 3150
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR010
U 1 1 5ADE2D77
P 2950 2550
F 0 "#PWR010" H 2950 2300 50  0001 C CNN
F 1 "GND" H 2950 2400 50  0000 C CNN
F 2 "" H 2950 2550 50  0001 C CNN
F 3 "" H 2950 2550 50  0001 C CNN
	1    2950 2550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR011
U 1 1 5ADE2D9A
P 2950 3700
F 0 "#PWR011" H 2950 3450 50  0001 C CNN
F 1 "GND" H 2950 3550 50  0000 C CNN
F 2 "" H 2950 3700 50  0001 C CNN
F 3 "" H 2950 3700 50  0001 C CNN
	1    2950 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 850  9100 850 
Wire Wire Line
	9100 950  8750 950 
Wire Wire Line
	8750 1050 9100 1050
Wire Wire Line
	9100 1150 8750 1150
Wire Wire Line
	8750 1800 9100 1800
Wire Wire Line
	9100 1900 8750 1900
Wire Wire Line
	8750 2000 9100 2000
Wire Wire Line
	9100 2100 8750 2100
Wire Wire Line
	8750 2750 9100 2750
Wire Wire Line
	9100 2850 8750 2850
Wire Wire Line
	8750 2950 9100 2950
Wire Wire Line
	9100 3050 8750 3050
Wire Wire Line
	8750 3700 9100 3700
Wire Wire Line
	9100 3800 8750 3800
Wire Wire Line
	8750 3900 9100 3900
Wire Wire Line
	9100 4000 8750 4000
Wire Bus Line
	9300 2450 9550 2450
Wire Bus Line
	9200 2550 9200 3950
Wire Bus Line
	9200 900  9200 2350
Wire Wire Line
	7850 850  7500 850 
Wire Wire Line
	7500 950  7850 950 
Wire Wire Line
	7850 1050 7500 1050
Wire Wire Line
	7500 1150 7850 1150
Wire Wire Line
	7850 1800 7500 1800
Wire Wire Line
	7500 1900 7850 1900
Wire Wire Line
	7850 2000 7500 2000
Wire Wire Line
	7500 2100 7850 2100
Wire Wire Line
	7850 2750 7500 2750
Wire Wire Line
	7500 2850 7850 2850
Wire Wire Line
	7850 2950 7500 2950
Wire Wire Line
	7500 3050 7850 3050
Wire Wire Line
	7850 3700 7500 3700
Wire Wire Line
	7500 3800 7850 3800
Wire Wire Line
	7850 3900 7500 3900
Wire Wire Line
	7500 4000 7850 4000
Wire Bus Line
	7000 1500 7300 1500
Wire Bus Line
	7400 1600 7400 3950
Wire Bus Line
	7400 900  7400 1400
Wire Bus Line
	7400 1900 7400 2200
Wire Bus Line
	7400 2100 7400 2000
Wire Wire Line
	6450 2500 6800 2500
Wire Wire Line
	6800 2600 6450 2600
Wire Wire Line
	6450 2700 6800 2700
Wire Wire Line
	6800 2800 6450 2800
Wire Wire Line
	6450 2900 6800 2900
Wire Wire Line
	6800 3000 6450 3000
Wire Wire Line
	6450 3100 6800 3100
Wire Wire Line
	6800 3200 6450 3200
Wire Wire Line
	6450 3300 6800 3300
Wire Wire Line
	6800 3400 6450 3400
Wire Wire Line
	6450 3500 6800 3500
Wire Wire Line
	6800 3600 6450 3600
Wire Wire Line
	6450 3700 6800 3700
Wire Wire Line
	6800 3800 6450 3800
Wire Wire Line
	6450 3900 6800 3900
Wire Wire Line
	6800 4000 6450 4000
Wire Bus Line
	6900 1600 6900 3950
Wire Wire Line
	8300 6000 8300 6100
Wire Wire Line
	9150 5000 8850 5000
Wire Wire Line
	9150 5100 8850 5100
Wire Wire Line
	9150 5300 8850 5300
Wire Wire Line
	9150 5400 8850 5400
Wire Wire Line
	9150 5500 8850 5500
Wire Wire Line
	9150 5600 8850 5600
Wire Wire Line
	9150 5700 8850 5700
Wire Bus Line
	9250 5000 9250 5950
Wire Wire Line
	3900 2500 5250 2500
Wire Wire Line
	3900 1850 3400 1850
Wire Wire Line
	3800 2700 5250 2700
Wire Wire Line
	3800 1950 3400 1950
Wire Wire Line
	3700 2800 5250 2800
Wire Wire Line
	5250 2900 3700 2900
Wire Wire Line
	3700 3000 3400 3000
Wire Wire Line
	5250 3000 3800 3000
Wire Wire Line
	3800 3100 3400 3100
Wire Wire Line
	3400 3200 5250 3200
Wire Wire Line
	3400 2150 3600 2150
Wire Wire Line
	3600 2150 3600 2500
Wire Wire Line
	2950 2450 2950 2550
Wire Wire Line
	3600 2500 2950 2500
Connection ~ 2950 2500
Wire Wire Line
	2950 3600 2950 3700
Wire Wire Line
	2950 3650 3600 3650
Wire Wire Line
	3600 3650 3600 3300
Wire Wire Line
	3600 3300 3400 3300
Connection ~ 2950 3650
Text HLabel 1100 2850 0    60   Output ~ 0
~M1
Text HLabel 1100 2950 0    60   Output ~ 0
~MREQ
Text HLabel 1100 3050 0    60   Output ~ 0
~IORQ
NoConn ~ 2500 2150
Wire Wire Line
	1800 3000 2500 3000
Wire Wire Line
	2500 3100 1800 3100
Wire Wire Line
	2500 3200 1800 3200
NoConn ~ 2500 3300
Text HLabel 1100 3150 0    60   Output ~ 0
~RD
Text HLabel 1100 3250 0    60   Output ~ 0
~WR
Text HLabel 1100 3350 0    60   Output ~ 0
~RFSH
Entry Bus Bus
	9250 5950 9350 6050
Wire Bus Line
	9350 6050 9600 6050
Text HLabel 9600 6050 2    60   BiDi ~ 0
DATA[0..7]
$Comp
L 74HC74 U15
U 1 1 5ADE4A9C
P 2650 5300
F 0 "U15" H 2800 5650 60  0000 C CNN
F 1 "74HC74" H 2850 4900 60  0000 C CNN
F 2 "" H 2650 5100 60  0001 C CNN
F 3 "" H 2650 5100 60  0001 C CNN
	1    2650 5300
	1    0    0    -1  
$EndComp
$Comp
L 74HC74 U15
U 2 1 5ADE4B12
P 3850 5300
F 0 "U15" H 4000 5650 60  0000 C CNN
F 1 "74HC74" H 4050 4900 60  0000 C CNN
F 2 "" H 3850 5100 60  0001 C CNN
F 3 "" H 3850 5100 60  0001 C CNN
	2    3850 5300
	1    0    0    -1  
$EndComp
Text HLabel 1100 3450 0    60   Output ~ 0
CLK
Wire Wire Line
	1800 5200 2250 5200
Text Label 1800 5200 0    60   ~ 0
~M1
Wire Wire Line
	3050 5200 3450 5200
Wire Wire Line
	3150 5200 3150 4450
Wire Wire Line
	3150 4450 4000 4450
Wire Wire Line
	4000 4450 4000 3550
Wire Wire Line
	4000 3550 5250 3550
Connection ~ 3150 5200
Wire Wire Line
	2200 6000 3350 6000
Wire Wire Line
	3350 6000 3350 5400
Wire Wire Line
	3350 5400 3450 5400
Connection ~ 2200 5400
NoConn ~ 3050 5400
NoConn ~ 4250 5400
Wire Wire Line
	4250 5200 4350 5200
Wire Wire Line
	4350 5200 4350 4650
Wire Wire Line
	4350 4650 2650 4650
Wire Wire Line
	2650 4650 2650 4800
$Comp
L VCC #PWR012
U 1 1 5ADE5567
P 3850 5900
F 0 "#PWR012" H 3850 5750 50  0001 C CNN
F 1 "VCC" H 3850 6050 50  0000 C CNN
F 2 "" H 3850 5900 50  0001 C CNN
F 3 "" H 3850 5900 50  0001 C CNN
	1    3850 5900
	-1   0    0    1   
$EndComp
Wire Wire Line
	3850 5900 3850 5800
Wire Wire Line
	3850 4800 3850 4750
Wire Wire Line
	3850 4750 3250 4750
Wire Wire Line
	3250 5900 3250 4750
Wire Wire Line
	1800 5900 3250 5900
Wire Wire Line
	2650 5900 2650 5800
Text HLabel 1100 2600 0    60   Input ~ 0
~EXTWAIT
Connection ~ 2650 5900
Wire Wire Line
	1800 4550 5250 4550
Wire Wire Line
	1800 5400 2250 5400
$Comp
L VCC #PWR013
U 1 1 5ADE6215
P 4100 3400
F 0 "#PWR013" H 4100 3250 50  0001 C CNN
F 1 "VCC" H 4100 3550 50  0000 C CNN
F 2 "" H 4100 3400 50  0001 C CNN
F 3 "" H 4100 3400 50  0001 C CNN
	1    4100 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 3400 4100 4250
Wire Wire Line
	4100 3850 5250 3850
Wire Wire Line
	4100 4250 5250 4250
Connection ~ 4100 3850
NoConn ~ 5250 4350
Text HLabel 1100 3550 0    60   Output ~ 0
~RESET
Wire Wire Line
	1800 4050 5250 4050
NoConn ~ 5250 3400
Text HLabel 1100 2400 0    60   Input ~ 0
~VDPINT
Text HLabel 1100 2500 0    60   Input ~ 0
~EXTINT
$Comp
L 74HC08 U16
U 1 2 5ADE6F22
P 3450 1100
F 0 "U16" H 3450 1300 50  0000 C CNN
F 1 "74HC08" H 3450 900 50  0000 C CNN
F 2 "" H 3450 1100 50  0001 C CNN
F 3 "" H 3450 1100 50  0001 C CNN
	1    3450 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 1000 3000 1000
Wire Wire Line
	1800 1200 3000 1200
Wire Wire Line
	5250 3750 4200 3750
Wire Wire Line
	4200 3750 4200 1100
Wire Wire Line
	4200 1100 3850 1100
Text Label 4000 1100 0    60   ~ 0
~INT
Entry Wire Line
	6800 4200 6900 4300
Text Label 6800 4200 2    60   ~ 0
D0
Entry Wire Line
	6800 4300 6900 4400
Text Label 6800 4300 2    60   ~ 0
D1
Entry Wire Line
	6800 4400 6900 4500
Text Label 6800 4400 2    60   ~ 0
D2
Entry Wire Line
	6800 4500 6900 4600
Text Label 6800 4500 2    60   ~ 0
D3
Entry Wire Line
	6800 4600 6900 4700
Text Label 6800 4600 2    60   ~ 0
D4
Entry Wire Line
	6800 4700 6900 4800
Text Label 6800 4700 2    60   ~ 0
D5
Entry Wire Line
	6800 4800 6900 4900
Text Label 6800 4800 2    60   ~ 0
D6
Entry Wire Line
	6800 4900 6900 5000
Text Label 6800 4900 2    60   ~ 0
D7
Wire Wire Line
	6800 4200 6450 4200
Wire Wire Line
	6800 4300 6450 4300
Wire Wire Line
	6800 4400 6450 4400
Wire Wire Line
	6800 4500 6450 4500
Wire Wire Line
	6800 4600 6450 4600
Wire Wire Line
	6800 4700 6450 4700
Wire Wire Line
	6800 4800 6450 4800
Wire Wire Line
	6800 4900 6450 4900
Wire Bus Line
	6900 4200 6900 5950
$Comp
L 74HC08 U16
U 2 2 5ADE819D
P 6500 1100
F 0 "U16" H 6500 1300 50  0000 C CNN
F 1 "74HC08" H 6500 900 50  0000 C CNN
F 2 "" H 6500 1100 50  0001 C CNN
F 3 "" H 6500 1100 50  0001 C CNN
	2    6500 1100
	1    0    0    -1  
$EndComp
$Comp
L 74HC32 U17
U 1 2 5ADE80AE
P 5400 1700
F 0 "U17" H 5400 1900 50  0000 C CNN
F 1 "74HC32" H 5400 1500 50  0000 C CNN
F 2 "" H 5400 1700 50  0001 C CNN
F 3 "" H 5400 1700 50  0001 C CNN
	1    5400 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 1700 5950 1200
Wire Wire Line
	5950 1200 6050 1200
Wire Wire Line
	4650 1000 6050 1000
Wire Wire Line
	6900 1100 7150 1100
Wire Wire Line
	7150 1100 7150 4600
Wire Wire Line
	7150 4600 8300 4600
Entry Bus Bus
	6900 5950 7000 6050
Entry Wire Line
	7500 5000 7400 5100
Text Label 7500 5000 0    60   ~ 0
D0
Entry Wire Line
	7500 5100 7400 5200
Text Label 7500 5100 0    60   ~ 0
D1
Entry Wire Line
	7500 5200 7400 5300
Text Label 7500 5200 0    60   ~ 0
D2
Entry Wire Line
	7500 5300 7400 5400
Text Label 7500 5300 0    60   ~ 0
D3
Entry Wire Line
	7500 5400 7400 5500
Text Label 7500 5400 0    60   ~ 0
D4
Entry Wire Line
	7500 5500 7400 5600
Text Label 7500 5500 0    60   ~ 0
D5
Entry Wire Line
	7500 5600 7400 5700
Text Label 7500 5600 0    60   ~ 0
D6
Entry Wire Line
	7500 5700 7400 5800
Text Label 7500 5700 0    60   ~ 0
D7
Wire Wire Line
	7500 5000 7750 5000
Wire Wire Line
	7500 5100 7750 5100
Wire Wire Line
	7500 5200 7750 5200
Wire Wire Line
	7500 5300 7750 5300
Wire Wire Line
	7500 5400 7750 5400
Wire Wire Line
	7500 5500 7750 5500
Wire Wire Line
	7500 5600 7750 5600
Wire Wire Line
	7500 5700 7750 5700
Wire Bus Line
	7400 5000 7400 5950
Entry Bus Bus
	7400 5950 7300 6050
Wire Bus Line
	7300 6050 7000 6050
Wire Wire Line
	8300 4600 8300 4700
Wire Wire Line
	9150 5200 8850 5200
Entry Wire Line
	1700 900  1800 1000
Entry Wire Line
	1700 1100 1800 1200
Text Label 1800 1000 0    60   ~ 0
~EXTINT
Text Label 1800 1200 0    60   ~ 0
~VDPINT
Entry Wire Line
	1700 1750 1800 1850
Entry Wire Line
	1700 1850 1800 1950
Entry Wire Line
	1700 1950 1800 2050
Text Label 1800 1850 0    60   ~ 0
~M1
Text Label 1800 1950 0    60   ~ 0
~MREQ
Text Label 1800 2050 0    60   ~ 0
~IORQ
Text Label 4650 1800 0    60   ~ 0
~M1
Text Label 4650 1600 0    60   ~ 0
~IORQ
Text Label 4650 1000 0    60   ~ 0
~RD
Wire Wire Line
	4650 1600 5000 1600
Wire Wire Line
	5000 1800 4650 1800
Entry Wire Line
	4550 1700 4650 1800
Entry Wire Line
	4550 1500 4650 1600
Entry Wire Line
	4550 900  4650 1000
Text Label 1800 3000 0    60   ~ 0
~RD
Text Label 1800 3100 0    60   ~ 0
~WR
Text Label 1800 3200 0    60   ~ 0
~RFSH
Text Label 1800 4550 0    60   ~ 0
CLK
Text Label 1800 4050 0    60   ~ 0
~RESET
Text Label 1800 5900 0    60   ~ 0
~EXTWAIT
Entry Wire Line
	1700 2900 1800 3000
Entry Wire Line
	1700 3000 1800 3100
Entry Wire Line
	1700 3100 1800 3200
Entry Wire Line
	1700 4450 1800 4550
Entry Wire Line
	1700 3950 1800 4050
Entry Wire Line
	1700 5100 1800 5200
Entry Wire Line
	1700 5800 1800 5900
Wire Bus Line
	1700 800  1700 6300
Entry Bus Bus
	1700 800  1800 700 
Entry Bus Bus
	4450 700  4550 800 
Wire Bus Line
	1800 700  4450 700 
Wire Bus Line
	4550 800  4550 1750
Text Label 1800 5400 0    60   ~ 0
CLK
Entry Wire Line
	1700 5300 1800 5400
Wire Wire Line
	2200 5400 2200 6000
Entry Wire Line
	1700 3350 1600 3450
Entry Wire Line
	1700 3450 1600 3550
Entry Wire Line
	1700 2300 1600 2400
Entry Wire Line
	1700 2400 1600 2500
Entry Wire Line
	1700 2500 1600 2600
Wire Wire Line
	1600 3450 1100 3450
Wire Wire Line
	1100 3550 1600 3550
Wire Wire Line
	1100 2400 1600 2400
Wire Wire Line
	1600 2500 1100 2500
Wire Wire Line
	1100 2600 1600 2600
Text Label 1600 3450 2    60   ~ 0
CLK
Text Label 1600 3550 2    60   ~ 0
~RESET
Text Label 1600 2400 2    60   ~ 0
~VDPINT
Text Label 1600 2500 2    60   ~ 0
~EXTINT
Text Label 1600 2600 2    60   ~ 0
~EXTWAIT
Entry Wire Line
	1700 2750 1600 2850
Entry Wire Line
	1700 2850 1600 2950
Entry Wire Line
	1700 2950 1600 3050
Entry Wire Line
	1700 3050 1600 3150
Entry Wire Line
	1700 3150 1600 3250
Wire Wire Line
	1600 2850 1100 2850
Wire Wire Line
	1100 2950 1600 2950
Wire Wire Line
	1100 3050 1600 3050
Wire Wire Line
	1600 3150 1100 3150
Wire Wire Line
	1100 3250 1600 3250
Text Label 1600 2850 2    60   ~ 0
~M1
Text Label 1600 2950 2    60   ~ 0
~MREQ
Text Label 1600 3050 2    60   ~ 0
~IORQ
Text Label 1600 3150 2    60   ~ 0
~RD
Text Label 1600 3250 2    60   ~ 0
~WR
Entry Wire Line
	1700 3250 1600 3350
Wire Wire Line
	1100 3350 1600 3350
Text Label 1600 3350 2    60   ~ 0
~RFSH
Wire Wire Line
	5950 1700 5850 1700
Wire Wire Line
	3400 2050 3700 2050
Wire Wire Line
	3700 2050 3700 2800
Wire Wire Line
	3800 2700 3800 1950
Wire Wire Line
	3900 1850 3900 2500
Wire Wire Line
	1800 1850 2500 1850
Wire Wire Line
	1800 2050 2500 2050
Wire Wire Line
	3700 2900 3700 3000
Wire Wire Line
	3800 3000 3800 3100
Wire Wire Line
	3900 3200 3900 3200
Wire Wire Line
	1800 1950 2500 1950
$Comp
L Crystal Y3
U 1 1 5AEC8D3F
P 6200 6150
F 0 "Y3" H 6200 6250 50  0000 C CNN
F 1 "3.58Mhz" H 6200 6050 50  0000 C CNN
F 2 "" H 6200 6150 50  0001 C CNN
F 3 "" H 6200 6150 50  0001 C CNN
	1    6200 6150
	-1   0    0    -1  
$EndComp
$Comp
L CP C6
U 1 1 5AEC8D46
P 6650 6450
F 0 "C6" H 6660 6520 50  0000 L CNN
F 1 "22pF" H 6660 6370 50  0000 L CNN
F 2 "" H 6650 6450 50  0001 C CNN
F 3 "" H 6650 6450 50  0001 C CNN
	1    6650 6450
	-1   0    0    -1  
$EndComp
$Comp
L CP C5
U 1 1 5AEC8D4D
P 5750 6450
F 0 "C5" H 5760 6520 50  0000 L CNN
F 1 "22pF" H 5760 6370 50  0000 L CNN
F 2 "" H 5750 6450 50  0001 C CNN
F 3 "" H 5750 6450 50  0001 C CNN
	1    5750 6450
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR014
U 1 1 5AEC8D54
P 6200 6700
F 0 "#PWR014" H 6200 6450 50  0001 C CNN
F 1 "GND" H 6200 6550 50  0000 C CNN
F 2 "" H 6200 6700 50  0001 C CNN
F 3 "" H 6200 6700 50  0001 C CNN
	1    6200 6700
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6650 6650 6650 6550
Wire Wire Line
	5750 6650 6650 6650
Wire Wire Line
	6200 6650 6200 6700
Wire Wire Line
	5750 6650 5750 6550
Connection ~ 6200 6650
Wire Wire Line
	6100 6150 5750 6150
Wire Wire Line
	5750 6050 5750 6350
Wire Wire Line
	6650 6150 6300 6150
Wire Wire Line
	6650 5300 6650 6350
$Comp
L 4069 U38
U 3 1 5AEC8D67
P 6200 5650
F 0 "U38" H 6200 5800 50  0000 C CNN
F 1 "4069" H 6200 5500 50  0000 C CNN
F 2 "" H 6200 5650 50  0001 C CNN
F 3 "" H 6200 5650 50  0001 C CNN
	3    6200 5650
	-1   0    0    -1  
$EndComp
$Comp
L 4069 U38
U 4 1 5AEC8D6E
P 5350 5650
F 0 "U38" H 5350 5800 50  0000 C CNN
F 1 "4069" H 5350 5500 50  0000 C CNN
F 2 "" H 5350 5650 50  0001 C CNN
F 3 "" H 5350 5650 50  0001 C CNN
	4    5350 5650
	-1   0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 5AEC8D75
P 5750 5900
F 0 "R4" V 5830 5900 50  0000 C CNN
F 1 "1K" V 5750 5900 50  0000 C CNN
F 2 "" V 5680 5900 50  0001 C CNN
F 3 "" H 5750 5900 50  0001 C CNN
	1    5750 5900
	-1   0    0    -1  
$EndComp
Connection ~ 5750 6150
Wire Wire Line
	5750 5300 5750 5750
Wire Wire Line
	5650 5650 5900 5650
Connection ~ 5750 5650
Wire Wire Line
	6500 5650 6650 5650
Connection ~ 6650 6150
$Comp
L R R3
U 1 1 5AEC8D84
P 6200 5300
F 0 "R3" V 6100 5300 50  0000 C CNN
F 1 "1M" V 6200 5300 50  0000 C CNN
F 2 "" V 6130 5300 50  0001 C CNN
F 3 "" H 6200 5300 50  0001 C CNN
	1    6200 5300
	0    -1   1    0   
$EndComp
Wire Wire Line
	5750 5300 6050 5300
Wire Wire Line
	6350 5300 6650 5300
Connection ~ 6650 5650
Wire Wire Line
	5050 5650 4450 5650
Wire Wire Line
	4450 5650 4450 4550
Connection ~ 4450 4550
$Comp
L 4069 U38
U 1 1 5AECC864
P 3050 6800
F 0 "U38" H 3050 6950 50  0000 C CNN
F 1 "4069" H 3050 6650 50  0000 C CNN
F 2 "" H 3050 6800 50  0001 C CNN
F 3 "" H 3050 6800 50  0001 C CNN
	1    3050 6800
	1    0    0    -1  
$EndComp
$Comp
L 4069 U38
U 2 1 5AECCAD0
P 3850 6800
F 0 "U38" H 3850 6950 50  0000 C CNN
F 1 "4069" H 3850 6650 50  0000 C CNN
F 2 "" H 3850 6800 50  0001 C CNN
F 3 "" H 3850 6800 50  0001 C CNN
	2    3850 6800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 6800 3550 6800
$Comp
L CP C7
U 1 1 5AECCD48
P 2500 7000
F 0 "C7" H 2510 7070 50  0000 L CNN
F 1 "1uF" H 2510 6920 50  0000 L CNN
F 2 "" H 2500 7000 50  0001 C CNN
F 3 "" H 2500 7000 50  0001 C CNN
	1    2500 7000
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR015
U 1 1 5AECCDA7
P 2500 6400
F 0 "#PWR015" H 2500 6250 50  0001 C CNN
F 1 "VCC" H 2500 6550 50  0000 C CNN
F 2 "" H 2500 6400 50  0001 C CNN
F 3 "" H 2500 6400 50  0001 C CNN
	1    2500 6400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR016
U 1 1 5AECCE4F
P 2500 7200
F 0 "#PWR016" H 2500 6950 50  0001 C CNN
F 1 "GND" H 2500 7050 50  0000 C CNN
F 2 "" H 2500 7200 50  0001 C CNN
F 3 "" H 2500 7200 50  0001 C CNN
	1    2500 7200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 7100 2500 7200
Wire Wire Line
	2500 6700 2500 6900
Wire Wire Line
	2500 6800 2750 6800
$Comp
L R_Small R5
U 1 1 5AECD1D0
P 2500 6600
F 0 "R5" V 2400 6600 50  0000 L CNN
F 1 "10K" V 2600 6550 50  0000 L CNN
F 2 "" H 2500 6600 50  0001 C CNN
F 3 "" H 2500 6600 50  0001 C CNN
	1    2500 6600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 6400 2500 6500
Connection ~ 2500 6800
$Comp
L GND #PWR017
U 1 1 5AECD789
P 4350 7200
F 0 "#PWR017" H 4350 6950 50  0001 C CNN
F 1 "GND" H 4350 7050 50  0000 C CNN
F 2 "" H 4350 7200 50  0001 C CNN
F 3 "" H 4350 7200 50  0001 C CNN
	1    4350 7200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 7100 4350 7200
Wire Wire Line
	4150 6800 4550 6800
Wire Wire Line
	4350 6800 4350 6900
$Comp
L Cap C8
U 1 1 5AECD8D5
P 4350 7000
F 0 "C8" H 4360 7070 50  0000 L CNN
F 1 "22pF" H 4360 6920 50  0000 L CNN
F 2 "" H 4350 7000 50  0001 C CNN
F 3 "" H 4350 7000 50  0001 C CNN
	1    4350 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 6800 4550 4050
Connection ~ 4550 4050
Connection ~ 4350 6800
$EndSCHEMATC
