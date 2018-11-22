EESchema Schematic File Version 4
LIBS:artemisa-cache
EELAYER 26 0
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
L artemisa:Crystal Y?
U 1 1 5BF8884A
P 4300 3600
AR Path="/5ADBC286/5BF8884A" Ref="Y?"  Part="1" 
AR Path="/5BF74A85/5BF8884A" Ref="Y1"  Part="1" 
F 0 "Y1" H 4300 3700 50  0000 C CNN
F 1 "3.58Mhz" H 4300 3500 50  0000 C CNN
F 2 "artemisa:Crystal" H 4300 3600 50  0001 C CNN
F 3 "" H 4300 3600 50  0001 C CNN
	1    4300 3600
	1    0    0    -1  
$EndComp
$Comp
L artemisa:CP C?
U 1 1 5BF88851
P 3850 3900
AR Path="/5ADBC286/5BF88851" Ref="C?"  Part="1" 
AR Path="/5BF74A85/5BF88851" Ref="C2"  Part="1" 
F 0 "C2" H 3860 3970 50  0000 L CNN
F 1 "22pF" H 3860 3820 50  0000 L CNN
F 2 "artemisa:Disc_capacitor" H 3850 3900 50  0001 C CNN
F 3 "" H 3850 3900 50  0001 C CNN
	1    3850 3900
	1    0    0    -1  
$EndComp
$Comp
L artemisa:CP C?
U 1 1 5BF88858
P 4750 3900
AR Path="/5ADBC286/5BF88858" Ref="C?"  Part="1" 
AR Path="/5BF74A85/5BF88858" Ref="C1"  Part="1" 
F 0 "C1" H 4760 3970 50  0000 L CNN
F 1 "22pF" H 4760 3820 50  0000 L CNN
F 2 "artemisa:Disc_capacitor" H 4750 3900 50  0001 C CNN
F 3 "" H 4750 3900 50  0001 C CNN
	1    4750 3900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5BF8885F
P 4300 4150
AR Path="/5ADBC286/5BF8885F" Ref="#PWR?"  Part="1" 
AR Path="/5BF74A85/5BF8885F" Ref="#PWR0123"  Part="1" 
F 0 "#PWR0123" H 4300 3900 50  0001 C CNN
F 1 "GND" H 4300 4000 50  0000 C CNN
F 2 "" H 4300 4150 50  0001 C CNN
F 3 "" H 4300 4150 50  0001 C CNN
	1    4300 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 4100 3850 4000
Wire Wire Line
	4750 4100 4300 4100
Wire Wire Line
	4300 4100 4300 4150
Wire Wire Line
	4750 4100 4750 4000
Connection ~ 4300 4100
Wire Wire Line
	4400 3600 4750 3600
Wire Wire Line
	4750 3500 4750 3600
Wire Wire Line
	3850 3600 4200 3600
Wire Wire Line
	3850 2750 3850 3100
$Comp
L artemisa:4069 U?
U 4 1 5BF8886E
P 4300 3100
AR Path="/5ADBC286/5BF8886E" Ref="U?"  Part="4" 
AR Path="/5BF74A85/5BF8886E" Ref="U38"  Part="4" 
F 0 "U38" H 4300 3250 50  0000 C CNN
F 1 "4069" H 4300 2950 50  0000 C CNN
F 2 "artemisa:DIP-14_300" H 4300 3100 50  0001 C CNN
F 3 "" H 4300 3100 50  0001 C CNN
	4    4300 3100
	1    0    0    -1  
$EndComp
$Comp
L artemisa:4069 U?
U 5 1 5BF88875
P 5750 3100
AR Path="/5ADBC286/5BF88875" Ref="U?"  Part="5" 
AR Path="/5BF74A85/5BF88875" Ref="U38"  Part="5" 
F 0 "U38" H 5750 3250 50  0000 C CNN
F 1 "4069" H 5750 2950 50  0000 C CNN
F 2 "artemisa:DIP-14_300" H 5750 3100 50  0001 C CNN
F 3 "" H 5750 3100 50  0001 C CNN
	5    5750 3100
	1    0    0    -1  
$EndComp
$Comp
L artemisa:R R?
U 1 1 5BF8887C
P 4750 3350
AR Path="/5BF8887C" Ref="R?"  Part="1" 
AR Path="/5ADBC286/5BF8887C" Ref="R?"  Part="1" 
AR Path="/5BF74A85/5BF8887C" Ref="R4"  Part="1" 
F 0 "R4" V 4800 3450 50  0000 C CNN
F 1 "1K" H 4750 3350 39  0000 C CNN
F 2 "artemisa:Axial_resistor" V 4680 3350 50  0001 C CNN
F 3 "" H 4750 3350 50  0001 C CNN
	1    4750 3350
	0    -1   -1   0   
$EndComp
Connection ~ 4750 3600
Wire Wire Line
	4750 2750 4750 3100
Connection ~ 4750 3100
Wire Wire Line
	4000 3100 3850 3100
Connection ~ 3850 3600
$Comp
L artemisa:R R?
U 1 1 5BF88889
P 4300 2750
AR Path="/5BF88889" Ref="R?"  Part="1" 
AR Path="/5ADBC286/5BF88889" Ref="R?"  Part="1" 
AR Path="/5BF74A85/5BF88889" Ref="R3"  Part="1" 
F 0 "R3" H 4300 2850 50  0000 C CNN
F 1 "1M" H 4300 2750 39  0000 C CNN
F 2 "artemisa:Axial_resistor" V 4230 2750 50  0001 C CNN
F 3 "" H 4300 2750 50  0001 C CNN
	1    4300 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 2750 4450 2750
Wire Wire Line
	4150 2750 3850 2750
Connection ~ 3850 3100
Wire Wire Line
	4300 4100 3850 4100
Wire Wire Line
	4750 3600 4750 3800
Wire Wire Line
	4750 3100 4750 3200
Wire Wire Line
	4750 3100 4600 3100
Wire Wire Line
	3850 3600 3850 3800
Wire Wire Line
	3850 3100 3850 3600
$Comp
L artemisa:4069 U?
U 6 1 5BF8889A
P 6550 3100
AR Path="/5ADBC286/5BF8889A" Ref="U?"  Part="6" 
AR Path="/5BF74A85/5BF8889A" Ref="U38"  Part="6" 
F 0 "U38" H 6550 3250 50  0000 C CNN
F 1 "4069" H 6550 2950 50  0000 C CNN
F 2 "artemisa:DIP-14_300" H 6550 3100 50  0001 C CNN
F 3 "" H 6550 3100 50  0001 C CNN
	6    6550 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 3100 6050 3100
Wire Wire Line
	4750 3100 5450 3100
Text HLabel 7350 3100 2    60   Output ~ 0
CLK
Wire Wire Line
	6850 3100 7350 3100
$EndSCHEMATC
