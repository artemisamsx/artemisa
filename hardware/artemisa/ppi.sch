EESchema Schematic File Version 4
LIBS:artemisa-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 12
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
L artemisa:82C55A U19
U 1 1 5AE22077
P 4500 5000
F 0 "U19" H 4850 6450 60  0000 C CNN
F 1 "82C55A" H 4800 3700 60  0000 C CNN
F 2 "artemisa:DIP-40_600" H 4700 5550 60  0001 C CNN
F 3 "" H 4700 5550 60  0001 C CNN
	1    4500 5000
	1    0    0    -1  
$EndComp
Text HLabel 3000 3600 0    60   BiDi ~ 0
DATA[0..7]
Wire Bus Line
	3000 3600 3350 3600
Text Label 3550 3700 0    60   ~ 0
DATA0
Entry Wire Line
	3450 3800 3550 3700
Wire Wire Line
	3550 3700 3900 3700
Text Label 3550 3800 0    60   ~ 0
DATA1
Entry Wire Line
	3450 3900 3550 3800
Wire Wire Line
	3550 3800 3900 3800
Text Label 3550 3900 0    60   ~ 0
DATA2
Entry Wire Line
	3450 4000 3550 3900
Wire Wire Line
	3550 3900 3900 3900
Text Label 3550 4000 0    60   ~ 0
DATA3
Entry Wire Line
	3450 4100 3550 4000
Wire Wire Line
	3550 4000 3900 4000
Text Label 3550 4100 0    60   ~ 0
DATA4
Entry Wire Line
	3450 4200 3550 4100
Wire Wire Line
	3550 4100 3900 4100
Text Label 3550 4200 0    60   ~ 0
DATA5
Entry Wire Line
	3450 4300 3550 4200
Wire Wire Line
	3550 4200 3900 4200
Text Label 3550 4300 0    60   ~ 0
DATA6
Entry Wire Line
	3450 4400 3550 4300
Wire Wire Line
	3550 4300 3900 4300
Text Label 3550 4400 0    60   ~ 0
DATA7
Entry Wire Line
	3450 4500 3550 4400
Wire Wire Line
	3550 4400 3900 4400
Entry Bus Bus
	3350 3600 3450 3700
Text HLabel 3000 1350 0    60   Input ~ 0
A14
Text HLabel 3000 1450 0    60   Input ~ 0
A15
$Comp
L power:GND #PWR020
U 1 1 5AE225E1
P 3700 6200
F 0 "#PWR020" H 3700 5950 50  0001 C CNN
F 1 "GND" H 3700 6050 50  0000 C CNN
F 2 "" H 3700 6200 50  0001 C CNN
F 3 "" H 3700 6200 50  0001 C CNN
	1    3700 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 6050 3700 6050
Wire Wire Line
	3700 6050 3700 6200
Text HLabel 3000 5850 0    60   Input ~ 0
~PPIRD
Text HLabel 3000 5950 0    60   Input ~ 0
~PPIWR
Text HLabel 3000 6700 0    60   Input ~ 0
RESET
Wire Wire Line
	3900 6150 3850 6150
Wire Wire Line
	3850 6150 3850 6700
$Comp
L artemisa:74HC153 U20
U 1 1 5AE23FCD
P 6300 2350
F 0 "U20" H 6550 3000 60  0000 C CNN
F 1 "74HC153" H 6600 1700 60  0000 C CNN
F 2 "artemisa:DIP-16_300" H 6300 2200 60  0001 C CNN
F 3 "" H 6300 2200 60  0001 C CNN
	1    6300 2350
	1    0    0    -1  
$EndComp
Entry Wire Line
	5450 2050 5550 1950
Text Label 5550 1950 0    60   ~ 0
PA0
Wire Wire Line
	5550 1950 5800 1950
Entry Wire Line
	5450 2150 5550 2050
Text Label 5550 2050 0    60   ~ 0
PA2
Wire Wire Line
	5550 2050 5800 2050
Entry Wire Line
	5450 2250 5550 2150
Text Label 5550 2150 0    60   ~ 0
PA4
Wire Wire Line
	5550 2150 5800 2150
Entry Wire Line
	5450 2350 5550 2250
Text Label 5550 2250 0    60   ~ 0
PA6
Wire Wire Line
	5550 2250 5800 2250
Entry Wire Line
	5450 2500 5550 2400
Text Label 5550 2400 0    60   ~ 0
PA1
Wire Wire Line
	5550 2400 5800 2400
Entry Wire Line
	5450 2600 5550 2500
Text Label 5550 2500 0    60   ~ 0
PA3
Wire Wire Line
	5550 2500 5800 2500
Entry Wire Line
	5450 2700 5550 2600
Text Label 5550 2600 0    60   ~ 0
PA5
Wire Wire Line
	5550 2600 5800 2600
Entry Wire Line
	5450 2800 5550 2700
Text Label 5550 2700 0    60   ~ 0
PA7
Wire Wire Line
	5550 2700 5800 2700
Entry Wire Line
	5450 4300 5350 4400
Text Label 5350 3700 2    60   ~ 0
PA0
Wire Wire Line
	5350 3700 5100 3700
Entry Wire Line
	5450 4200 5350 4300
Text Label 5350 3800 2    60   ~ 0
PA1
Wire Wire Line
	5350 3800 5100 3800
Entry Wire Line
	5450 4100 5350 4200
Text Label 5350 3900 2    60   ~ 0
PA2
Wire Wire Line
	5350 3900 5100 3900
Entry Wire Line
	5450 4000 5350 4100
Text Label 5350 4000 2    60   ~ 0
PA3
Wire Wire Line
	5350 4000 5100 4000
Entry Wire Line
	5450 3900 5350 4000
Text Label 5350 4100 2    60   ~ 0
PA4
Wire Wire Line
	5350 4100 5100 4100
Entry Wire Line
	5450 3800 5350 3900
Text Label 5350 4200 2    60   ~ 0
PA5
Wire Wire Line
	5350 4200 5100 4200
Entry Wire Line
	5450 3700 5350 3800
Text Label 5350 4300 2    60   ~ 0
PA6
Wire Wire Line
	5350 4300 5100 4300
Entry Wire Line
	5450 3600 5350 3700
Text Label 5350 4400 2    60   ~ 0
PA7
Wire Wire Line
	5350 4400 5100 4400
Text Label 3300 1350 0    60   ~ 0
A14
Text Label 3300 1450 0    60   ~ 0
A15
$Comp
L artemisa:74HC139 U21
U 1 1 5AE32F51
P 7600 2100
F 0 "U21" H 7600 2400 60  0000 C CNN
F 1 "74HC139" H 7600 1800 60  0000 C CNN
F 2 "artemisa:DIP-16_300" H 7600 1950 60  0001 C CNN
F 3 "" H 7600 1950 60  0001 C CNN
	1    7600 2100
	1    0    0    -1  
$EndComp
Text HLabel 8400 1950 2    60   Output ~ 0
~SLTSL0
Text HLabel 8400 2050 2    60   Output ~ 0
~SLTSL1
Text HLabel 8400 2150 2    60   Output ~ 0
~SLTSL2
Text HLabel 8400 2250 2    60   Output ~ 0
~SLTSL3
Wire Wire Line
	8000 1950 8400 1950
Wire Wire Line
	8400 2050 8000 2050
Wire Wire Line
	8000 2150 8400 2150
Wire Wire Line
	8400 2250 8000 2250
Text HLabel 3000 1250 0    60   Input ~ 0
~SLTSLEN
Wire Wire Line
	7200 2250 6950 2250
Wire Wire Line
	6250 3200 6250 3150
Wire Wire Line
	6350 3200 6350 3150
Connection ~ 6250 3200
Wire Wire Line
	6800 1950 7200 1950
Wire Wire Line
	6800 2050 7200 2050
Entry Wire Line
	5600 4450 5500 4550
Entry Wire Line
	5600 4550 5500 4650
Entry Wire Line
	5600 4650 5500 4750
Entry Wire Line
	5600 4750 5500 4850
Entry Wire Line
	5600 4850 5500 4950
Entry Wire Line
	5600 4950 5500 5050
Entry Wire Line
	5600 5050 5500 5150
Entry Wire Line
	5600 5150 5500 5250
Text Label 5500 4550 2    60   ~ 0
KBCOL0
Text Label 5500 4650 2    60   ~ 0
KBCOL1
Text Label 5500 4750 2    60   ~ 0
KBCOL2
Text Label 5500 4850 2    60   ~ 0
KBCOL3
Text Label 5500 4950 2    60   ~ 0
KBCOL4
Text Label 5500 5050 2    60   ~ 0
KBCOL5
Text Label 5500 5150 2    60   ~ 0
KBCOL6
Text Label 5500 5250 2    60   ~ 0
KBCOL7
Wire Wire Line
	5100 4550 5500 4550
Wire Wire Line
	5500 4650 5100 4650
Wire Wire Line
	5100 4750 5500 4750
Wire Wire Line
	5500 4850 5100 4850
Wire Wire Line
	5100 4950 5500 4950
Wire Wire Line
	5500 5050 5100 5050
Wire Wire Line
	5100 5150 5500 5150
Wire Wire Line
	5500 5250 5100 5250
Entry Bus Bus
	5600 4400 5700 4300
Text HLabel 8400 4300 2    60   Input ~ 0
KBCOL[0..7]
Wire Bus Line
	5700 4300 8400 4300
Entry Wire Line
	6100 5400 6200 5500
Entry Wire Line
	6100 5500 6200 5600
Entry Wire Line
	6100 5600 6200 5700
Entry Wire Line
	6100 5700 6200 5800
Text Label 6100 5400 2    60   ~ 0
KBROW0
Text Label 6100 5500 2    60   ~ 0
KBROW1
Text Label 6100 5600 2    60   ~ 0
KBROW2
Text Label 6100 5700 2    60   ~ 0
KBROW3
Wire Wire Line
	5100 5400 6100 5400
Wire Wire Line
	6100 5500 5100 5500
Wire Wire Line
	5100 5600 6100 5600
Wire Wire Line
	6100 5700 5100 5700
Entry Bus Bus
	6200 5350 6300 5250
Text HLabel 8400 5250 2    60   Output ~ 0
KBROW[0..3]
Wire Bus Line
	6300 5250 8400 5250
NoConn ~ 5100 6050
Text HLabel 8400 6150 2    60   Output ~ 0
BEEP
NoConn ~ 5100 5850
Text HLabel 8400 5950 2    60   Output ~ 0
CASOUT
Wire Wire Line
	8400 5950 5100 5950
Wire Wire Line
	5100 6150 8400 6150
Wire Wire Line
	6250 3200 6350 3200
Wire Wire Line
	3000 5200 3900 5200
Wire Wire Line
	3000 5100 3900 5100
Wire Wire Line
	6250 1550 6250 1350
Wire Wire Line
	6250 1350 3000 1350
Wire Wire Line
	6350 1550 6350 1450
Wire Wire Line
	6350 1450 3000 1450
Text HLabel 3000 5100 0    60   Input ~ 0
A0
Text HLabel 3000 5200 0    60   Input ~ 0
A1
Wire Wire Line
	3000 6700 3850 6700
Text HLabel 3000 3200 0    60   Input ~ 0
~PPIRDY
Wire Wire Line
	3000 5850 3900 5850
Wire Wire Line
	3000 5950 3900 5950
Wire Wire Line
	3000 1250 6950 1250
Wire Wire Line
	6950 1250 6950 2250
Wire Wire Line
	3000 3200 6250 3200
Wire Bus Line
	6200 5350 6200 5850
Wire Bus Line
	5600 4400 5600 5200
Wire Bus Line
	3450 3700 3450 4600
Wire Bus Line
	5450 2050 5450 4400
$EndSCHEMATC
