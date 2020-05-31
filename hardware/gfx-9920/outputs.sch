EESchema Schematic File Version 4
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 8
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 4700 3750 0    50   Input ~ 0
SOUNDOUT
Text HLabel 4650 2600 0    50   Input ~ 0
CVBS
$Comp
L artemisa:RCA_Conn J?
U 1 1 5ED4C93F
P 6150 2600
AR Path="/5ED4C93F" Ref="J?"  Part="1" 
AR Path="/5ED495FA/5ED4C93F" Ref="J2"  Part="1" 
F 0 "J2" H 6378 2646 50  0000 L CNN
F 1 "RCA_Conn" V 5850 2400 50  0000 L CNN
F 2 "artemisa:RCA_yellow" H 6150 2600 50  0001 C CNN
F 3 "" H 6150 2600 50  0001 C CNN
	1    6150 2600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4650 2600 5300 2600
$Comp
L Device:R_Small R?
U 1 1 5ED4C947
P 5300 2800
AR Path="/5ED4C947" Ref="R?"  Part="1" 
AR Path="/5ED495FA/5ED4C947" Ref="R1"  Part="1" 
F 0 "R1" H 5359 2846 50  0000 L CNN
F 1 "470" H 5359 2755 50  0000 L CNN
F 2 "artemisa:Axial_resistor" H 5300 2800 50  0001 C CNN
F 3 "~" H 5300 2800 50  0001 C CNN
	1    5300 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 2700 5300 2600
Connection ~ 5300 2600
$Comp
L artemisa:RCA_Conn J?
U 1 1 5ED4C950
P 6150 3350
AR Path="/5ED4C950" Ref="J?"  Part="1" 
AR Path="/5ED495FA/5ED4C950" Ref="J3"  Part="1" 
F 0 "J3" H 6378 3396 50  0000 L CNN
F 1 "RCA_Conn" V 5850 3150 50  0000 L CNN
F 2 "artemisa:RCA_white" H 6150 3350 50  0001 C CNN
F 3 "" H 6150 3350 50  0001 C CNN
	1    6150 3350
	0    -1   -1   0   
$EndComp
$Comp
L artemisa:RCA_Conn J?
U 1 1 5ED4C956
P 6150 4100
AR Path="/5ED4C956" Ref="J?"  Part="1" 
AR Path="/5ED495FA/5ED4C956" Ref="J4"  Part="1" 
F 0 "J4" H 6378 4146 50  0000 L CNN
F 1 "RCA_Conn" V 5850 3900 50  0000 L CNN
F 2 "artemisa:RCA_red" H 6150 4100 50  0001 C CNN
F 3 "" H 6150 4100 50  0001 C CNN
	1    6150 4100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5550 3350 5750 3350
Wire Wire Line
	5550 4100 5750 4100
Wire Wire Line
	5550 4100 5550 3750
$Comp
L artemisa:GND #PWR?
U 1 1 5ED4C966
P 6700 4250
AR Path="/5ED4C966" Ref="#PWR?"  Part="1" 
AR Path="/5ED495FA/5ED4C966" Ref="#PWR0123"  Part="1" 
F 0 "#PWR0123" H 6700 4150 60  0001 C CNN
F 1 "GND" H 6700 4350 60  0001 C CNN
F 2 "" H 6700 4250 60  0001 C CNN
F 3 "" H 6700 4250 60  0001 C CNN
	1    6700 4250
	1    0    0    -1  
$EndComp
$Comp
L artemisa:GND #PWR?
U 1 1 5ED4C96C
P 6700 3500
AR Path="/5ED4C96C" Ref="#PWR?"  Part="1" 
AR Path="/5ED495FA/5ED4C96C" Ref="#PWR0126"  Part="1" 
F 0 "#PWR0126" H 6700 3400 60  0001 C CNN
F 1 "GND" H 6700 3600 60  0001 C CNN
F 2 "" H 6700 3500 60  0001 C CNN
F 3 "" H 6700 3500 60  0001 C CNN
	1    6700 3500
	1    0    0    -1  
$EndComp
$Comp
L artemisa:GND #PWR?
U 1 1 5ED4C972
P 6700 2750
AR Path="/5ED4C972" Ref="#PWR?"  Part="1" 
AR Path="/5ED495FA/5ED4C972" Ref="#PWR0127"  Part="1" 
F 0 "#PWR0127" H 6700 2650 60  0001 C CNN
F 1 "GND" H 6700 2850 60  0001 C CNN
F 2 "" H 6700 2750 60  0001 C CNN
F 3 "" H 6700 2750 60  0001 C CNN
	1    6700 2750
	1    0    0    -1  
$EndComp
$Comp
L artemisa:GND #PWR?
U 1 1 5ED4C978
P 5300 2950
AR Path="/5ED4C978" Ref="#PWR?"  Part="1" 
AR Path="/5ED495FA/5ED4C978" Ref="#PWR0128"  Part="1" 
F 0 "#PWR0128" H 5300 2850 60  0001 C CNN
F 1 "GND" H 5300 3050 60  0001 C CNN
F 2 "" H 5300 2950 60  0001 C CNN
F 3 "" H 5300 2950 60  0001 C CNN
	1    5300 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 2950 5300 2900
Wire Wire Line
	5300 2600 5750 2600
Wire Wire Line
	4700 3750 5550 3750
Connection ~ 5550 3750
Wire Wire Line
	5550 3750 5550 3350
Wire Wire Line
	6700 2600 6700 2750
Wire Wire Line
	6550 2600 6700 2600
Wire Wire Line
	6700 4100 6700 4250
Wire Wire Line
	6550 4100 6700 4100
Wire Wire Line
	6700 3350 6700 3500
Wire Wire Line
	6550 3350 6700 3350
$EndSCHEMATC
