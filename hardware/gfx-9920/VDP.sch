EESchema Schematic File Version 4
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 7
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 3000 2400 0    50   BiDi ~ 0
DATA[0..7]
Text HLabel 3000 3550 0    50   Input ~ 0
MODE
Text HLabel 3000 3650 0    50   Input ~ 0
~CSW
Text HLabel 3000 3750 0    50   Input ~ 0
~CSR
Text HLabel 3000 4000 0    50   Input ~ 0
~RESET
Text HLabel 3000 3900 0    50   Output ~ 0
~IRQ
Text HLabel 7150 2450 2    50   Output ~ 0
AD[0..7]
Text HLabel 7150 3850 2    50   Input ~ 0
RD[0..7]
Text Label 6750 2700 2    60   ~ 0
AD0
Text Label 6750 2800 2    60   ~ 0
AD1
Text Label 6750 2900 2    60   ~ 0
AD2
Text Label 6750 3000 2    60   ~ 0
AD3
Text Label 6750 3100 2    60   ~ 0
AD4
Text Label 6750 3200 2    60   ~ 0
AD5
Text Label 6750 3300 2    60   ~ 0
AD6
Text Label 6750 3400 2    60   ~ 0
AD7
Wire Wire Line
	6750 2700 6350 2700
Wire Wire Line
	6350 2800 6750 2800
Wire Wire Line
	6750 2900 6350 2900
Wire Wire Line
	6350 3000 6750 3000
Wire Wire Line
	6750 3100 6350 3100
Wire Wire Line
	6350 3200 6750 3200
Wire Wire Line
	6750 3300 6350 3300
Wire Wire Line
	6350 3400 6750 3400
Text Label 6750 4600 2    60   ~ 0
RD0
Text Label 6750 4500 2    60   ~ 0
RD1
Text Label 6750 4400 2    60   ~ 0
RD2
Text Label 6750 4300 2    60   ~ 0
RD3
Text Label 6750 4200 2    60   ~ 0
RD4
Text Label 6750 4100 2    60   ~ 0
RD5
Text Label 6750 4000 2    60   ~ 0
RD6
Text Label 6750 3900 2    60   ~ 0
RD7
Wire Wire Line
	6750 4600 6350 4600
Wire Wire Line
	6350 4500 6750 4500
Wire Wire Line
	6750 4400 6350 4400
Wire Wire Line
	6350 4300 6750 4300
Wire Wire Line
	6750 4200 6350 4200
Wire Wire Line
	6350 4100 6750 4100
Wire Wire Line
	6750 4000 6350 4000
Wire Wire Line
	6350 3900 6750 3900
Wire Wire Line
	6350 3750 6850 3750
Wire Wire Line
	6350 3650 6850 3650
Wire Wire Line
	6350 3550 6850 3550
Text Label 3700 3400 0    60   ~ 0
DATA0
Text Label 3700 3300 0    60   ~ 0
DATA1
Text Label 3700 3200 0    60   ~ 0
DATA2
Text Label 3700 3100 0    60   ~ 0
DATA3
Text Label 3700 3000 0    60   ~ 0
DATA4
Text Label 3700 2900 0    60   ~ 0
DATA5
Text Label 3700 2800 0    60   ~ 0
DATA6
Text Label 3700 2700 0    60   ~ 0
DATA7
Wire Wire Line
	5050 3400 3700 3400
Wire Wire Line
	3700 3300 5050 3300
Wire Wire Line
	5050 3200 3700 3200
Wire Wire Line
	3700 3100 5050 3100
Wire Wire Line
	3700 3000 5050 3000
Wire Wire Line
	3700 2900 5050 2900
Wire Wire Line
	3700 2800 5050 2800
Wire Wire Line
	5050 2700 3700 2700
Entry Wire Line
	6750 4000 6850 4100
Entry Wire Line
	6750 4100 6850 4200
Entry Wire Line
	6750 4200 6850 4300
Entry Wire Line
	6750 4300 6850 4400
Entry Wire Line
	6750 4400 6850 4500
Entry Wire Line
	6750 4500 6850 4600
Entry Wire Line
	6750 4600 6850 4700
Entry Wire Line
	6850 4000 6750 3900
Entry Wire Line
	6750 3300 6850 3200
Entry Wire Line
	6750 3200 6850 3100
Entry Wire Line
	6750 3100 6850 3000
Entry Wire Line
	6750 3000 6850 2900
Entry Wire Line
	6750 2900 6850 2800
Entry Wire Line
	6750 2800 6850 2700
Entry Wire Line
	6750 2700 6850 2600
Entry Wire Line
	6850 3300 6750 3400
Wire Wire Line
	5050 3650 3000 3650
Wire Wire Line
	5050 3750 3000 3750
$Comp
L artemisa:Crystal Y?
U 1 1 5EE07B79
P 4650 4600
AR Path="/5EE07B79" Ref="Y?"  Part="1" 
AR Path="/5EDF1B60/5EE07B79" Ref="Y1"  Part="1" 
F 0 "Y1" V 4650 4450 50  0000 C CNN
F 1 "10.7386Mhz" V 4650 4900 50  0000 C CNN
F 2 "artemisa:Crystal" H 4650 4600 50  0001 C CNN
F 3 "" H 4650 4600 50  0001 C CNN
	1    4650 4600
	0    1    1    0   
$EndComp
Wire Wire Line
	4350 4400 4650 4400
Wire Wire Line
	4650 4400 4650 4500
Wire Wire Line
	4650 4700 4650 4800
Wire Wire Line
	4350 4800 4650 4800
$Comp
L artemisa:CP C?
U 1 1 5EE07B83
P 4250 4400
AR Path="/5EE07B83" Ref="C?"  Part="1" 
AR Path="/5EDF1B60/5EE07B83" Ref="C1"  Part="1" 
F 0 "C1" V 4100 4350 50  0000 L CNN
F 1 "56pF" V 4300 4450 50  0000 L CNN
F 2 "artemisa:Disc_capacitor" H 4250 4400 50  0001 C CNN
F 3 "" H 4250 4400 50  0001 C CNN
	1    4250 4400
	0    1    1    0   
$EndComp
$Comp
L artemisa:CP C?
U 1 1 5EE07B89
P 4250 4800
AR Path="/5EE07B89" Ref="C?"  Part="1" 
AR Path="/5EDF1B60/5EE07B89" Ref="C2"  Part="1" 
F 0 "C2" V 4100 4750 50  0000 L CNN
F 1 "56pF" V 4300 4850 50  0000 L CNN
F 2 "artemisa:Disc_capacitor" H 4250 4800 50  0001 C CNN
F 3 "" H 4250 4800 50  0001 C CNN
	1    4250 4800
	0    1    1    0   
$EndComp
Connection ~ 4650 4400
Connection ~ 4650 4800
Wire Wire Line
	4150 4400 3950 4400
Wire Wire Line
	3950 4400 3950 4800
Wire Wire Line
	4150 4800 3950 4800
Connection ~ 3950 4800
Wire Wire Line
	4650 4400 5050 4400
Wire Wire Line
	4650 4800 5050 4800
Wire Wire Line
	3950 4800 3950 4950
$Comp
L artemisa:Cap C?
U 1 1 5EE07B98
P 5900 2150
AR Path="/5EE07B98" Ref="C?"  Part="1" 
AR Path="/5EDF1B60/5EE07B98" Ref="C3"  Part="1" 
F 0 "C3" V 5950 2000 50  0000 L CNN
F 1 "100nF" V 5850 1850 50  0000 L CNN
F 2 "artemisa:Disc_capacitor" H 5900 2150 50  0001 C CNN
F 3 "" H 5900 2150 50  0001 C CNN
	1    5900 2150
	0    -1   -1   0   
$EndComp
$Comp
L artemisa:TMS9928 U?
U 1 1 5EE07B9F
P 5700 3950
AR Path="/5EE07B9F" Ref="U?"  Part="1" 
AR Path="/5EDF1B60/5EE07B9F" Ref="U1"  Part="1" 
F 0 "U1" H 5350 5350 60  0000 C CNN
F 1 "TMS9928" H 6000 5350 60  0000 C CNN
F 2 "artemisa:DIP-40_600" H 5700 4500 60  0001 C CNN
F 3 "http://www.colecovision.dk/PDF/TMS9918.a.pdf" H 5700 4500 60  0001 C CNN
	1    5700 3950
	1    0    0    -1  
$EndComp
NoConn ~ 5050 4250
Wire Wire Line
	5700 5200 5700 5250
Wire Wire Line
	6350 2150 6000 2150
Wire Wire Line
	5700 2150 5800 2150
Connection ~ 5700 2150
Wire Wire Line
	5700 2150 5700 2450
Wire Wire Line
	5700 2050 5700 2150
Wire Wire Line
	6350 2150 6350 2250
$Comp
L artemisa:GND #PWR?
U 1 1 5EE07BAF
P 5700 5250
AR Path="/5EE07BAF" Ref="#PWR?"  Part="1" 
AR Path="/5EDF1B60/5EE07BAF" Ref="#PWR0119"  Part="1" 
F 0 "#PWR0119" H 5700 5150 60  0001 C CNN
F 1 "GND" H 5700 5350 60  0001 C CNN
F 2 "" H 5700 5250 60  0001 C CNN
F 3 "" H 5700 5250 60  0001 C CNN
	1    5700 5250
	1    0    0    -1  
$EndComp
$Comp
L artemisa:GND #PWR?
U 1 1 5EE07BB5
P 6350 2250
AR Path="/5EE07BB5" Ref="#PWR?"  Part="1" 
AR Path="/5EDF1B60/5EE07BB5" Ref="#PWR0120"  Part="1" 
F 0 "#PWR0120" H 6350 2150 60  0001 C CNN
F 1 "GND" H 6350 2350 60  0001 C CNN
F 2 "" H 6350 2250 60  0001 C CNN
F 3 "" H 6350 2250 60  0001 C CNN
	1    6350 2250
	1    0    0    -1  
$EndComp
$Comp
L artemisa:VCC #PWR?
U 1 1 5EE07BBB
P 5700 2050
AR Path="/5EE07BBB" Ref="#PWR?"  Part="1" 
AR Path="/5EDF1B60/5EE07BBB" Ref="#PWR0121"  Part="1" 
F 0 "#PWR0121" H 5700 2000 60  0001 C CNN
F 1 "VCC" H 5700 2300 60  0001 C CNN
F 2 "" H 5700 2050 60  0001 C CNN
F 3 "" H 5700 2050 60  0001 C CNN
	1    5700 2050
	1    0    0    -1  
$EndComp
$Comp
L artemisa:GND #PWR?
U 1 1 5EE07BC1
P 3950 4950
AR Path="/5EE07BC1" Ref="#PWR?"  Part="1" 
AR Path="/5EDF1B60/5EE07BC1" Ref="#PWR0129"  Part="1" 
F 0 "#PWR0129" H 3950 4850 60  0001 C CNN
F 1 "GND" H 3950 5050 60  0001 C CNN
F 2 "" H 3950 4950 60  0001 C CNN
F 3 "" H 3950 4950 60  0001 C CNN
	1    3950 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 4000 5050 4000
Wire Wire Line
	3000 3900 5050 3900
Wire Wire Line
	3000 3550 5050 3550
Entry Bus Bus
	3500 2400 3600 2500
Wire Bus Line
	3500 2400 3000 2400
Text HLabel 6850 3550 2    50   Output ~ 0
~RAS
Text HLabel 6850 3650 2    50   Output ~ 0
~CAS
Text HLabel 6850 3750 2    50   Output ~ 0
~WR
Entry Bus Bus
	6850 2550 6950 2450
Wire Bus Line
	6950 2450 7150 2450
Entry Bus Bus
	6850 3950 6950 3850
Wire Bus Line
	7150 3850 6950 3850
Text HLabel 6500 4750 2    50   Output ~ 0
Y
Wire Wire Line
	6350 4750 6500 4750
Entry Wire Line
	3600 2700 3700 2800
Entry Wire Line
	3600 2800 3700 2900
Entry Wire Line
	3600 2900 3700 3000
Entry Wire Line
	3600 3000 3700 3100
Entry Wire Line
	3600 3100 3700 3200
Entry Wire Line
	3600 3200 3700 3300
Entry Wire Line
	3600 3300 3700 3400
Entry Wire Line
	3700 2700 3600 2600
Text HLabel 6500 4850 2    50   Output ~ 0
B_Y
Wire Wire Line
	6350 4850 6500 4850
Text HLabel 6500 4950 2    50   Output ~ 0
R_Y
Wire Wire Line
	6350 4950 6500 4950
Wire Bus Line
	3600 2500 3600 3350
Wire Bus Line
	6850 2550 6850 3350
Wire Bus Line
	6850 3950 6850 4750
$EndSCHEMATC
