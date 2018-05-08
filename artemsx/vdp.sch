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
Sheet 3 11
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
L TMS99x8 U10
U 1 1 5AD4E709
P 3400 3400
F 0 "U10" H 3400 4800 60  0000 C CNN
F 1 "TMS99x8" H 3400 2350 60  0000 C CNN
F 2 "" H 3400 3950 60  0001 C CNN
F 3 "" H 3400 3950 60  0001 C CNN
	1    3400 3400
	1    0    0    -1  
$EndComp
$Comp
L 74HCT04 U5
U 1 1 5AD4EB0E
P 5400 2350
F 0 "U5" H 5550 2450 50  0000 C CNN
F 1 "74HCT04" H 5600 2250 50  0000 C CNN
F 2 "" H 5400 2350 50  0001 C CNN
F 3 "" H 5400 2350 50  0001 C CNN
	1    5400 2350
	1    0    0    -1  
$EndComp
$Comp
L 74HCT04 U5
U 2 1 5AD4EB35
P 5400 2850
F 0 "U5" H 5550 2950 50  0000 C CNN
F 1 "74HCT04" H 5600 2750 50  0000 C CNN
F 2 "" H 5400 2850 50  0001 C CNN
F 3 "" H 5400 2850 50  0001 C CNN
	2    5400 2850
	1    0    0    -1  
$EndComp
$Comp
L 74HCT04 U5
U 3 1 5AD4EB64
P 5450 3950
F 0 "U5" H 5600 4050 50  0000 C CNN
F 1 "74HCT04" H 5650 3850 50  0000 C CNN
F 2 "" H 5450 3950 50  0001 C CNN
F 3 "" H 5450 3950 50  0001 C CNN
	3    5450 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 2350 5100 2350
Text Label 5850 2350 2    60   ~ 0
WR
Wire Wire Line
	5700 2350 6000 2350
Wire Wire Line
	5850 2350 5850 2600
Wire Wire Line
	5850 2600 4950 2600
Wire Wire Line
	4950 2600 4950 2850
Wire Wire Line
	4950 2850 5100 2850
Connection ~ 5850 2350
Text Label 5850 2850 2    60   ~ 0
RD
Wire Wire Line
	5700 2850 6100 2850
Wire Wire Line
	4850 3950 5150 3950
Wire Wire Line
	5750 3950 6800 3950
$Comp
L 74HCT04 U5
U 4 1 5AD4EE70
P 5450 4450
F 0 "U5" H 5600 4550 50  0000 C CNN
F 1 "74HCT04" H 5650 4350 50  0000 C CNN
F 2 "" H 5450 4450 50  0001 C CNN
F 3 "" H 5450 4450 50  0001 C CNN
	4    5450 4450
	1    0    0    -1  
$EndComp
$Comp
L 74HCT04 U5
U 5 1 5AD4EE91
P 5450 4900
F 0 "U5" H 5600 5000 50  0000 C CNN
F 1 "74HCT04" H 5650 4800 50  0000 C CNN
F 2 "" H 5450 4900 50  0001 C CNN
F 3 "" H 5450 4900 50  0001 C CNN
	5    5450 4900
	1    0    0    -1  
$EndComp
$Comp
L 74HCT04 U5
U 6 1 5AD4EEB8
P 5450 5350
F 0 "U5" H 5600 5450 50  0000 C CNN
F 1 "74HCT04" H 5650 5250 50  0000 C CNN
F 2 "" H 5450 5350 50  0001 C CNN
F 3 "" H 5450 5350 50  0001 C CNN
	6    5450 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 4450 5900 4450
Wire Wire Line
	5900 4450 5900 4650
Wire Wire Line
	5900 4650 4950 4650
Wire Wire Line
	4950 4650 4950 4900
Wire Wire Line
	4950 4900 5150 4900
Wire Wire Line
	5750 4900 5900 4900
Wire Wire Line
	5900 4900 5900 5100
Wire Wire Line
	5900 5100 4950 5100
Wire Wire Line
	4950 5100 4950 5350
Wire Wire Line
	4950 5350 5150 5350
Text Label 5100 4450 2    60   ~ 0
~CAS
Wire Wire Line
	4750 4450 5150 4450
Wire Wire Line
	5750 5350 6800 5350
$Comp
L 74HCT574 U6
U 1 1 5AD4F318
P 7350 2150
F 0 "U6" H 7350 2750 60  0000 C CNN
F 1 "74HCT574" H 7350 1550 60  0000 C CNN
F 2 "" H 7350 1900 60  0001 C CNN
F 3 "" H 7350 1900 60  0001 C CNN
	1    7350 2150
	1    0    0    -1  
$EndComp
$Comp
L 74HCT574 U7
U 1 1 5AD4F39B
P 7350 3550
F 0 "U7" H 7350 4150 60  0000 C CNN
F 1 "74HCT574" H 7350 2950 60  0000 C CNN
F 2 "" H 7350 3300 60  0001 C CNN
F 3 "" H 7350 3300 60  0001 C CNN
	1    7350 3550
	1    0    0    -1  
$EndComp
$Comp
L 74HCT574 U8
U 1 1 5AD4F3DF
P 7350 4950
F 0 "U8" H 7350 5550 60  0000 C CNN
F 1 "74HCT574" H 7350 4350 60  0000 C CNN
F 2 "" H 7350 4700 60  0001 C CNN
F 3 "" H 7350 4700 60  0001 C CNN
	1    7350 4950
	1    0    0    -1  
$EndComp
Text Label 6400 1650 0    60   ~ 0
AD0
Text Label 6400 1750 0    60   ~ 0
AD1
Text Label 6400 1850 0    60   ~ 0
AD2
Text Label 6400 1950 0    60   ~ 0
AD3
Text Label 6400 2050 0    60   ~ 0
AD4
Text Label 6400 2150 0    60   ~ 0
AD5
Text Label 6400 2250 0    60   ~ 0
AD6
Text Label 6400 2350 0    60   ~ 0
AD7
Wire Wire Line
	6400 1650 6800 1650
Wire Wire Line
	6800 1750 6400 1750
Wire Wire Line
	6400 1850 6800 1850
Wire Wire Line
	6800 1950 6400 1950
Wire Wire Line
	6400 2050 6800 2050
Wire Wire Line
	6800 2150 6400 2150
Wire Wire Line
	6400 2250 6800 2250
Wire Wire Line
	6800 2350 6400 2350
Text Label 6400 3050 0    60   ~ 0
AD0
Text Label 6400 3150 0    60   ~ 0
AD1
Text Label 6400 3250 0    60   ~ 0
AD2
Text Label 6400 3350 0    60   ~ 0
AD3
Text Label 6400 3450 0    60   ~ 0
AD4
Text Label 6400 3550 0    60   ~ 0
AD5
Text Label 6400 3650 0    60   ~ 0
AD6
Text Label 6400 3750 0    60   ~ 0
AD7
Wire Wire Line
	6400 3050 6800 3050
Wire Wire Line
	6800 3150 6400 3150
Wire Wire Line
	6400 3250 6800 3250
Wire Wire Line
	6800 3350 6400 3350
Wire Wire Line
	6400 3450 6800 3450
Wire Wire Line
	6800 3550 6400 3550
Wire Wire Line
	6400 3650 6800 3650
Wire Wire Line
	6800 3750 6400 3750
Text Label 6400 4450 0    60   ~ 0
AD0
Text Label 6400 4550 0    60   ~ 0
AD1
Text Label 6400 4650 0    60   ~ 0
AD2
Text Label 6400 4750 0    60   ~ 0
AD3
Text Label 6400 4850 0    60   ~ 0
AD4
Text Label 6400 4950 0    60   ~ 0
AD5
Text Label 6400 5050 0    60   ~ 0
AD6
Text Label 6400 5150 0    60   ~ 0
AD7
Wire Wire Line
	6400 4450 6800 4450
Wire Wire Line
	6800 4550 6400 4550
Wire Wire Line
	6400 4650 6800 4650
Wire Wire Line
	6800 4750 6400 4750
Wire Wire Line
	6400 4850 6800 4850
Wire Wire Line
	6800 4950 6400 4950
Wire Wire Line
	6400 5050 6800 5050
Wire Wire Line
	6800 5150 6400 5150
Text Label 4450 2150 2    60   ~ 0
AD0
Text Label 4450 2250 2    60   ~ 0
AD1
Text Label 4450 2350 2    60   ~ 0
AD2
Text Label 4450 2450 2    60   ~ 0
AD3
Text Label 4450 2550 2    60   ~ 0
AD4
Text Label 4450 2650 2    60   ~ 0
AD5
Text Label 4450 2750 2    60   ~ 0
AD6
Text Label 4450 2850 2    60   ~ 0
AD7
Wire Wire Line
	4450 2150 4050 2150
Wire Wire Line
	4050 2250 4450 2250
Wire Wire Line
	4450 2350 4050 2350
Wire Wire Line
	4050 2450 4450 2450
Wire Wire Line
	4450 2550 4050 2550
Wire Wire Line
	4050 2650 4450 2650
Wire Wire Line
	4450 2750 4050 2750
Wire Wire Line
	4050 2850 4450 2850
Text Label 8300 1650 2    60   ~ 0
VD0
Text Label 8300 1750 2    60   ~ 0
VD1
Text Label 8300 1850 2    60   ~ 0
VD2
Text Label 8300 1950 2    60   ~ 0
VD3
Text Label 8300 2050 2    60   ~ 0
VD4
Text Label 8300 2150 2    60   ~ 0
VD5
Text Label 8300 2250 2    60   ~ 0
VD6
Text Label 8300 2350 2    60   ~ 0
VD7
Wire Wire Line
	8300 1650 7900 1650
Wire Wire Line
	7900 1750 8300 1750
Wire Wire Line
	8300 1850 7900 1850
Wire Wire Line
	7900 1950 8300 1950
Wire Wire Line
	8300 2050 7900 2050
Wire Wire Line
	7900 2150 8300 2150
Wire Wire Line
	8300 2250 7900 2250
Wire Wire Line
	7900 2350 8300 2350
Text Label 4450 4050 2    60   ~ 0
VD0
Text Label 4450 3950 2    60   ~ 0
VD1
Text Label 4450 3850 2    60   ~ 0
VD2
Text Label 4450 3750 2    60   ~ 0
VD3
Text Label 4450 3650 2    60   ~ 0
VD4
Text Label 4450 3550 2    60   ~ 0
VD5
Text Label 4450 3450 2    60   ~ 0
VD6
Text Label 4450 3350 2    60   ~ 0
VD7
Wire Wire Line
	4450 4050 4050 4050
Wire Wire Line
	4050 3950 4450 3950
Wire Wire Line
	4450 3850 4050 3850
Wire Wire Line
	4050 3750 4450 3750
Wire Wire Line
	4450 3650 4050 3650
Wire Wire Line
	4050 3550 4450 3550
Wire Wire Line
	4450 3450 4050 3450
Wire Wire Line
	4050 3350 4450 3350
Text Label 4450 3100 2    60   ~ 0
~CAS
Text Label 4450 3000 2    60   ~ 0
~RAS
Wire Wire Line
	4050 3200 4650 3200
Wire Wire Line
	4050 3100 4750 3100
Wire Wire Line
	4050 3000 4850 3000
Text Label 10300 4550 2    60   ~ 0
RD
Text Label 10300 4450 2    60   ~ 0
WR
Text Label 10300 4350 2    60   ~ 0
~CAS
Wire Wire Line
	10100 4550 10400 4550
Wire Wire Line
	10100 4450 10500 4450
Wire Wire Line
	10100 4350 10600 4350
Text Label 10600 3500 2    60   ~ 0
VD0
Text Label 10600 3600 2    60   ~ 0
VD1
Text Label 10600 3700 2    60   ~ 0
VD2
Text Label 10600 3800 2    60   ~ 0
VD3
Text Label 10600 3900 2    60   ~ 0
VD4
Text Label 10600 4000 2    60   ~ 0
VD5
Text Label 10600 4100 2    60   ~ 0
VD6
Text Label 10600 4200 2    60   ~ 0
VD7
Wire Wire Line
	10600 3500 10100 3500
Wire Wire Line
	10100 3600 10600 3600
Wire Wire Line
	10600 3700 10100 3700
Wire Wire Line
	10100 3800 10600 3800
Wire Wire Line
	10600 3900 10100 3900
Wire Wire Line
	10100 4000 10600 4000
Wire Wire Line
	10600 4100 10100 4100
Wire Wire Line
	10100 4200 10600 4200
$Comp
L GND #PWR01
U 1 1 5AD50251
P 6700 5550
F 0 "#PWR01" H 6700 5300 50  0001 C CNN
F 1 "GND" H 6700 5400 50  0000 C CNN
F 2 "" H 6700 5550 50  0001 C CNN
F 3 "" H 6700 5550 50  0001 C CNN
	1    6700 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 5450 6700 5450
Wire Wire Line
	6700 5450 6700 5550
$Comp
L GND #PWR02
U 1 1 5AD5031D
P 6700 4150
F 0 "#PWR02" H 6700 3900 50  0001 C CNN
F 1 "GND" H 6700 4000 50  0000 C CNN
F 2 "" H 6700 4150 50  0001 C CNN
F 3 "" H 6700 4150 50  0001 C CNN
	1    6700 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 4050 6700 4050
Wire Wire Line
	6700 4050 6700 4150
Text Label 6400 3950 0    60   ~ 0
ROW
Text Label 6400 5350 0    60   ~ 0
COL
Text Label 6400 2650 0    60   ~ 0
RD
Wire Wire Line
	6100 2650 6800 2650
Text Label 6400 2550 0    60   ~ 0
WR
Wire Wire Line
	6000 2550 6800 2550
$Comp
L GND #PWR03
U 1 1 5AD50714
P 8800 5000
F 0 "#PWR03" H 8800 4750 50  0001 C CNN
F 1 "GND" H 8800 4850 50  0000 C CNN
F 2 "" H 8800 5000 50  0001 C CNN
F 3 "" H 8800 5000 50  0001 C CNN
	1    8800 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8900 4900 8800 4900
Wire Wire Line
	8800 4900 8800 5000
NoConn ~ 7900 3050
NoConn ~ 7900 4450
Wire Wire Line
	7900 3150 8650 3150
Wire Wire Line
	8650 3150 8650 3500
Wire Wire Line
	8650 3500 8900 3500
Wire Wire Line
	7900 3250 8550 3250
Wire Wire Line
	8550 3250 8550 3600
Wire Wire Line
	8550 3600 8900 3600
Wire Wire Line
	7900 3350 8450 3350
Wire Wire Line
	8450 3350 8450 3700
Wire Wire Line
	8450 3700 8900 3700
Wire Wire Line
	7900 3450 8350 3450
Wire Wire Line
	8350 3450 8350 3800
Wire Wire Line
	8350 3800 8900 3800
Wire Wire Line
	7900 3550 8250 3550
Wire Wire Line
	8250 3550 8250 3900
Wire Wire Line
	8250 3900 8900 3900
Wire Wire Line
	7900 3650 8150 3650
Wire Wire Line
	8150 3650 8150 4000
Wire Wire Line
	8150 4000 8900 4000
Wire Wire Line
	7900 3750 8050 3750
Wire Wire Line
	8050 3750 8050 4100
Wire Wire Line
	8050 4100 8900 4100
Wire Wire Line
	7900 4550 8050 4550
Wire Wire Line
	8050 4550 8050 4200
Wire Wire Line
	8050 4200 8900 4200
Wire Wire Line
	7900 4650 8150 4650
Wire Wire Line
	8150 4650 8150 4300
Wire Wire Line
	8150 4300 8900 4300
Wire Wire Line
	7900 4750 8250 4750
Wire Wire Line
	8250 4750 8250 4400
Wire Wire Line
	8250 4400 8900 4400
Wire Wire Line
	7900 4850 8350 4850
Wire Wire Line
	8350 4850 8350 4500
Wire Wire Line
	8350 4500 8900 4500
Wire Wire Line
	7900 4950 8450 4950
Wire Wire Line
	8450 4950 8450 4600
Wire Wire Line
	8450 4600 8900 4600
Wire Wire Line
	7900 5050 8550 5050
Wire Wire Line
	8550 5050 8550 4700
Wire Wire Line
	8550 4700 8900 4700
Wire Wire Line
	7900 5150 8650 5150
Wire Wire Line
	8650 5150 8650 4800
Wire Wire Line
	8650 4800 8900 4800
Entry Wire Line
	1750 2150 1850 2250
Entry Wire Line
	1750 2250 1850 2350
Entry Wire Line
	1750 2350 1850 2450
Entry Wire Line
	1750 2450 1850 2550
Entry Wire Line
	1750 2550 1850 2650
Entry Wire Line
	1750 2650 1850 2750
Entry Wire Line
	1750 2750 1850 2850
Entry Wire Line
	1850 2150 1750 2050
Text Label 1850 2150 0    60   ~ 0
DATA0
Text Label 1850 2250 0    60   ~ 0
DATA1
Text Label 1850 2350 0    60   ~ 0
DATA2
Text Label 1850 2450 0    60   ~ 0
DATA3
Text Label 1850 2550 0    60   ~ 0
DATA4
Text Label 1850 2650 0    60   ~ 0
DATA5
Text Label 1850 2750 0    60   ~ 0
DATA6
Text Label 1850 2850 0    60   ~ 0
DATA7
Wire Wire Line
	2750 2150 1850 2150
Wire Wire Line
	1850 2250 2750 2250
Wire Wire Line
	2750 2350 1850 2350
Wire Wire Line
	1850 2450 2750 2450
Wire Wire Line
	1850 2550 2750 2550
Wire Wire Line
	1850 2650 2750 2650
Wire Wire Line
	1850 2750 2750 2750
Wire Wire Line
	2750 2850 1850 2850
Wire Bus Line
	1750 1950 1750 2850
Text HLabel 1300 1850 0    60   BiDi ~ 0
DATA[0..7]
Entry Bus Bus
	1650 1850 1750 1950
Wire Bus Line
	1300 1850 1650 1850
NoConn ~ 4050 4200
NoConn ~ 4050 4300
Text HLabel 1300 3450 0    60   Input ~ 0
~RESET
Wire Wire Line
	1300 3450 2750 3450
Text HLabel 1300 3350 0    60   Output ~ 0
~VDPINT
Wire Wire Line
	2750 3350 1300 3350
Text HLabel 1300 2000 0    60   Input ~ 0
ADDR[0..15]
Entry Bus Bus
	1500 2000 1600 2100
Wire Bus Line
	1500 2000 1300 2000
Entry Wire Line
	1600 2900 1700 3000
Wire Bus Line
	1600 2900 1600 2100
Text Label 1700 3000 0    60   ~ 0
ADDR0
Wire Wire Line
	1700 3000 2750 3000
Wire Wire Line
	4850 3000 4850 3950
Wire Bus Line
	6300 1450 6300 5200
Wire Wire Line
	4750 3100 4750 6050
Text Label 5100 3950 2    60   ~ 0
~RAS
Wire Wire Line
	4650 3200 4650 2350
Wire Wire Line
	6100 2650 6100 5850
Wire Wire Line
	6000 2350 6000 5950
Wire Bus Line
	10700 3000 10700 6200
Entry Wire Line
	6300 1650 6400 1750
Entry Wire Line
	6300 1750 6400 1850
Entry Wire Line
	6300 1850 6400 1950
Entry Wire Line
	6300 1950 6400 2050
Entry Wire Line
	6300 2050 6400 2150
Entry Wire Line
	6300 2150 6400 2250
Entry Wire Line
	6300 2250 6400 2350
Entry Wire Line
	6400 1650 6300 1550
Entry Wire Line
	6300 3050 6400 3150
Entry Wire Line
	6300 3150 6400 3250
Entry Wire Line
	6300 3250 6400 3350
Entry Wire Line
	6300 3350 6400 3450
Entry Wire Line
	6300 3450 6400 3550
Entry Wire Line
	6300 3550 6400 3650
Entry Wire Line
	6300 3650 6400 3750
Entry Wire Line
	6400 3050 6300 2950
Entry Wire Line
	6300 4450 6400 4550
Entry Wire Line
	6300 4550 6400 4650
Entry Wire Line
	6300 4650 6400 4750
Entry Wire Line
	6300 4750 6400 4850
Entry Wire Line
	6300 4850 6400 4950
Entry Wire Line
	6300 4950 6400 5050
Entry Wire Line
	6300 5050 6400 5150
Entry Wire Line
	6400 4450 6300 4350
Entry Wire Line
	10600 3600 10700 3700
Entry Wire Line
	10600 3700 10700 3800
Entry Wire Line
	10600 3800 10700 3900
Entry Wire Line
	10600 3900 10700 4000
Entry Wire Line
	10600 4000 10700 4100
Entry Wire Line
	10600 4100 10700 4200
Entry Wire Line
	10600 4200 10700 4300
Entry Wire Line
	10700 3600 10600 3500
Wire Wire Line
	4750 6050 10600 6050
Wire Wire Line
	10600 6050 10600 4350
Connection ~ 4750 4450
Text Label 8250 6050 2    60   ~ 0
~CAS
Wire Wire Line
	6100 5850 10400 5850
Wire Wire Line
	10400 5850 10400 4550
Connection ~ 6100 2850
Wire Wire Line
	6000 5950 10500 5950
Wire Wire Line
	10500 5950 10500 4450
Connection ~ 6000 2550
Text Label 8250 5850 2    60   ~ 0
RD
Text Label 8250 5950 2    60   ~ 0
WR
Entry Bus Bus
	6200 1350 6300 1450
Entry Bus Bus
	4550 1450 4650 1350
Wire Bus Line
	6200 1350 4650 1350
Entry Bus Bus
	4550 6200 4650 6300
Wire Bus Line
	4650 6300 10600 6300
Entry Bus Bus
	10600 6300 10700 6200
Wire Bus Line
	4550 3300 4550 6200
Wire Bus Line
	4550 1450 4550 2900
Entry Wire Line
	4450 3450 4550 3550
Entry Wire Line
	4450 3550 4550 3650
Entry Wire Line
	4450 3650 4550 3750
Entry Wire Line
	4450 3750 4550 3850
Entry Wire Line
	4450 3850 4550 3950
Entry Wire Line
	4450 3950 4550 4050
Entry Wire Line
	4450 4050 4550 4150
Entry Wire Line
	4550 3450 4450 3350
Entry Wire Line
	4450 2750 4550 2650
Entry Wire Line
	4450 2650 4550 2550
Entry Wire Line
	4450 2550 4550 2450
Entry Wire Line
	4450 2450 4550 2350
Entry Wire Line
	4450 2350 4550 2250
Entry Wire Line
	4450 2250 4550 2150
Entry Wire Line
	4450 2150 4550 2050
Entry Wire Line
	4550 2750 4450 2850
$Comp
L HM62256ALP-10 U9
U 1 1 5ADB5BF6
P 9500 4250
F 0 "U9" H 9500 5100 60  0000 C CNN
F 1 "HM62256ALP-10" H 9500 3500 60  0000 C CNN
F 2 "" H 9500 4100 60  0001 C CNN
F 3 "" H 9500 4100 60  0001 C CNN
	1    9500 4250
	1    0    0    -1  
$EndComp
$Comp
L 74HC32 U1
U 3 2 5ADB5F06
P 1950 1000
F 0 "U1" H 1950 1200 50  0000 C CNN
F 1 "74HC32" H 1950 800 50  0000 C CNN
F 2 "" H 1950 1000 50  0001 C CNN
F 3 "" H 1950 1000 50  0001 C CNN
	3    1950 1000
	1    0    0    -1  
$EndComp
$Comp
L 74HC32 U1
U 4 2 5ADB5F49
P 1950 1500
F 0 "U1" H 1950 1700 50  0000 C CNN
F 1 "74HC32" H 1950 1300 50  0000 C CNN
F 2 "" H 1950 1500 50  0001 C CNN
F 3 "" H 1950 1500 50  0001 C CNN
	4    1950 1500
	1    0    0    -1  
$EndComp
Text HLabel 1300 900  0    60   Input ~ 0
~WR
Text HLabel 1300 1600 0    60   Input ~ 0
~RD
Text HLabel 1300 1250 0    60   Input ~ 0
~IOSL3
Wire Wire Line
	1300 1250 1400 1250
Wire Wire Line
	1400 1100 1400 1400
Wire Wire Line
	1400 1100 1550 1100
Wire Wire Line
	1400 1400 1550 1400
Connection ~ 1400 1250
Wire Wire Line
	1300 1600 1550 1600
Wire Wire Line
	1300 900  1550 900 
Text Label 2400 1000 0    60   ~ 0
~CSW
Text Label 2400 1500 0    60   ~ 0
~CSR
Wire Wire Line
	2400 1000 2650 1000
Wire Wire Line
	2400 1500 2550 1500
Wire Wire Line
	2750 3100 2650 3100
Wire Wire Line
	2650 3100 2650 1000
Wire Wire Line
	2750 3200 2550 3200
Wire Wire Line
	2550 3200 2550 1500
$Comp
L Crystal Y1
U 1 1 5ADB7F16
P 2350 4050
F 0 "Y1" V 2350 3900 50  0000 C CNN
F 1 "10.7386Mhz" V 2350 4350 50  0000 C CNN
F 2 "" H 2350 4050 50  0001 C CNN
F 3 "" H 2350 4050 50  0001 C CNN
	1    2350 4050
	0    1    1    0   
$EndComp
Wire Wire Line
	2050 3850 2750 3850
Wire Wire Line
	2350 3850 2350 3950
Wire Wire Line
	2350 4150 2350 4250
Wire Wire Line
	2050 4250 2750 4250
$Comp
L CP C1
U 1 1 5ADB87F4
P 1950 3850
F 0 "C1" V 1800 3800 50  0000 L CNN
F 1 "27pF" V 2000 3900 50  0000 L CNN
F 2 "" H 1950 3850 50  0001 C CNN
F 3 "" H 1950 3850 50  0001 C CNN
	1    1950 3850
	0    1    1    0   
$EndComp
$Comp
L CP C2
U 1 1 5ADB8852
P 1950 4250
F 0 "C2" V 1800 4200 50  0000 L CNN
F 1 "27pF" V 2000 4300 50  0000 L CNN
F 2 "" H 1950 4250 50  0001 C CNN
F 3 "" H 1950 4250 50  0001 C CNN
	1    1950 4250
	0    1    1    0   
$EndComp
$Comp
L GND #PWR04
U 1 1 5ADB888E
P 1650 4400
F 0 "#PWR04" H 1650 4150 50  0001 C CNN
F 1 "GND" H 1650 4250 50  0000 C CNN
F 2 "" H 1650 4400 50  0001 C CNN
F 3 "" H 1650 4400 50  0001 C CNN
	1    1650 4400
	1    0    0    -1  
$EndComp
Connection ~ 2350 3850
Connection ~ 2350 4250
Wire Wire Line
	1850 3850 1650 3850
Wire Wire Line
	1650 3850 1650 4400
Wire Wire Line
	1850 4250 1650 4250
Connection ~ 1650 4250
NoConn ~ 2750 3600
NoConn ~ 2750 3700
Entry Bus Bus
	10600 2900 10700 3000
Entry Bus Bus
	8400 2800 8500 2900
Wire Bus Line
	10600 2900 8500 2900
Wire Bus Line
	8400 1550 8400 2800
Entry Wire Line
	8300 1750 8400 1850
Entry Wire Line
	8300 1850 8400 1950
Entry Wire Line
	8300 1950 8400 2050
Entry Wire Line
	8300 2050 8400 2150
Entry Wire Line
	8300 2150 8400 2250
Entry Wire Line
	8300 2250 8400 2350
Entry Wire Line
	8300 2350 8400 2450
Entry Wire Line
	8400 1750 8300 1650
Text Notes 4700 1300 0    60   ~ 0
Internal Address/Dataout bus
Text Notes 7050 6250 0    60   ~ 0
Internal Data bus
Text Notes 9100 2850 0    60   ~ 0
Internal Data bus
Text Notes 1750 2700 1    60   ~ 0
Data bus
Text Notes 1600 2800 1    60   ~ 0
Address bus
$EndSCHEMATC
