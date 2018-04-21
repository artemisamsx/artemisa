EESchema Schematic File Version 2
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
LIBS:artemsx
LIBS:artemsx-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 3
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
L HM62256BLP-7 U?
U 1 1 5AD4D5C2
P 8150 2900
F 0 "U?" H 7850 3800 50  0000 C CNN
F 1 "HM62256BLP-7" H 8150 2100 50  0000 C CNN
F 2 "DIP28" H 8150 2900 50  0001 C CIN
F 3 "" H 8150 2900 50  0001 C CNN
	1    8150 2900
	1    0    0    -1  
$EndComp
$Comp
L 74HCT04 U?
U 1 1 5AD4D5C9
P 2950 5700
F 0 "U?" H 3100 5800 50  0000 C CNN
F 1 "74HCT04" H 3150 5600 50  0000 C CNN
F 2 "" H 2950 5700 50  0001 C CNN
F 3 "" H 2950 5700 50  0001 C CNN
	1    2950 5700
	1    0    0    1   
$EndComp
Entry Wire Line
	2250 4150 2350 4250
Text Label 2350 4250 3    60   ~ 0
ADDR15
Wire Bus Line
	1600 4150 10600 4150
Wire Bus Line
	10250 4150 10850 4150
Wire Wire Line
	8650 3250 8700 3250
Wire Wire Line
	8700 3250 8700 4800
Text Notes 1650 4100 0    60   ~ 0
Address bus
Wire Bus Line
	1700 1800 9300 1800
Text Notes 1750 1750 0    60   ~ 0
Data bus
$Comp
L HM62256BLP-7 U?
U 1 1 5AD4D643
P 4400 2900
F 0 "U?" H 4100 3800 50  0000 C CNN
F 1 "HM62256BLP-7" H 4400 2050 50  0000 C CNN
F 2 "DIP28" H 4400 2900 50  0001 C CIN
F 3 "" H 4400 2900 50  0001 C CNN
	1    4400 2900
	1    0    0    -1  
$EndComp
Entry Wire Line
	3300 3550 3400 3450
Entry Wire Line
	3300 3450 3400 3350
Entry Wire Line
	3300 3350 3400 3250
Entry Wire Line
	3300 3250 3400 3150
Entry Wire Line
	3300 3150 3400 3050
Entry Wire Line
	3300 3050 3400 2950
Entry Wire Line
	3300 2950 3400 2850
Entry Wire Line
	3300 2850 3400 2750
Entry Wire Line
	3300 2750 3400 2650
Entry Wire Line
	3300 2650 3400 2550
Entry Wire Line
	3300 2550 3400 2450
Entry Wire Line
	3300 2450 3400 2350
Entry Wire Line
	3300 2350 3400 2250
Entry Wire Line
	3300 2250 3400 2150
Entry Wire Line
	3400 3550 3300 3650
Text Label 3400 3550 0    60   ~ 0
ADDR14
Text Label 3400 3450 0    60   ~ 0
ADDR13
Text Label 3400 3350 0    60   ~ 0
ADDR12
Text Label 3400 3250 0    60   ~ 0
ADDR11
Text Label 3400 3150 0    60   ~ 0
ADDR10
Text Label 3400 3050 0    60   ~ 0
ADDR9
Text Label 3400 2950 0    60   ~ 0
ADDR8
Text Label 3400 2850 0    60   ~ 0
ADDR7
Text Label 3400 2750 0    60   ~ 0
ADDR6
Text Label 3400 2650 0    60   ~ 0
ADDR5
Text Label 3400 2550 0    60   ~ 0
ADDR4
Text Label 3400 2450 0    60   ~ 0
ADDR3
Text Label 3400 2350 0    60   ~ 0
ADDR2
Text Label 3400 2250 0    60   ~ 0
ADDR1
Text Label 3400 2150 0    60   ~ 0
ADDR0
Entry Wire Line
	5650 2850 5550 2750
Entry Wire Line
	5650 2750 5550 2650
Entry Wire Line
	5650 2650 5550 2550
Entry Wire Line
	5650 2550 5550 2450
Entry Wire Line
	5650 2450 5550 2350
Entry Wire Line
	5650 2350 5550 2250
Entry Wire Line
	5650 2250 5550 2150
Entry Wire Line
	5550 2850 5650 2950
Text Label 5550 2150 2    60   ~ 0
DATA0
Text Label 5550 2250 2    60   ~ 0
DATA1
Text Label 5550 2350 2    60   ~ 0
DATA2
Text Label 5550 2450 2    60   ~ 0
DATA3
Text Label 5550 2550 2    60   ~ 0
DATA4
Text Label 5550 2650 2    60   ~ 0
DATA5
Text Label 5550 2750 2    60   ~ 0
DATA6
Text Label 5550 2850 2    60   ~ 0
DATA7
Wire Wire Line
	2350 4250 2350 5700
Wire Wire Line
	3400 5700 3750 5700
Wire Wire Line
	2350 5700 2500 5700
Wire Wire Line
	1600 4700 3750 4700
Wire Wire Line
	2350 4900 3750 4900
Connection ~ 2350 4900
Wire Wire Line
	2700 5500 3750 5500
Connection ~ 2700 4700
Wire Wire Line
	4600 4800 4950 4800
Wire Wire Line
	4950 4800 4950 3250
Wire Wire Line
	4950 3250 4900 3250
Wire Wire Line
	4900 3100 5050 3100
Wire Wire Line
	5050 3100 5050 3800
Wire Wire Line
	1600 3800 8800 3800
Wire Wire Line
	4900 3000 5150 3000
Wire Wire Line
	5150 3000 5150 3900
Wire Wire Line
	1600 3900 8900 3900
Wire Wire Line
	4600 5600 5550 5600
Wire Wire Line
	5550 5600 5550 4800
Wire Wire Line
	5550 4800 8700 4800
Wire Wire Line
	8800 3800 8800 3100
Wire Wire Line
	8800 3100 8650 3100
Wire Wire Line
	8900 3900 8900 3000
Wire Wire Line
	8900 3000 8650 3000
Text HLabel 1600 4150 0    60   Input ~ 0
ADDR[0..15]
Wire Wire Line
	3400 2150 3900 2150
Wire Wire Line
	3900 2250 3400 2250
Wire Wire Line
	3400 2350 3900 2350
Wire Wire Line
	3900 2450 3400 2450
Wire Wire Line
	3400 2550 3900 2550
Wire Wire Line
	3900 2650 3400 2650
Wire Wire Line
	3400 2750 3900 2750
Wire Wire Line
	3900 2850 3400 2850
Wire Wire Line
	3400 2950 3900 2950
Wire Wire Line
	3900 3050 3400 3050
Wire Wire Line
	3400 3150 3900 3150
Wire Wire Line
	3400 3250 3900 3250
Wire Wire Line
	3900 3350 3400 3350
Wire Wire Line
	3400 3450 3900 3450
Wire Wire Line
	3900 3550 3400 3550
Entry Bus Bus
	3300 4050 3200 4150
Wire Bus Line
	3300 2050 3300 4050
Entry Wire Line
	7050 3550 7150 3450
Entry Wire Line
	7050 3450 7150 3350
Entry Wire Line
	7050 3350 7150 3250
Entry Wire Line
	7050 3250 7150 3150
Entry Wire Line
	7050 3150 7150 3050
Entry Wire Line
	7050 3050 7150 2950
Entry Wire Line
	7050 2950 7150 2850
Entry Wire Line
	7050 2850 7150 2750
Entry Wire Line
	7050 2750 7150 2650
Entry Wire Line
	7050 2650 7150 2550
Entry Wire Line
	7050 2550 7150 2450
Entry Wire Line
	7050 2450 7150 2350
Entry Wire Line
	7050 2350 7150 2250
Entry Wire Line
	7050 2250 7150 2150
Entry Wire Line
	7150 3550 7050 3650
Text Label 7150 3550 0    60   ~ 0
ADDR14
Text Label 7150 3450 0    60   ~ 0
ADDR13
Text Label 7150 3350 0    60   ~ 0
ADDR12
Text Label 7150 3250 0    60   ~ 0
ADDR11
Text Label 7150 3150 0    60   ~ 0
ADDR10
Text Label 7150 3050 0    60   ~ 0
ADDR9
Text Label 7150 2950 0    60   ~ 0
ADDR8
Text Label 7150 2850 0    60   ~ 0
ADDR7
Text Label 7150 2750 0    60   ~ 0
ADDR6
Text Label 7150 2650 0    60   ~ 0
ADDR5
Text Label 7150 2550 0    60   ~ 0
ADDR4
Text Label 7150 2450 0    60   ~ 0
ADDR3
Text Label 7150 2350 0    60   ~ 0
ADDR2
Text Label 7150 2250 0    60   ~ 0
ADDR1
Text Label 7150 2150 0    60   ~ 0
ADDR0
Wire Wire Line
	7150 2150 7650 2150
Wire Wire Line
	7650 2250 7150 2250
Wire Wire Line
	7150 2350 7650 2350
Wire Wire Line
	7650 2450 7150 2450
Wire Wire Line
	7150 2550 7650 2550
Wire Wire Line
	7650 2650 7150 2650
Wire Wire Line
	7150 2750 7650 2750
Wire Wire Line
	7650 2850 7150 2850
Wire Wire Line
	7150 2950 7650 2950
Wire Wire Line
	7650 3050 7150 3050
Wire Wire Line
	7150 3150 7650 3150
Wire Wire Line
	7150 3250 7650 3250
Wire Wire Line
	7650 3350 7150 3350
Wire Wire Line
	7150 3450 7650 3450
Wire Wire Line
	7650 3550 7150 3550
Entry Bus Bus
	7050 4050 6950 4150
Wire Bus Line
	7050 2050 7050 4050
Wire Bus Line
	7050 2250 7050 3550
Wire Wire Line
	4900 2150 5550 2150
Wire Wire Line
	5550 2250 4900 2250
Wire Wire Line
	4900 2350 5550 2350
Wire Wire Line
	5550 2450 4900 2450
Wire Wire Line
	5550 2550 4900 2550
Wire Wire Line
	5550 2650 4900 2650
Wire Wire Line
	5550 2750 4900 2750
Wire Wire Line
	4900 2850 5550 2850
Entry Bus Bus
	5650 1900 5550 1800
Wire Bus Line
	5650 1900 5650 3050
Entry Wire Line
	9400 2850 9300 2750
Entry Wire Line
	9400 2750 9300 2650
Entry Wire Line
	9400 2650 9300 2550
Entry Wire Line
	9400 2550 9300 2450
Entry Wire Line
	9400 2450 9300 2350
Entry Wire Line
	9400 2350 9300 2250
Entry Wire Line
	9400 2250 9300 2150
Entry Wire Line
	9300 2850 9400 2950
Text Label 9300 2150 2    60   ~ 0
DATA0
Text Label 9300 2250 2    60   ~ 0
DATA1
Text Label 9300 2350 2    60   ~ 0
DATA2
Text Label 9300 2450 2    60   ~ 0
DATA3
Text Label 9300 2550 2    60   ~ 0
DATA4
Text Label 9300 2650 2    60   ~ 0
DATA5
Text Label 9300 2750 2    60   ~ 0
DATA6
Text Label 9300 2850 2    60   ~ 0
DATA7
Wire Wire Line
	8650 2150 9300 2150
Wire Wire Line
	9300 2250 8650 2250
Wire Wire Line
	8650 2350 9300 2350
Wire Wire Line
	9300 2450 8650 2450
Wire Wire Line
	9300 2550 8650 2550
Wire Wire Line
	9300 2650 8650 2650
Wire Wire Line
	9300 2750 8650 2750
Wire Wire Line
	8650 2850 9300 2850
Wire Bus Line
	9400 1900 9400 3050
Wire Bus Line
	9400 2350 9400 2850
Wire Bus Line
	3300 3650 3300 3550
Text HLabel 1700 1800 0    60   BiDi ~ 0
DATA[0..7]
Text HLabel 1600 3800 0    60   Input ~ 0
~WR
Text HLabel 1600 3900 0    60   Input ~ 0
~RD
Connection ~ 5050 3800
Connection ~ 5150 3900
Text HLabel 1600 4700 0    60   Input ~ 0
~SLTSEL3
Wire Wire Line
	2700 4700 2700 5500
Entry Bus Bus
	9400 1900 9300 1800
$Comp
L 74HC32 U?
U 1 1 5AD910AC
P 4150 4800
F 0 "U?" H 4150 5000 50  0000 C CNN
F 1 "74HC32" H 4150 4600 50  0000 C CNN
F 2 "" H 4150 4800 50  0001 C CNN
F 3 "" H 4150 4800 50  0001 C CNN
	1    4150 4800
	1    0    0    -1  
$EndComp
$Comp
L 74HC32 U?
U 2 1 5AD910F1
P 4150 5600
F 0 "U?" H 4150 5800 50  0000 C CNN
F 1 "74HC32" H 4150 5400 50  0000 C CNN
F 2 "" H 4150 5600 50  0001 C CNN
F 3 "" H 4150 5600 50  0001 C CNN
	2    4150 5600
	1    0    0    -1  
$EndComp
$EndSCHEMATC
