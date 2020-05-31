EESchema Schematic File Version 4
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 7
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 3600 3000 0    50   Input ~ 0
~WR
Text HLabel 3600 3800 0    50   Input ~ 0
~RD
Text HLabel 3600 3400 0    50   Input ~ 0
~VDPIOSL
Text HLabel 5450 3700 2    50   Output ~ 0
~CSR
Text HLabel 5450 3100 2    50   Output ~ 0
~CSW
$Comp
L artemisa:74HC32 U?
U 1 2 5E97C4CB
P 4650 3100
AR Path="/5E97C4CB" Ref="U?"  Part="1" 
AR Path="/5E974557/5E97C4CB" Ref="U7"  Part="1" 
AR Path="/5EB649E5/5EB76C70/5E97C4CB" Ref="U?"  Part="1" 
AR Path="/5EDF1B60/5EE07BC9/5E97C4CB" Ref="U?"  Part="1" 
F 0 "U7" H 4675 3425 50  0000 C CNN
F 1 "74HC32" H 4675 3334 50  0000 C CNN
F 2 "artemisa:DIP-14_300" H 4650 3100 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT32.pdf" H 4650 3100 50  0001 C CNN
	1    4650 3100
	1    0    0    -1  
$EndComp
$Comp
L artemisa:74HC32 U?
U 2 2 5E97C4D1
P 4650 3700
AR Path="/5E97C4D1" Ref="U?"  Part="2" 
AR Path="/5E974557/5E97C4D1" Ref="U7"  Part="2" 
AR Path="/5EB649E5/5EB76C70/5E97C4D1" Ref="U?"  Part="2" 
AR Path="/5EDF1B60/5EE07BC9/5E97C4D1" Ref="U?"  Part="2" 
F 0 "U7" H 4675 4025 50  0000 C CNN
F 1 "74HC32" H 4675 3934 50  0000 C CNN
F 2 "artemisa:DIP-14_300" H 4650 3700 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT32.pdf" H 4650 3700 50  0001 C CNN
	2    4650 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 3000 4250 3000
Wire Wire Line
	3600 3800 4250 3800
Wire Wire Line
	3600 3400 4050 3400
Wire Wire Line
	4050 3400 4050 3200
Wire Wire Line
	4050 3200 4250 3200
Wire Wire Line
	4050 3400 4050 3600
Wire Wire Line
	4050 3600 4250 3600
Connection ~ 4050 3400
Wire Wire Line
	5450 3100 5100 3100
Wire Wire Line
	5450 3700 5100 3700
$Comp
L artemisa:74HC32 U?
U 3 2 5EB4178B
P 7150 3200
AR Path="/5EB4178B" Ref="U?"  Part="3" 
AR Path="/5E974557/5EB4178B" Ref="U7"  Part="3" 
AR Path="/5EB649E5/5EB76C70/5EB4178B" Ref="U?"  Part="3" 
AR Path="/5EDF1B60/5EE07BC9/5EB4178B" Ref="U?"  Part="3" 
F 0 "U7" H 7175 3525 50  0000 C CNN
F 1 "74HC32" H 7175 3434 50  0000 C CNN
F 2 "artemisa:DIP-14_300" H 7150 3200 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT32.pdf" H 7150 3200 50  0001 C CNN
	3    7150 3200
	1    0    0    -1  
$EndComp
$Comp
L artemisa:74HC32 U?
U 4 2 5EB41791
P 7150 3850
AR Path="/5EB41791" Ref="U?"  Part="4" 
AR Path="/5E974557/5EB41791" Ref="U7"  Part="4" 
AR Path="/5EB649E5/5EB76C70/5EB41791" Ref="U?"  Part="4" 
AR Path="/5EDF1B60/5EE07BC9/5EB41791" Ref="U?"  Part="4" 
F 0 "U7" H 7175 4175 50  0000 C CNN
F 1 "74HC32" H 7175 4084 50  0000 C CNN
F 2 "artemisa:DIP-14_300" H 7150 3850 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT32.pdf" H 7150 3850 50  0001 C CNN
	4    7150 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 3100 6550 3100
Wire Wire Line
	6550 3100 6550 3300
Wire Wire Line
	6750 3300 6550 3300
Connection ~ 6550 3300
Wire Wire Line
	6550 3300 6550 3750
Wire Wire Line
	6750 3750 6550 3750
Connection ~ 6550 3750
Wire Wire Line
	6550 3750 6550 3950
Wire Wire Line
	6750 3950 6550 3950
Connection ~ 6550 3950
Wire Wire Line
	6550 3950 6550 4200
NoConn ~ 7600 3200
NoConn ~ 7600 3850
$Comp
L artemisa:GND #PWR?
U 1 1 5EB417A4
P 6550 4200
AR Path="/5EB417A4" Ref="#PWR?"  Part="1" 
AR Path="/5E974557/5EB417A4" Ref="#PWR0115"  Part="1" 
AR Path="/5EB649E5/5EB76C70/5EB417A4" Ref="#PWR?"  Part="1" 
AR Path="/5EDF1B60/5EE07BC9/5EB417A4" Ref="#PWR?"  Part="1" 
F 0 "#PWR0115" H 6550 4100 60  0001 C CNN
F 1 "GND" H 6550 4300 60  0001 C CNN
F 2 "" H 6550 4200 60  0001 C CNN
F 3 "" H 6550 4200 60  0001 C CNN
	1    6550 4200
	1    0    0    -1  
$EndComp
$EndSCHEMATC
