EESchema Schematic File Version 4
LIBS:artemisa-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 6 13
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
L artemisa:74HC138 U23
U 1 1 5AE4C08A
P 5450 3100
F 0 "U23" H 5450 3600 60  0000 C CNN
F 1 "74HC138" H 5450 2600 60  0000 C CNN
F 2 "artemisa:DIP-16_300" V 4600 3000 60  0001 C CNN
F 3 "" V 4600 3000 60  0001 C CNN
	1    5450 3100
	1    0    0    -1  
$EndComp
Text HLabel 2750 2750 0    60   Input ~ 0
ADDR3
Text HLabel 2750 2850 0    60   Input ~ 0
ADDR4
Text HLabel 2750 2950 0    60   Input ~ 0
ADDR5
Wire Wire Line
	2750 2750 4600 2750
Wire Wire Line
	4600 2850 2750 2850
Wire Wire Line
	2750 2950 4600 2950
NoConn ~ 5950 2750
NoConn ~ 5950 2850
NoConn ~ 5950 3350
NoConn ~ 5950 3450
$Comp
L artemisa:74HC04 U2
U 4 1 5AE4C25B
P 3100 3900
F 0 "U2" H 2900 4050 50  0000 C CNN
F 1 "74HC04" H 3250 4050 50  0000 C CNN
F 2 "artemisa:DIP-14_300" H 3100 3900 50  0001 C CNN
F 3 "" H 3100 3900 50  0001 C CNN
	4    3100 3900
	1    0    0    -1  
$EndComp
$Comp
L artemisa:74HC32 U24
U 1 1 5AE4C2D8
P 3900 4000
F 0 "U24" H 3900 4200 50  0000 C CNN
F 1 "74HC32" H 3900 3800 50  0000 C CNN
F 2 "artemisa:DIP-14_300" H 3900 4000 50  0001 C CNN
F 3 "" H 3900 4000 50  0001 C CNN
	1    3900 4000
	1    0    0    -1  
$EndComp
Text HLabel 2750 3900 0    60   Input ~ 0
ADDR7
Text HLabel 2750 4100 0    60   Input ~ 0
ADDR6
Wire Wire Line
	2750 3900 2800 3900
Wire Wire Line
	3400 3900 3500 3900
Wire Wire Line
	2750 4100 3500 4100
Wire Wire Line
	4350 4000 4450 4000
Wire Wire Line
	4450 4000 4450 3200
Wire Wire Line
	4450 3200 4600 3200
Text HLabel 2750 3300 0    60   Input ~ 0
~IORQ
Text HLabel 2750 3400 0    60   Input ~ 0
~M1
Wire Wire Line
	4600 3300 2750 3300
Wire Wire Line
	2750 3400 4600 3400
Text HLabel 6450 3050 2    60   Output ~ 0
~IOSL3
Text HLabel 6450 3150 2    60   Output ~ 0
~IOSL4
Text HLabel 6450 3250 2    60   Output ~ 0
~IOSL5
Wire Wire Line
	5950 3050 6450 3050
Wire Wire Line
	6450 3150 5950 3150
Wire Wire Line
	5950 3250 6450 3250
NoConn ~ 5950 2950
$EndSCHEMATC
