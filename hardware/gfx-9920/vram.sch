EESchema Schematic File Version 4
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 7 7
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 2450 3000 0    50   Input ~ 0
A[0..13]
Text HLabel 8050 4100 2    50   Input ~ 0
RD
Text HLabel 8050 4000 2    50   Input ~ 0
WR
Text HLabel 8050 3900 2    50   Input ~ 0
~CAS
Text HLabel 8000 2800 2    50   Output ~ 0
RD[0..7]
Text Label 7400 3050 2    60   ~ 0
RD0
Text Label 7400 3150 2    60   ~ 0
RD1
Text Label 7400 3250 2    60   ~ 0
RD2
Text Label 7400 3350 2    60   ~ 0
RD3
Text Label 7400 3450 2    60   ~ 0
RD4
Text Label 7400 3550 2    60   ~ 0
RD5
Text Label 7400 3650 2    60   ~ 0
RD6
Text Label 7400 3750 2    60   ~ 0
RD7
Wire Wire Line
	7400 3050 6300 3050
Wire Wire Line
	5900 3150 6400 3150
Wire Wire Line
	7400 3250 6500 3250
Wire Wire Line
	5900 3350 6600 3350
Wire Wire Line
	7400 3450 6700 3450
Wire Wire Line
	5900 3550 6800 3550
Wire Wire Line
	7400 3650 6900 3650
Wire Wire Line
	5900 3750 7000 3750
Wire Wire Line
	4700 4450 4600 4450
Entry Wire Line
	7400 3650 7500 3550
Entry Wire Line
	7400 3550 7500 3450
Entry Wire Line
	7400 3450 7500 3350
Entry Wire Line
	7400 3350 7500 3250
Entry Wire Line
	7400 3250 7500 3150
Entry Wire Line
	7400 3150 7500 3050
Entry Wire Line
	7400 3050 7500 2950
Entry Wire Line
	7500 3650 7400 3750
$Comp
L artemisa:62256 U?
U 1 1 5F1604AE
P 5300 3800
AR Path="/5F1604AE" Ref="U?"  Part="1" 
AR Path="/5F15E93F/5F1604AE" Ref="U6"  Part="1" 
F 0 "U6" H 4950 4700 60  0000 C CNN
F 1 "62256" H 5800 4700 60  0000 C CNN
F 2 "artemisa:DIP-28_600" H 5300 3650 60  0001 C CNN
F 3 "" H 5300 3650 60  0001 C CNN
	1    5300 3800
	1    0    0    -1  
$EndComp
Entry Bus Bus
	3250 3000 3350 3100
Wire Wire Line
	5300 4700 5300 4750
Wire Wire Line
	5300 4750 4600 4750
Wire Wire Line
	4600 4450 4600 4750
Connection ~ 5300 4750
Wire Wire Line
	5300 4750 5300 4800
$Comp
L artemisa:Cap C?
U 1 1 5F1604BA
P 5500 2500
AR Path="/5F1604BA" Ref="C?"  Part="1" 
AR Path="/5F15E93F/5F1604BA" Ref="C4"  Part="1" 
F 0 "C4" V 5550 2350 50  0000 L CNN
F 1 "100nF" V 5450 2200 50  0000 L CNN
F 2 "artemisa:Disc_capacitor" H 5500 2500 50  0001 C CNN
F 3 "" H 5500 2500 50  0001 C CNN
	1    5500 2500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5950 2500 5600 2500
Wire Wire Line
	5300 2500 5400 2500
Connection ~ 5300 2500
Wire Wire Line
	5300 2500 5300 2800
Wire Wire Line
	5300 2400 5300 2500
Wire Wire Line
	5950 2500 5950 2600
$Comp
L artemisa:GND #PWR?
U 1 1 5F1604C6
P 5300 4800
AR Path="/5F1604C6" Ref="#PWR?"  Part="1" 
AR Path="/5F15E93F/5F1604C6" Ref="#PWR0112"  Part="1" 
F 0 "#PWR0112" H 5300 4700 60  0001 C CNN
F 1 "GND" H 5300 4900 60  0001 C CNN
F 2 "" H 5300 4800 60  0001 C CNN
F 3 "" H 5300 4800 60  0001 C CNN
	1    5300 4800
	1    0    0    -1  
$EndComp
$Comp
L artemisa:VCC #PWR?
U 1 1 5F1604CC
P 5300 2400
AR Path="/5F1604CC" Ref="#PWR?"  Part="1" 
AR Path="/5F15E93F/5F1604CC" Ref="#PWR0113"  Part="1" 
F 0 "#PWR0113" H 5300 2350 60  0001 C CNN
F 1 "VCC" H 5300 2650 60  0001 C CNN
F 2 "" H 5300 2400 60  0001 C CNN
F 3 "" H 5300 2400 60  0001 C CNN
	1    5300 2400
	1    0    0    -1  
$EndComp
$Comp
L artemisa:GND #PWR?
U 1 1 5F1604D2
P 5950 2600
AR Path="/5F1604D2" Ref="#PWR?"  Part="1" 
AR Path="/5F15E93F/5F1604D2" Ref="#PWR0114"  Part="1" 
F 0 "#PWR0114" H 5950 2500 60  0001 C CNN
F 1 "GND" H 5950 2700 60  0001 C CNN
F 2 "" H 5950 2600 60  0001 C CNN
F 3 "" H 5950 2600 60  0001 C CNN
	1    5950 2600
	1    0    0    -1  
$EndComp
Entry Wire Line
	3450 3150 3350 3250
Entry Wire Line
	3450 3250 3350 3350
Entry Wire Line
	3450 3350 3350 3450
Entry Wire Line
	3450 3450 3350 3550
Entry Wire Line
	3450 3550 3350 3650
Entry Wire Line
	3450 3650 3350 3750
Entry Wire Line
	3450 3750 3350 3850
Entry Wire Line
	3350 3150 3450 3050
Entry Wire Line
	3450 3950 3350 4050
Entry Wire Line
	3450 4050 3350 4150
Entry Wire Line
	3450 4150 3350 4250
Entry Wire Line
	3450 4250 3350 4350
Entry Wire Line
	3450 4350 3350 4450
Entry Wire Line
	3350 3950 3450 3850
Text Label 3450 3050 0    50   ~ 0
A0
Text Label 3450 3150 0    50   ~ 0
A1
Text Label 3450 3250 0    50   ~ 0
A2
Text Label 3450 3350 0    50   ~ 0
A3
Text Label 3450 3450 0    50   ~ 0
A4
Text Label 3450 3550 0    50   ~ 0
A5
Text Label 3450 3650 0    50   ~ 0
A6
Text Label 3450 3750 0    50   ~ 0
A7
Text Label 3450 3850 0    50   ~ 0
A8
Text Label 3450 3950 0    50   ~ 0
A9
Text Label 3450 4050 0    50   ~ 0
A10
Text Label 3450 4150 0    50   ~ 0
A11
Text Label 3450 4250 0    50   ~ 0
A12
Text Label 3450 4350 0    50   ~ 0
A13
Wire Wire Line
	3450 3050 4700 3050
Wire Wire Line
	3450 3150 4700 3150
Wire Wire Line
	3450 3250 4700 3250
Wire Wire Line
	3450 3350 4700 3350
Wire Wire Line
	3450 3450 4700 3450
Wire Wire Line
	3450 3550 4700 3550
Wire Wire Line
	3450 3650 4700 3650
Wire Wire Line
	3450 3750 4700 3750
Wire Wire Line
	3450 3850 4700 3850
Wire Wire Line
	3450 3950 4700 3950
Wire Wire Line
	3450 4050 4700 4050
Wire Wire Line
	3450 4150 4700 4150
Wire Wire Line
	3450 4250 4700 4250
Wire Wire Line
	3450 4350 4700 4350
Wire Bus Line
	3250 3000 2450 3000
Wire Wire Line
	5900 3900 8050 3900
Wire Wire Line
	5900 4000 8050 4000
Wire Wire Line
	5900 4100 8050 4100
Entry Bus Bus
	7600 2800 7500 2900
Wire Bus Line
	7600 2800 8000 2800
Text HLabel 8000 1700 2    50   Input ~ 0
WD[0..7]
Text Label 7400 1950 2    60   ~ 0
WD0
Text Label 7400 2050 2    60   ~ 0
WD1
Text Label 7400 2150 2    60   ~ 0
WD2
Text Label 7400 2250 2    60   ~ 0
WD3
Text Label 7400 2350 2    60   ~ 0
WD4
Text Label 7400 2450 2    60   ~ 0
WD5
Text Label 7400 2550 2    60   ~ 0
WD6
Text Label 7400 2650 2    60   ~ 0
WD7
Wire Wire Line
	7000 2650 7400 2650
Entry Wire Line
	7400 2550 7500 2450
Entry Wire Line
	7400 2450 7500 2350
Entry Wire Line
	7400 2350 7500 2250
Entry Wire Line
	7400 2250 7500 2150
Entry Wire Line
	7400 2150 7500 2050
Entry Wire Line
	7400 2050 7500 1950
Entry Wire Line
	7400 1950 7500 1850
Entry Wire Line
	7500 2550 7400 2650
Entry Bus Bus
	7600 1700 7500 1800
Wire Bus Line
	7600 1700 8000 1700
Wire Wire Line
	6300 1950 6300 3050
Wire Wire Line
	6300 1950 7400 1950
Connection ~ 6300 3050
Wire Wire Line
	6300 3050 5900 3050
Wire Wire Line
	7000 2650 7000 3750
Connection ~ 7000 3750
Wire Wire Line
	7000 3750 7400 3750
Wire Wire Line
	6900 2550 6900 3650
Wire Wire Line
	6900 2550 7400 2550
Connection ~ 6900 3650
Wire Wire Line
	6900 3650 5900 3650
Wire Wire Line
	6800 2450 6800 3550
Wire Wire Line
	6800 2450 7400 2450
Connection ~ 6800 3550
Wire Wire Line
	6800 3550 7400 3550
Wire Wire Line
	6700 2350 6700 3450
Wire Wire Line
	6700 2350 7400 2350
Connection ~ 6700 3450
Wire Wire Line
	6700 3450 5900 3450
Wire Wire Line
	6600 2250 6600 3350
Wire Wire Line
	6600 2250 7400 2250
Connection ~ 6600 3350
Wire Wire Line
	6600 3350 7400 3350
Wire Wire Line
	6500 2150 6500 3250
Wire Wire Line
	6500 2150 7400 2150
Connection ~ 6500 3250
Wire Wire Line
	6500 3250 5900 3250
Wire Wire Line
	6400 2050 6400 3150
Wire Wire Line
	6400 2050 7400 2050
Connection ~ 6400 3150
Wire Wire Line
	6400 3150 7400 3150
Wire Bus Line
	7500 2900 7500 3700
Wire Bus Line
	7500 1800 7500 2600
Wire Bus Line
	3350 3100 3350 4550
$EndSCHEMATC
