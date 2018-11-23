EESchema Schematic File Version 4
LIBS:artemisa-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 13 13
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
L artemisa:74HC08 U?
U 1 2 5C02461A
P 4950 1950
AR Path="/5ADBC286/5C02461A" Ref="U?"  Part="1" 
AR Path="/5C0244DD/5C02461A" Ref="U16"  Part="1" 
F 0 "U16" H 4950 2150 50  0000 C CNN
F 1 "74HC08" H 4950 1750 50  0000 C CNN
F 2 "artemisa:DIP-14_300" H 4950 1950 50  0001 C CNN
F 3 "" H 4950 1950 50  0001 C CNN
	1    4950 1950
	1    0    0    -1  
$EndComp
$Comp
L artemisa:74HC32 U?
U 1 2 5C024621
P 3850 2550
AR Path="/5ADBC286/5C024621" Ref="U?"  Part="1" 
AR Path="/5C0244DD/5C024621" Ref="U17"  Part="1" 
F 0 "U17" H 3850 2750 50  0000 C CNN
F 1 "74HC32" H 3850 2350 50  0000 C CNN
F 2 "artemisa:DIP-14_300" H 3850 2550 50  0001 C CNN
F 3 "" H 3850 2550 50  0001 C CNN
	1    3850 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 2550 4400 2050
Wire Wire Line
	4400 2050 4500 2050
Wire Wire Line
	2600 1850 4500 1850
Text Label 3200 2650 0    60   ~ 0
~M1
Text Label 3200 2450 0    60   ~ 0
~IORQ
Text Label 4300 1850 0    60   ~ 0
~RD
Wire Wire Line
	2600 2450 3450 2450
Wire Wire Line
	3450 2650 2600 2650
Wire Wire Line
	4400 2550 4300 2550
Text HLabel 6100 1950 2    60   Output ~ 0
DATADIR
Text HLabel 2600 1850 0    60   Input ~ 0
~RD
Text HLabel 2600 2450 0    60   Input ~ 0
~IORQ
Text HLabel 2600 2650 0    60   Input ~ 0
~M1
Wire Wire Line
	5350 1950 6100 1950
Text HLabel 2600 3400 0    60   Input ~ 0
~IOSL5
$Comp
L artemisa:74HC32 U?
U 2 2 5C096D54
P 3850 3150
AR Path="/5AE20302/5C096D54" Ref="U?"  Part="2" 
AR Path="/5C0244DD/5C096D54" Ref="U17"  Part="2" 
F 0 "U17" H 3850 3350 50  0000 C CNN
F 1 "74HC32" H 3850 2950 50  0000 C CNN
F 2 "artemisa:DIP-14_300" H 3850 3150 50  0001 C CNN
F 3 "" H 3850 3150 50  0001 C CNN
	2    3850 3150
	1    0    0    -1  
$EndComp
$Comp
L artemisa:74HC32 U?
U 3 2 5C096D5B
P 3850 3650
AR Path="/5AE20302/5C096D5B" Ref="U?"  Part="3" 
AR Path="/5C0244DD/5C096D5B" Ref="U17"  Part="3" 
F 0 "U17" H 3850 3850 50  0000 C CNN
F 1 "74HC32" H 3850 3450 50  0000 C CNN
F 2 "artemisa:DIP-14_300" H 3850 3650 50  0001 C CNN
F 3 "" H 3850 3650 50  0001 C CNN
	3    3850 3650
	1    0    0    -1  
$EndComp
Text HLabel 2600 3050 0    60   Input ~ 0
~RD
Text HLabel 2600 3750 0    60   Input ~ 0
~WR
Wire Wire Line
	3300 3250 3300 3400
Wire Wire Line
	3300 3250 3450 3250
Wire Wire Line
	3300 3550 3450 3550
Connection ~ 3300 3400
Wire Wire Line
	2600 3750 3450 3750
Wire Wire Line
	3300 3400 3300 3550
Wire Wire Line
	2600 3400 3300 3400
Wire Wire Line
	2600 3050 3450 3050
Text HLabel 6100 3150 2    60   Output ~ 0
~PPIRD
Wire Wire Line
	4300 3150 6100 3150
Text HLabel 6100 3650 2    60   Output ~ 0
~PPIWR
Wire Wire Line
	4300 3650 6100 3650
$Comp
L artemisa:74HC139 U?
U 2 1 5C0E2FC2
P 3850 4350
AR Path="/5AE20302/5C0E2FC2" Ref="U?"  Part="2" 
AR Path="/5C0244DD/5C0E2FC2" Ref="U21"  Part="2" 
F 0 "U21" H 3850 4650 60  0000 C CNN
F 1 "74HC139" H 3850 4050 60  0000 C CNN
F 2 "artemisa:DIP-16_300" H 3850 4200 60  0001 C CNN
F 3 "" H 3850 4200 60  0001 C CNN
	2    3850 4350
	1    0    0    -1  
$EndComp
NoConn ~ 4250 4200
NoConn ~ 4250 4500
Text HLabel 6100 4650 2    60   Output ~ 0
~CS2
Wire Wire Line
	4250 4400 4400 4400
Wire Wire Line
	4400 4400 4400 4450
Wire Wire Line
	4400 4650 6100 4650
$Comp
L artemisa:74HC08 U?
U 2 2 5C0E2FCF
P 4950 4350
AR Path="/5AE20302/5C0E2FCF" Ref="U?"  Part="2" 
AR Path="/5C0244DD/5C0E2FCF" Ref="U16"  Part="2" 
F 0 "U16" H 4950 4550 50  0000 C CNN
F 1 "74HC08" H 4950 4150 50  0000 C CNN
F 2 "artemisa:DIP-14_300" H 4950 4350 50  0001 C CNN
F 3 "" H 4950 4350 50  0001 C CNN
	2    4950 4350
	1    0    0    -1  
$EndComp
Text HLabel 6100 4350 2    60   Output ~ 0
~CS12
Text HLabel 6100 4050 2    60   Output ~ 0
~CS1
Wire Wire Line
	4400 4300 4250 4300
Wire Wire Line
	4400 4050 4400 4250
Wire Wire Line
	4400 4250 4500 4250
Wire Wire Line
	4400 4450 4500 4450
Connection ~ 4400 4450
Wire Wire Line
	6100 4050 4400 4050
Connection ~ 4400 4250
Wire Wire Line
	5350 4350 6100 4350
Wire Wire Line
	4400 4450 4400 4650
Wire Wire Line
	4400 4250 4400 4300
Text HLabel 2600 4200 0    60   Input ~ 0
A14
Text HLabel 2600 4300 0    60   Input ~ 0
A15
Text HLabel 2600 4500 0    60   Input ~ 0
~RD
Wire Wire Line
	2600 4200 3450 4200
Wire Wire Line
	2600 4300 3450 4300
Wire Wire Line
	2600 4500 3450 4500
$EndSCHEMATC
