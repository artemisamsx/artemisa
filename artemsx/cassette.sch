EESchema Schematic File Version 2
LIBS:artemsx
LIBS:power
LIBS:artemsx-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 12 12
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
L Audio_conn J7
U 1 1 5B118E45
P 7450 2200
F 0 "J7" H 7050 2400 60  0000 C CNN
F 1 "Audio_conn" H 7050 1900 60  0000 C CNN
F 2 "" H 7500 2050 60  0001 C CNN
F 3 "" H 7500 2050 60  0001 C CNN
	1    7450 2200
	-1   0    0    1   
$EndComp
$Comp
L Audio_conn J8
U 1 1 5B118E67
P 7450 4100
F 0 "J8" H 7050 4300 60  0000 C CNN
F 1 "Audio_conn" H 7050 3800 60  0000 C CNN
F 2 "" H 7500 3950 60  0001 C CNN
F 3 "" H 7500 3950 60  0001 C CNN
	1    7450 4100
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR063
U 1 1 5B1192C7
P 6900 2600
F 0 "#PWR063" H 6900 2350 50  0001 C CNN
F 1 "GND" H 6900 2450 50  0000 C CNN
F 2 "" H 6900 2600 50  0001 C CNN
F 3 "" H 6900 2600 50  0001 C CNN
	1    6900 2600
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6050 2300 7000 2300
Text Notes 7000 2600 0    60   ~ 0
Cassette out (write)
Text Notes 7000 4500 0    60   ~ 0
Cassette in (read)
$Comp
L CP C56
U 1 1 5B11A155
P 4850 2300
F 0 "C56" V 4950 2250 50  0000 L CNN
F 1 "1uF" V 4750 2250 50  0000 L CNN
F 2 "artemsx:Radial_capacitor" H 4850 2300 50  0001 C CNN
F 3 "" H 4850 2300 50  0001 C CNN
	1    4850 2300
	0    -1   -1   0   
$EndComp
Text HLabel 3150 2300 0    60   Input ~ 0
CASOUT
Wire Wire Line
	3150 2300 4750 2300
$Comp
L R_Small R25
U 1 1 5B11A1EA
P 5250 2300
F 0 "R25" V 5200 2400 50  0000 L CNN
F 1 "4k7" V 5350 2250 50  0000 L CNN
F 2 "artemsx:Axial_resistor" H 5250 2300 50  0001 C CNN
F 3 "" H 5250 2300 50  0001 C CNN
	1    5250 2300
	0    1    1    0   
$EndComp
Wire Wire Line
	4950 2300 5150 2300
$Comp
L Cap C57
U 1 1 5B11A2B9
P 5600 2500
F 0 "C57" H 5610 2570 50  0000 L CNN
F 1 "22nF" H 5610 2420 50  0000 L CNN
F 2 "artemsx:Disc_capacitor" H 5600 2500 50  0001 C CNN
F 3 "" H 5600 2500 50  0001 C CNN
	1    5600 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 2300 5850 2300
Wire Wire Line
	5600 2300 5600 2400
$Comp
L GND #PWR064
U 1 1 5B11A359
P 5600 2750
F 0 "#PWR064" H 5600 2500 50  0001 C CNN
F 1 "GND" H 5600 2600 50  0000 C CNN
F 2 "" H 5600 2750 50  0001 C CNN
F 3 "" H 5600 2750 50  0001 C CNN
	1    5600 2750
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5600 2600 5600 2750
$Comp
L R_Small R26
U 1 1 5B11A382
P 5950 2300
F 0 "R26" V 5900 2400 50  0000 L CNN
F 1 "4k7" V 6050 2250 50  0000 L CNN
F 2 "artemsx:Axial_resistor" H 5950 2300 50  0001 C CNN
F 3 "" H 5950 2300 50  0001 C CNN
	1    5950 2300
	0    1    1    0   
$EndComp
Connection ~ 5600 2300
$Comp
L R_Small R27
U 1 1 5B11A3CA
P 6300 2500
F 0 "R27" V 6250 2600 50  0000 L CNN
F 1 "100" V 6400 2450 50  0000 L CNN
F 2 "artemsx:Axial_resistor" H 6300 2500 50  0001 C CNN
F 3 "" H 6300 2500 50  0001 C CNN
	1    6300 2500
	-1   0    0    1   
$EndComp
Wire Wire Line
	6300 2300 6300 2400
$Comp
L GND #PWR065
U 1 1 5B11A412
P 6300 2750
F 0 "#PWR065" H 6300 2500 50  0001 C CNN
F 1 "GND" H 6300 2600 50  0000 C CNN
F 2 "" H 6300 2750 50  0001 C CNN
F 3 "" H 6300 2750 50  0001 C CNN
	1    6300 2750
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6300 2600 6300 2750
Connection ~ 6300 2300
$Comp
L LM311 U46
U 1 1 5B13BC96
P 5800 4400
F 0 "U46" H 5550 4600 60  0000 C CNN
F 1 "LM311" H 5600 4150 60  0000 C CNN
F 2 "artemsx:DIP-8_300" H 5800 4400 60  0001 C CNN
F 3 "" H 5800 4400 60  0001 C CNN
	1    5800 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 4200 7000 4200
$Comp
L R_Small R33
U 1 1 5B13BDD4
P 6700 3550
F 0 "R33" V 6650 3650 50  0000 L CNN
F 1 "1k" V 6800 3500 50  0000 L CNN
F 2 "artemsx:Axial_resistor" H 6700 3550 50  0001 C CNN
F 3 "" H 6700 3550 50  0001 C CNN
	1    6700 3550
	-1   0    0    1   
$EndComp
Wire Wire Line
	6700 3650 6700 4200
Connection ~ 6700 4200
$Comp
L VCC #PWR066
U 1 1 5B13BEBE
P 6700 3350
F 0 "#PWR066" H 6700 3200 50  0001 C CNN
F 1 "VCC" H 6700 3500 50  0000 C CNN
F 2 "" H 6700 3350 50  0001 C CNN
F 3 "" H 6700 3350 50  0001 C CNN
	1    6700 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 3350 6700 3450
$Comp
L R_Small R32
U 1 1 5B13BF73
P 5800 3850
F 0 "R32" V 5750 3950 50  0000 L CNN
F 1 "220k" V 5900 3800 50  0000 L CNN
F 2 "artemsx:Axial_resistor" H 5800 3850 50  0001 C CNN
F 3 "" H 5800 3850 50  0001 C CNN
	1    5800 3850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5900 3850 6700 3850
Connection ~ 6700 3850
Wire Wire Line
	4700 3850 5700 3850
Wire Wire Line
	4850 3850 4850 4250
Wire Wire Line
	4850 4250 5050 4250
$Comp
L R_Small R31
U 1 1 5B13C07F
P 4600 3850
F 0 "R31" V 4500 3700 50  0000 L CNN
F 1 "4k7" V 4700 3800 50  0000 L CNN
F 2 "artemsx:Axial_resistor" H 4600 3850 50  0001 C CNN
F 3 "" H 4600 3850 50  0001 C CNN
	1    4600 3850
	0    -1   -1   0   
$EndComp
Connection ~ 4850 3850
Wire Wire Line
	3650 3850 4500 3850
Wire Wire Line
	4350 3850 4350 4100
$Comp
L R_Small R30
U 1 1 5B13C12F
P 4350 4200
F 0 "R30" V 4300 3950 50  0000 L CNN
F 1 "10k" V 4450 4150 50  0000 L CNN
F 2 "artemsx:Axial_resistor" H 4350 4200 50  0001 C CNN
F 3 "" H 4350 4200 50  0001 C CNN
	1    4350 4200
	-1   0    0    1   
$EndComp
Wire Wire Line
	4350 4300 4350 4550
Wire Wire Line
	4350 4550 5050 4550
$Comp
L CP C59
U 1 1 5B13C2F1
P 4000 4200
F 0 "C59" V 4050 4250 50  0000 L CNN
F 1 "1uF" V 3900 4150 50  0000 L CNN
F 2 "artemsx:Radial_capacitor" H 4000 4200 50  0001 C CNN
F 3 "" H 4000 4200 50  0001 C CNN
	1    4000 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 3850 4000 4100
Connection ~ 4350 3850
$Comp
L GND #PWR067
U 1 1 5B13C37C
P 4000 4550
F 0 "#PWR067" H 4000 4300 50  0001 C CNN
F 1 "GND" H 4000 4400 50  0000 C CNN
F 2 "" H 4000 4550 50  0001 C CNN
F 3 "" H 4000 4550 50  0001 C CNN
	1    4000 4550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4000 4300 4000 4550
$Comp
L R_Small R28
U 1 1 5B13C484
P 3650 3500
F 0 "R28" V 3600 3600 50  0000 L CNN
F 1 "2k7" V 3750 3450 50  0000 L CNN
F 2 "artemsx:Axial_resistor" H 3650 3500 50  0001 C CNN
F 3 "" H 3650 3500 50  0001 C CNN
	1    3650 3500
	-1   0    0    1   
$EndComp
$Comp
L R_Small R29
U 1 1 5B13C501
P 3650 4200
F 0 "R29" V 3600 3950 50  0000 L CNN
F 1 "2k7" V 3750 4150 50  0000 L CNN
F 2 "artemsx:Axial_resistor" H 3650 4200 50  0001 C CNN
F 3 "" H 3650 4200 50  0001 C CNN
	1    3650 4200
	-1   0    0    1   
$EndComp
Wire Wire Line
	3650 3600 3650 4100
Connection ~ 3650 3850
Connection ~ 4000 3850
$Comp
L GND #PWR068
U 1 1 5B13C61B
P 3650 4550
F 0 "#PWR068" H 3650 4300 50  0001 C CNN
F 1 "GND" H 3650 4400 50  0000 C CNN
F 2 "" H 3650 4550 50  0001 C CNN
F 3 "" H 3650 4550 50  0001 C CNN
	1    3650 4550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3650 4300 3650 4550
$Comp
L VCC #PWR069
U 1 1 5B13C686
P 3650 3250
F 0 "#PWR069" H 3650 3100 50  0001 C CNN
F 1 "VCC" H 3650 3400 50  0000 C CNN
F 2 "" H 3650 3250 50  0001 C CNN
F 3 "" H 3650 3250 50  0001 C CNN
	1    3650 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 3250 3650 3400
$Comp
L Cap C58
U 1 1 5B13C72E
P 3700 5250
F 0 "C58" H 3710 5320 50  0000 L CNN
F 1 "22nF" H 3710 5170 50  0000 L CNN
F 2 "artemsx:Disc_capacitor" H 3700 5250 50  0001 C CNN
F 3 "" H 3700 5250 50  0001 C CNN
	1    3700 5250
	0    1    1    0   
$EndComp
$Comp
L R_Small R34
U 1 1 5B13CBA2
P 4150 5250
F 0 "R34" V 4050 5250 50  0000 L CNN
F 1 "10k" V 4250 5200 50  0000 L CNN
F 2 "artemsx:Axial_resistor" H 4150 5250 50  0001 C CNN
F 3 "" H 4150 5250 50  0001 C CNN
	1    4150 5250
	0    -1   -1   0   
$EndComp
$Comp
L R_Small R35
U 1 1 5B13CC4B
P 4550 4950
F 0 "R35" V 4450 4800 50  0000 L CNN
F 1 "470k" V 4650 4900 50  0000 L CNN
F 2 "artemsx:Axial_resistor" H 4550 4950 50  0001 C CNN
F 3 "" H 4550 4950 50  0001 C CNN
	1    4550 4950
	-1   0    0    1   
$EndComp
$Comp
L VCC #PWR070
U 1 1 5B13CC51
P 4550 4800
F 0 "#PWR070" H 4550 4650 50  0001 C CNN
F 1 "VCC" H 4550 4950 50  0000 C CNN
F 2 "" H 4550 4800 50  0001 C CNN
F 3 "" H 4550 4800 50  0001 C CNN
	1    4550 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 4800 4550 4850
Wire Wire Line
	4550 5050 4550 5250
Wire Wire Line
	4250 5250 4850 5250
Wire Wire Line
	4850 5250 4850 4550
Connection ~ 4850 4550
Connection ~ 4550 5250
Text HLabel 3350 5250 0    60   Output ~ 0
CASIN
Wire Wire Line
	7000 2450 6900 2450
Wire Wire Line
	6900 2450 6900 2600
$Comp
L GND #PWR071
U 1 1 5B13E61C
P 6900 4500
F 0 "#PWR071" H 6900 4250 50  0001 C CNN
F 1 "GND" H 6900 4350 50  0000 C CNN
F 2 "" H 6900 4500 50  0001 C CNN
F 3 "" H 6900 4500 50  0001 C CNN
	1    6900 4500
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7000 4350 6900 4350
Wire Wire Line
	6900 4350 6900 4500
$Comp
L GND #PWR072
U 1 1 5B13ED17
P 6550 4800
F 0 "#PWR072" H 6550 4550 50  0001 C CNN
F 1 "GND" H 6550 4650 50  0000 C CNN
F 2 "" H 6550 4800 50  0001 C CNN
F 3 "" H 6550 4800 50  0001 C CNN
	1    6550 4800
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6400 4600 6550 4600
Wire Wire Line
	6550 4600 6550 4800
Wire Wire Line
	4050 5250 3800 5250
Wire Wire Line
	3600 5250 3350 5250
$EndSCHEMATC
