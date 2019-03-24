EESchema Schematic File Version 4
LIBS:artemisa-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 10 12
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	6000 2700 6200 2700
Text Notes 6750 2650 0    60   ~ 0
Cassette out (write)
Text Notes 6750 3350 0    60   ~ 0
Cassette in (read)
$Comp
L artemisa:CP C10
U 1 1 5B11A155
P 4700 2700
F 0 "C10" V 4800 2650 50  0000 L CNN
F 1 "1uF" V 4600 2650 50  0000 L CNN
F 2 "artemisa:Radial_capacitor" H 4700 2700 50  0001 C CNN
F 3 "" H 4700 2700 50  0001 C CNN
	1    4700 2700
	0    -1   -1   0   
$EndComp
Text HLabel 4300 2700 0    60   Input ~ 0
CASOUT
$Comp
L artemisa:R R25
U 1 1 5B11A1EA
P 5150 2700
AR Path="/5B11A1EA" Ref="R25"  Part="1" 
AR Path="/5B118A76/5B11A1EA" Ref="R25"  Part="1" 
F 0 "R25" H 5150 2600 50  0000 C CNN
F 1 "4k7" H 5100 2700 39  0000 L CNN
F 2 "artemisa:Axial_resistor" H 5150 2700 50  0001 C CNN
F 3 "" H 5150 2700 50  0001 C CNN
	1    5150 2700
	-1   0    0    1   
$EndComp
$Comp
L artemisa:Cap C11
U 1 1 5B11A2B9
P 5500 2900
F 0 "C11" H 5510 2970 50  0000 L CNN
F 1 "22nF" H 5510 2820 50  0000 L CNN
F 2 "artemisa:Disc_capacitor" H 5500 2900 50  0001 C CNN
F 3 "" H 5500 2900 50  0001 C CNN
	1    5500 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 2700 5500 2700
Wire Wire Line
	5500 2700 5500 2800
Wire Wire Line
	5500 3000 5500 3150
$Comp
L artemisa:R R26
U 1 1 5B11A382
P 5850 2700
AR Path="/5B11A382" Ref="R26"  Part="1" 
AR Path="/5B118A76/5B11A382" Ref="R26"  Part="1" 
F 0 "R26" H 5850 2600 50  0000 C CNN
F 1 "4k7" H 5800 2700 39  0000 L CNN
F 2 "artemisa:Axial_resistor" H 5850 2700 50  0001 C CNN
F 3 "" H 5850 2700 50  0001 C CNN
	1    5850 2700
	-1   0    0    1   
$EndComp
Connection ~ 5500 2700
$Comp
L artemisa:R R27
U 1 1 5B11A3CA
P 6200 2900
AR Path="/5B11A3CA" Ref="R27"  Part="1" 
AR Path="/5B118A76/5B11A3CA" Ref="R27"  Part="1" 
F 0 "R27" V 6200 2750 50  0000 C CNN
F 1 "100" H 6150 2900 39  0000 L CNN
F 2 "artemisa:Axial_resistor" H 6200 2900 50  0001 C CNN
F 3 "" H 6200 2900 50  0001 C CNN
	1    6200 2900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6200 2700 6200 2750
Wire Wire Line
	6200 3050 6200 3150
Connection ~ 6200 2700
$Comp
L artemisa:LM311 U22
U 1 1 5B13BC96
P 5500 4800
F 0 "U22" H 5350 5000 60  0000 C CNN
F 1 "LM311" H 5300 4550 60  0000 C CNN
F 2 "artemisa:DIP-8_300" H 5500 4800 60  0001 C CNN
F 3 "" H 5500 4800 60  0001 C CNN
	1    5500 4800
	-1   0    0    1   
$EndComp
Wire Wire Line
	4900 5000 4600 5000
$Comp
L artemisa:R R33
U 1 1 5B13BDD4
P 4600 4350
AR Path="/5B13BDD4" Ref="R33"  Part="1" 
AR Path="/5B118A76/5B13BDD4" Ref="R33"  Part="1" 
F 0 "R33" V 4600 4200 50  0000 C CNN
F 1 "1k" H 4600 4350 39  0000 C CNN
F 2 "artemisa:Axial_resistor" H 4600 4350 50  0001 C CNN
F 3 "" H 4600 4350 50  0001 C CNN
	1    4600 4350
	0    1    -1   0   
$EndComp
Wire Wire Line
	4600 4150 4600 4200
Wire Wire Line
	7550 5100 7200 5100
$Comp
L artemisa:R R30
U 1 1 5B13C12F
P 7200 4800
AR Path="/5B13C12F" Ref="R30"  Part="1" 
AR Path="/5B118A76/5B13C12F" Ref="R30"  Part="1" 
F 0 "R30" V 7200 4950 50  0000 C CNN
F 1 "10k" H 7200 4800 39  0000 C CNN
F 2 "artemisa:Axial_resistor" H 7200 4800 50  0001 C CNN
F 3 "" H 7200 4800 50  0001 C CNN
	1    7200 4800
	0    -1   1    0   
$EndComp
$Comp
L artemisa:CP C13
U 1 1 5B13C2F1
P 7200 5450
F 0 "C13" H 7200 5550 50  0000 L CNN
F 1 "1uF" H 7200 5350 50  0000 L CNN
F 2 "artemisa:Radial_capacitor" H 7200 5450 50  0001 C CNN
F 3 "" H 7200 5450 50  0001 C CNN
	1    7200 5450
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7200 5100 7200 5350
Wire Wire Line
	7200 5550 7200 5800
$Comp
L artemisa:R R28
U 1 1 5B13C484
P 7550 4800
AR Path="/5B13C484" Ref="R28"  Part="1" 
AR Path="/5B118A76/5B13C484" Ref="R28"  Part="1" 
F 0 "R28" V 7550 4950 50  0000 C CNN
F 1 "2k7" H 7550 4800 39  0000 C CNN
F 2 "artemisa:Axial_resistor" H 7550 4800 50  0001 C CNN
F 3 "" H 7550 4800 50  0001 C CNN
	1    7550 4800
	0    1    -1   0   
$EndComp
$Comp
L artemisa:R R29
U 1 1 5B13C501
P 7550 5450
AR Path="/5B13C501" Ref="R29"  Part="1" 
AR Path="/5B118A76/5B13C501" Ref="R29"  Part="1" 
F 0 "R29" V 7550 5600 50  0000 C CNN
F 1 "2k7" H 7550 5450 39  0000 C CNN
F 2 "artemisa:Axial_resistor" H 7550 5450 50  0001 C CNN
F 3 "" H 7550 5450 50  0001 C CNN
	1    7550 5450
	0    1    -1   0   
$EndComp
Wire Wire Line
	7550 4950 7550 5100
Connection ~ 7550 5100
Connection ~ 7200 5100
Wire Wire Line
	7550 5600 7550 5800
Wire Wire Line
	7550 4600 7550 4650
$Comp
L artemisa:Cap C12
U 1 1 5B13C72E
P 6750 3750
F 0 "C12" V 6600 3700 50  0000 L CNN
F 1 "22nF" V 6900 3650 50  0000 L CNN
F 2 "artemisa:Disc_capacitor" H 6750 3750 50  0001 C CNN
F 3 "" H 6750 3750 50  0001 C CNN
	1    6750 3750
	1    0    0    1   
$EndComp
$Comp
L artemisa:R R34
U 1 1 5B13CBA2
P 6750 4200
AR Path="/5B13CBA2" Ref="R34"  Part="1" 
AR Path="/5B118A76/5B13CBA2" Ref="R34"  Part="1" 
F 0 "R34" H 6750 4300 50  0000 C CNN
F 1 "4k7" H 6750 4200 39  0000 C CNN
F 2 "artemisa:Axial_resistor" H 6750 4200 50  0001 C CNN
F 3 "" H 6750 4200 50  0001 C CNN
	1    6750 4200
	0    -1   1    0   
$EndComp
$Comp
L artemisa:R R35
U 1 1 5B13CC4B
P 7200 4200
AR Path="/5B13CC4B" Ref="R35"  Part="1" 
AR Path="/5B118A76/5B13CC4B" Ref="R35"  Part="1" 
F 0 "R35" V 7200 4050 50  0000 C CNN
F 1 "220k" H 7200 4200 39  0000 C CNN
F 2 "artemisa:Axial_resistor" H 7200 4200 50  0001 C CNN
F 3 "" H 7200 4200 50  0001 C CNN
	1    7200 4200
	0    1    -1   0   
$EndComp
Wire Wire Line
	7200 4000 7200 4050
Text HLabel 4300 5000 0    60   Output ~ 0
CASIN
Wire Wire Line
	4900 4600 4850 4600
Wire Wire Line
	4850 4600 4850 4650
Wire Wire Line
	6750 4050 6750 3850
Wire Wire Line
	5500 2700 5700 2700
Wire Wire Line
	7550 5100 7550 5300
Wire Wire Line
	4600 4500 4600 5000
Wire Wire Line
	4300 5000 4600 5000
Connection ~ 4600 5000
$Comp
L artemisa:VCC #PWR0127
U 1 1 5C2DC4C4
P 4600 4150
F 0 "#PWR0127" H 4600 4100 60  0001 C CNN
F 1 "VCC" H 4600 4400 60  0001 C CNN
F 2 "" H 4600 4150 60  0001 C CNN
F 3 "" H 4600 4150 60  0001 C CNN
	1    4600 4150
	1    0    0    -1  
$EndComp
$Comp
L artemisa:VCC #PWR0128
U 1 1 5C2DC552
P 7550 4600
F 0 "#PWR0128" H 7550 4550 60  0001 C CNN
F 1 "VCC" H 7550 4850 60  0001 C CNN
F 2 "" H 7550 4600 60  0001 C CNN
F 3 "" H 7550 4600 60  0001 C CNN
	1    7550 4600
	1    0    0    -1  
$EndComp
$Comp
L artemisa:VCC #PWR0129
U 1 1 5C2DC58E
P 7200 4000
F 0 "#PWR0129" H 7200 3950 60  0001 C CNN
F 1 "VCC" H 7200 4250 60  0001 C CNN
F 2 "" H 7200 4000 60  0001 C CNN
F 3 "" H 7200 4000 60  0001 C CNN
	1    7200 4000
	1    0    0    -1  
$EndComp
$Comp
L artemisa:GND #PWR0130
U 1 1 5C2DC5D0
P 7800 3550
F 0 "#PWR0130" H 7800 3450 60  0001 C CNN
F 1 "GND" H 7800 3650 60  0001 C CNN
F 2 "" H 7800 3550 60  0001 C CNN
F 3 "" H 7800 3550 60  0001 C CNN
	1    7800 3550
	1    0    0    -1  
$EndComp
$Comp
L artemisa:GND #PWR0131
U 1 1 5C2DC6BA
P 4850 4650
F 0 "#PWR0131" H 4850 4550 60  0001 C CNN
F 1 "GND" H 4850 4750 60  0001 C CNN
F 2 "" H 4850 4650 60  0001 C CNN
F 3 "" H 4850 4650 60  0001 C CNN
	1    4850 4650
	1    0    0    -1  
$EndComp
$Comp
L artemisa:GND #PWR0132
U 1 1 5C2DC6E5
P 7200 5800
F 0 "#PWR0132" H 7200 5700 60  0001 C CNN
F 1 "GND" H 7200 5900 60  0001 C CNN
F 2 "" H 7200 5800 60  0001 C CNN
F 3 "" H 7200 5800 60  0001 C CNN
	1    7200 5800
	1    0    0    -1  
$EndComp
$Comp
L artemisa:GND #PWR0133
U 1 1 5C2DC710
P 7550 5800
F 0 "#PWR0133" H 7550 5700 60  0001 C CNN
F 1 "GND" H 7550 5900 60  0001 C CNN
F 2 "" H 7550 5800 60  0001 C CNN
F 3 "" H 7550 5800 60  0001 C CNN
	1    7550 5800
	1    0    0    -1  
$EndComp
$Comp
L artemisa:GND #PWR0134
U 1 1 5C2DCC78
P 5500 3150
F 0 "#PWR0134" H 5500 3050 60  0001 C CNN
F 1 "GND" H 5500 3250 60  0001 C CNN
F 2 "" H 5500 3150 60  0001 C CNN
F 3 "" H 5500 3150 60  0001 C CNN
	1    5500 3150
	1    0    0    -1  
$EndComp
$Comp
L artemisa:GND #PWR0135
U 1 1 5C2DCCA3
P 6200 3150
F 0 "#PWR0135" H 6200 3050 60  0001 C CNN
F 1 "GND" H 6200 3250 60  0001 C CNN
F 2 "" H 6200 3150 60  0001 C CNN
F 3 "" H 6200 3150 60  0001 C CNN
	1    6200 3150
	1    0    0    -1  
$EndComp
$Comp
L artemisa:DIN8 J7
U 1 1 5C3AED09
P 8400 3050
F 0 "J7" H 8653 3084 50  0000 L CNN
F 1 "DIN8" H 8653 2993 50  0000 L CNN
F 2 "artemisa:DIN8" H 8400 3050 50  0001 C CNN
F 3 "" H 8400 3050 50  0001 C CNN
	1    8400 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 2700 7650 3000
Wire Wire Line
	7650 3000 7950 3000
Wire Wire Line
	6200 2700 7650 2700
Wire Wire Line
	7950 2700 7800 2700
Wire Wire Line
	7800 2700 7800 2800
Wire Wire Line
	7950 2800 7800 2800
Connection ~ 7800 2800
Wire Wire Line
	7800 2800 7800 2900
Wire Wire Line
	7950 2900 7800 2900
Connection ~ 7800 2900
Wire Wire Line
	7800 2900 7800 3200
Wire Wire Line
	7950 3200 7800 3200
Connection ~ 7800 3200
Wire Wire Line
	7800 3200 7800 3300
Wire Wire Line
	7950 3300 7800 3300
Connection ~ 7800 3300
Wire Wire Line
	7800 3300 7800 3400
Wire Wire Line
	7950 3400 7800 3400
Connection ~ 7800 3400
Wire Wire Line
	7800 3400 7800 3550
Wire Wire Line
	7200 4950 7200 5100
Wire Wire Line
	7200 5100 6350 5100
Wire Wire Line
	7200 4350 7200 4500
Wire Wire Line
	7200 4500 6750 4500
Connection ~ 7200 4500
Wire Wire Line
	7200 4500 7200 4650
Wire Wire Line
	6350 4500 6350 4650
Wire Wire Line
	6350 4650 6250 4650
Wire Wire Line
	6350 5100 6350 4950
Wire Wire Line
	6350 4950 6250 4950
Wire Wire Line
	6750 4500 6750 4350
Wire Wire Line
	7950 3100 7650 3100
Wire Wire Line
	7650 3100 7650 3400
Connection ~ 6750 4500
Wire Wire Line
	6750 4500 6350 4500
Wire Wire Line
	6750 3400 6750 3650
Wire Wire Line
	6750 3400 7650 3400
Wire Wire Line
	4800 2700 5000 2700
Wire Wire Line
	4600 2700 4300 2700
$EndSCHEMATC
