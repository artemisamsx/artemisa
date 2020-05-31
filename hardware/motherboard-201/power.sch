EESchema Schematic File Version 4
LIBS:motherboard-201-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 12
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
L artemisa:PWR_conn J1
U 1 1 5B116116
P 2350 1750
F 0 "J1" H 2550 2100 60  0000 C CNN
F 1 "PWR_conn" H 2700 1150 60  0000 C CNN
F 2 "artemisa:Jack_55_21" H 2350 1650 60  0001 C CNN
F 3 "" H 2350 1650 60  0001 C CNN
	1    2350 1750
	-1   0    0    -1  
$EndComp
$Comp
L artemisa:Cap C19
U 1 1 5B1174A8
P 3800 3850
F 0 "C19" V 3850 3900 50  0000 L CNN
F 1 "100nF" V 3850 3550 50  0000 L CNN
F 2 "artemisa:C_1206" H 3800 3850 50  0001 C CNN
F 3 "" H 3800 3850 50  0001 C CNN
	1    3800 3850
	1    0    0    -1  
$EndComp
$Comp
L artemisa:Cap C14
U 1 1 5B1176C3
P 6700 3900
F 0 "C14" V 6750 3950 50  0000 L CNN
F 1 "100nF" V 6750 3600 50  0000 L CNN
F 2 "artemisa:C_1206" H 6700 3900 50  0001 C CNN
F 3 "" H 6700 3900 50  0001 C CNN
	1    6700 3900
	1    0    0    -1  
$EndComp
$Comp
L artemisa:Cap C18
U 1 1 5B117B03
P 2800 3850
F 0 "C18" V 2850 3900 50  0000 L CNN
F 1 "100nF" V 2850 3550 50  0000 L CNN
F 2 "artemisa:C_1206" H 2800 3850 50  0001 C CNN
F 3 "" H 2800 3850 50  0001 C CNN
	1    2800 3850
	1    0    0    -1  
$EndComp
$Comp
L artemisa:Cap C20
U 1 1 5B117B0C
P 4800 3850
F 0 "C20" V 4850 3900 50  0000 L CNN
F 1 "100nF" V 4850 3550 50  0000 L CNN
F 2 "artemisa:C_1206" H 4800 3850 50  0001 C CNN
F 3 "" H 4800 3850 50  0001 C CNN
	1    4800 3850
	1    0    0    -1  
$EndComp
$Comp
L artemisa:Cap C22
U 1 1 5B117D38
P 5750 3850
F 0 "C22" V 5800 3900 50  0000 L CNN
F 1 "100nF" V 5800 3550 50  0000 L CNN
F 2 "artemisa:C_1206" H 5750 3850 50  0001 C CNN
F 3 "" H 5750 3850 50  0001 C CNN
	1    5750 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 1000 2350 1300
Wire Wire Line
	2350 1000 2950 1000
Wire Wire Line
	2350 2500 2350 2550
Wire Wire Line
	2750 1700 2950 1700
Connection ~ 3300 1700
Wire Wire Line
	3300 1700 3300 2550
$Comp
L artemisa:VCC #PWR022
U 1 1 5BE412CC
P 2350 800
F 0 "#PWR022" H 2350 750 60  0001 C CNN
F 1 "VCC" H 2350 1050 60  0001 C CNN
F 2 "" H 2350 800 60  0001 C CNN
F 3 "" H 2350 800 60  0001 C CNN
	1    2350 800 
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 800  2350 1000
Connection ~ 2950 1000
Wire Wire Line
	2950 1000 3300 1000
$Comp
L artemisa:GND #PWR029
U 1 1 5BE48BCA
P 2350 2700
F 0 "#PWR029" H 2350 2600 60  0001 C CNN
F 1 "GND" H 2350 2800 60  0001 C CNN
F 2 "" H 2350 2700 60  0001 C CNN
F 3 "" H 2350 2700 60  0001 C CNN
	1    2350 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 2700 2350 2550
$Comp
L artemisa:CP C6
U 1 1 5BDB7C43
P 3300 1350
F 0 "C6" H 3300 1450 50  0000 L CNN
F 1 "10uF" H 3300 1250 50  0000 L CNN
F 2 "artemisa:Radial_capacitor" H 3300 1350 50  0001 C CNN
F 3 "" H 3300 1350 50  0001 C CNN
	1    3300 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 1000 3300 1250
Wire Wire Line
	3300 1450 3300 1700
$Comp
L artemisa:CP C5
U 1 1 5BDF1418
P 2950 1350
F 0 "C5" H 2950 1450 50  0000 L CNN
F 1 "100uF" H 2950 1250 50  0000 L CNN
F 2 "artemisa:Radial_capacitor" H 2950 1350 50  0001 C CNN
F 3 "" H 2950 1350 50  0001 C CNN
	1    2950 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 1000 2950 1250
Wire Wire Line
	2950 1450 2950 1700
Connection ~ 2950 1700
Wire Wire Line
	2950 1700 3300 1700
$Comp
L artemisa:LED D2
U 1 1 5BE7E85E
P 1500 1900
F 0 "D2" V 1550 2000 50  0000 L CNN
F 1 "LED" V 1450 2000 50  0000 L CNN
F 2 "artemisa:LED" H 1500 1900 50  0001 C CNN
F 3 "~" H 1500 1900 50  0001 C CNN
	1    1500 1900
	0    1    1    0   
$EndComp
Wire Wire Line
	2350 1000 1500 1000
Connection ~ 2350 1000
Wire Wire Line
	1500 2050 1500 2550
Wire Wire Line
	1500 2550 2350 2550
Connection ~ 2350 2550
$Comp
L artemisa:R R2
U 1 1 5BE9872A
P 1500 1450
F 0 "R2" V 1462 1520 60  0000 L CNN
F 1 "220" H 1450 1450 40  0000 L CNN
F 2 "artemisa:R_1206" V 1500 1450 60  0001 C CNN
F 3 "" V 1500 1450 60  0001 C CNN
	1    1500 1450
	0    1    1    0   
$EndComp
Wire Wire Line
	1500 1000 1500 1300
Wire Wire Line
	1500 1600 1500 1750
Text HLabel 8850 1550 2    60   Output ~ 0
~RESET
Text HLabel 8850 1650 2    60   Output ~ 0
RESET
Wire Wire Line
	7350 1550 8650 1550
$Comp
L artemisa:VCC #PWR036
U 1 1 5C9D2D26
P 6400 3500
F 0 "#PWR036" H 6400 3450 60  0001 C CNN
F 1 "VCC" H 6400 3750 60  0001 C CNN
F 2 "" H 6400 3500 60  0001 C CNN
F 3 "" H 6400 3500 60  0001 C CNN
	1    6400 3500
	1    0    0    -1  
$EndComp
$Comp
L artemisa:GND #PWR046
U 1 1 5C9D2D2C
P 6400 4300
F 0 "#PWR046" H 6400 4200 60  0001 C CNN
F 1 "GND" H 6400 4400 60  0001 C CNN
F 2 "" H 6400 4300 60  0001 C CNN
F 3 "" H 6400 4300 60  0001 C CNN
	1    6400 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 3500 6400 3550
Wire Wire Line
	6400 4200 6400 4250
Wire Wire Line
	6400 3550 6700 3550
Wire Wire Line
	6700 3550 6700 3800
Connection ~ 6400 3550
Wire Wire Line
	6400 3550 6400 3600
Wire Wire Line
	6700 4000 6700 4250
Wire Wire Line
	6700 4250 6400 4250
Connection ~ 6400 4250
Wire Wire Line
	6400 4250 6400 4300
$Comp
L artemisa:74HC139 U15
U 3 1 5CA017BE
P 6400 3900
F 0 "U15" V 6200 4100 50  0000 L CNN
F 1 "74HC139" V 6200 3550 50  0000 L CNN
F 2 "artemisa:SOIC-16" H 6400 3750 60  0001 C CNN
F 3 "" H 6400 3750 60  0001 C CNN
	3    6400 3900
	1    0    0    -1  
$EndComp
$Comp
L artemisa:VCC #PWR050
U 1 1 5CC6BCDD
P 2500 3450
F 0 "#PWR050" H 2500 3400 60  0001 C CNN
F 1 "VCC" H 2500 3700 60  0001 C CNN
F 2 "" H 2500 3450 60  0001 C CNN
F 3 "" H 2500 3450 60  0001 C CNN
	1    2500 3450
	1    0    0    -1  
$EndComp
$Comp
L artemisa:GND #PWR055
U 1 1 5CC6BCE3
P 2500 4250
F 0 "#PWR055" H 2500 4150 60  0001 C CNN
F 1 "GND" H 2500 4350 60  0001 C CNN
F 2 "" H 2500 4250 60  0001 C CNN
F 3 "" H 2500 4250 60  0001 C CNN
	1    2500 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 3450 2500 3500
Wire Wire Line
	2500 4150 2500 4200
Wire Wire Line
	2500 3500 2800 3500
Wire Wire Line
	2800 3500 2800 3750
Connection ~ 2500 3500
Wire Wire Line
	2500 3500 2500 3550
Wire Wire Line
	2800 3950 2800 4200
Wire Wire Line
	2800 4200 2500 4200
Connection ~ 2500 4200
Wire Wire Line
	2500 4200 2500 4250
$Comp
L artemisa:74LS07 U16
U 7 1 5CC7BF8C
P 2500 3850
F 0 "U16" V 2300 4050 50  0000 L CNN
F 1 "74LS07" V 2300 3500 50  0000 L CNN
F 2 "artemisa:SOIC-14" H 2500 3850 50  0001 C CNN
F 3 "" H 2500 3850 50  0001 C CNN
	7    2500 3850
	1    0    0    -1  
$EndComp
$Comp
L artemisa:VCC #PWR051
U 1 1 5CCEA730
P 3500 3450
F 0 "#PWR051" H 3500 3400 60  0001 C CNN
F 1 "VCC" H 3500 3700 60  0001 C CNN
F 2 "" H 3500 3450 60  0001 C CNN
F 3 "" H 3500 3450 60  0001 C CNN
	1    3500 3450
	1    0    0    -1  
$EndComp
$Comp
L artemisa:GND #PWR056
U 1 1 5CCEA736
P 3500 4250
F 0 "#PWR056" H 3500 4150 60  0001 C CNN
F 1 "GND" H 3500 4350 60  0001 C CNN
F 2 "" H 3500 4250 60  0001 C CNN
F 3 "" H 3500 4250 60  0001 C CNN
	1    3500 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 3450 3500 3500
Wire Wire Line
	3500 4150 3500 4200
Wire Wire Line
	3500 3500 3800 3500
Wire Wire Line
	3800 3500 3800 3750
Connection ~ 3500 3500
Wire Wire Line
	3500 3500 3500 3550
Wire Wire Line
	3800 3950 3800 4200
Wire Wire Line
	3800 4200 3500 4200
Connection ~ 3500 4200
Wire Wire Line
	3500 4200 3500 4250
$Comp
L artemisa:74HC74 U7
U 3 1 5CCFAF7F
P 3500 3850
F 0 "U7" V 3300 4050 50  0000 L CNN
F 1 "74HC74" V 3300 3500 50  0000 L CNN
F 2 "artemisa:SOIC-14" H 3500 3650 60  0001 C CNN
F 3 "" H 3500 3650 60  0001 C CNN
	3    3500 3850
	1    0    0    -1  
$EndComp
$Comp
L artemisa:VCC #PWR052
U 1 1 5CD0D94C
P 4500 3450
F 0 "#PWR052" H 4500 3400 60  0001 C CNN
F 1 "VCC" H 4500 3700 60  0001 C CNN
F 2 "" H 4500 3450 60  0001 C CNN
F 3 "" H 4500 3450 60  0001 C CNN
	1    4500 3450
	1    0    0    -1  
$EndComp
$Comp
L artemisa:GND #PWR057
U 1 1 5CD0D952
P 4500 4250
F 0 "#PWR057" H 4500 4150 60  0001 C CNN
F 1 "GND" H 4500 4350 60  0001 C CNN
F 2 "" H 4500 4250 60  0001 C CNN
F 3 "" H 4500 4250 60  0001 C CNN
	1    4500 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 3450 4500 3500
Wire Wire Line
	4500 4150 4500 4200
Wire Wire Line
	4500 3500 4800 3500
Wire Wire Line
	4800 3500 4800 3750
Connection ~ 4500 3500
Wire Wire Line
	4500 3500 4500 3550
Wire Wire Line
	4800 3950 4800 4200
Wire Wire Line
	4800 4200 4500 4200
Connection ~ 4500 4200
Wire Wire Line
	4500 4200 4500 4250
$Comp
L artemisa:74HC74 U17
U 3 1 5CD0D962
P 4500 3850
F 0 "U17" V 4300 4050 50  0000 L CNN
F 1 "74HC74" V 4300 3500 50  0000 L CNN
F 2 "artemisa:SOIC-14" H 4500 3650 60  0001 C CNN
F 3 "" H 4500 3650 60  0001 C CNN
	3    4500 3850
	1    0    0    -1  
$EndComp
$Comp
L artemisa:VCC #PWR054
U 1 1 5DB5FE33
P 5450 3450
F 0 "#PWR054" H 5450 3400 60  0001 C CNN
F 1 "VCC" H 5450 3700 60  0001 C CNN
F 2 "" H 5450 3450 60  0001 C CNN
F 3 "" H 5450 3450 60  0001 C CNN
	1    5450 3450
	1    0    0    -1  
$EndComp
$Comp
L artemisa:GND #PWR059
U 1 1 5DB5FE39
P 5450 4250
F 0 "#PWR059" H 5450 4150 60  0001 C CNN
F 1 "GND" H 5450 4350 60  0001 C CNN
F 2 "" H 5450 4250 60  0001 C CNN
F 3 "" H 5450 4250 60  0001 C CNN
	1    5450 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 3450 5450 3500
Wire Wire Line
	5450 4150 5450 4200
Wire Wire Line
	5450 3500 5750 3500
Wire Wire Line
	5750 3500 5750 3750
Connection ~ 5450 3500
Wire Wire Line
	5450 3500 5450 3550
Wire Wire Line
	5750 4200 5450 4200
Connection ~ 5450 4200
Wire Wire Line
	5450 4200 5450 4250
Wire Wire Line
	5750 3950 5750 4200
$Comp
L artemisa:LM311 U19
U 2 1 5DB6FD10
P 5750 3850
F 0 "U19" V 5250 4050 50  0000 L CNN
F 1 "LM311" V 5250 3500 50  0000 L CNN
F 2 "artemisa:SOIC-8_150" H 5750 3850 60  0001 C CNN
F 3 "" H 5750 3850 60  0001 C CNN
	2    5750 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 2550 3300 2550
$Comp
L artemisa:TL7705 U2
U 1 1 5EF857AB
P 6700 1750
F 0 "U2" H 7050 2100 60  0000 C CNN
F 1 "TL7705" H 7000 1400 60  0000 C CNN
F 2 "artemisa:SOIC-8_150" H 6700 1650 60  0001 C CNN
F 3 "" H 6700 1650 60  0001 C CNN
	1    6700 1750
	1    0    0    -1  
$EndComp
$Comp
L artemisa:VCC #PWR014
U 1 1 5EF98F94
P 5700 1000
F 0 "#PWR014" H 5700 950 60  0001 C CNN
F 1 "VCC" H 5700 1250 60  0001 C CNN
F 2 "" H 5700 1000 60  0001 C CNN
F 3 "" H 5700 1000 60  0001 C CNN
	1    5700 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 1000 5700 1550
Wire Wire Line
	5700 1550 6050 1550
Wire Wire Line
	6050 1750 5700 1750
Wire Wire Line
	5700 1750 5700 1550
Connection ~ 5700 1550
$Comp
L artemisa:Cap C7
U 1 1 5EFA86EA
P 5700 2150
F 0 "C7" H 5500 2150 50  0000 L CNN
F 1 "100nF" H 5800 2150 50  0000 L CNN
F 2 "artemisa:C_1206" H 5700 2150 50  0001 C CNN
F 3 "" H 5700 2150 50  0001 C CNN
	1    5700 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 1950 5700 1950
Wire Wire Line
	5700 1950 5700 2050
$Comp
L artemisa:GND #PWR025
U 1 1 5EFAD178
P 5700 2350
F 0 "#PWR025" H 5700 2250 60  0001 C CNN
F 1 "GND" H 5700 2450 60  0001 C CNN
F 2 "" H 5700 2350 60  0001 C CNN
F 3 "" H 5700 2350 60  0001 C CNN
	1    5700 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 2350 5700 2250
Wire Wire Line
	8050 1950 8050 2050
$Comp
L artemisa:GND #PWR027
U 1 1 5EFB4500
P 8050 2350
F 0 "#PWR027" H 8050 2250 60  0001 C CNN
F 1 "GND" H 8050 2450 60  0001 C CNN
F 2 "" H 8050 2350 60  0001 C CNN
F 3 "" H 8050 2350 60  0001 C CNN
	1    8050 2350
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8050 2350 8050 2250
$Comp
L artemisa:GND #PWR026
U 1 1 5EFB8198
P 6700 2350
F 0 "#PWR026" H 6700 2250 60  0001 C CNN
F 1 "GND" H 6700 2450 60  0001 C CNN
F 2 "" H 6700 2350 60  0001 C CNN
F 3 "" H 6700 2350 60  0001 C CNN
	1    6700 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 2350 6700 2250
Wire Wire Line
	7350 1650 8650 1650
$Comp
L artemisa:R R1
U 1 1 5EFD9E4F
P 8650 1250
F 0 "R1" V 8612 1320 60  0000 L CNN
F 1 "10K" H 8600 1250 40  0000 L CNN
F 2 "artemisa:R_1206" V 8650 1250 60  0001 C CNN
F 3 "" V 8650 1250 60  0001 C CNN
	1    8650 1250
	0    1    1    0   
$EndComp
$Comp
L artemisa:VCC #PWR024
U 1 1 5EFDA7E2
P 8650 1000
F 0 "#PWR024" H 8650 950 60  0001 C CNN
F 1 "VCC" H 8650 1250 60  0001 C CNN
F 2 "" H 8650 1000 60  0001 C CNN
F 3 "" H 8650 1000 60  0001 C CNN
	1    8650 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8650 1000 8650 1100
Wire Wire Line
	8650 1400 8650 1550
Connection ~ 8650 1550
Wire Wire Line
	8650 1550 8850 1550
$Comp
L artemisa:R R4
U 1 1 5EFE45D7
P 8650 1950
F 0 "R4" V 8612 2020 60  0000 L CNN
F 1 "10K" H 8600 1950 40  0000 L CNN
F 2 "artemisa:R_1206" V 8650 1950 60  0001 C CNN
F 3 "" V 8650 1950 60  0001 C CNN
	1    8650 1950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8650 1800 8650 1650
Connection ~ 8650 1650
Wire Wire Line
	8650 1650 8850 1650
$Comp
L artemisa:GND #PWR028
U 1 1 5EFEE7B1
P 8650 2350
F 0 "#PWR028" H 8650 2250 60  0001 C CNN
F 1 "GND" H 8650 2450 60  0001 C CNN
F 2 "" H 8650 2350 60  0001 C CNN
F 3 "" H 8650 2350 60  0001 C CNN
	1    8650 2350
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8650 2100 8650 2350
$Comp
L artemisa:VCC #PWR023
U 1 1 5EFFA796
P 6700 1000
F 0 "#PWR023" H 6700 950 60  0001 C CNN
F 1 "VCC" H 6700 1250 60  0001 C CNN
F 2 "" H 6700 1000 60  0001 C CNN
F 3 "" H 6700 1000 60  0001 C CNN
	1    6700 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 1000 6700 1150
$Comp
L artemisa:R R3
U 1 1 5F00ED06
P 7650 1950
F 0 "R3" H 7600 2050 60  0000 L CNN
F 1 "560" H 7600 1950 40  0000 L CNN
F 2 "artemisa:R_1206" V 7650 1950 60  0001 C CNN
F 3 "" V 7650 1950 60  0001 C CNN
	1    7650 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	7800 1950 8050 1950
Wire Wire Line
	7500 1950 7350 1950
$Comp
L artemisa:Cap C15
U 1 1 5F02416F
P 8050 2150
F 0 "C15" H 7800 2150 50  0000 L CNN
F 1 "1uF" H 8150 2150 50  0000 L CNN
F 2 "artemisa:C_1206" H 8050 2150 50  0001 C CNN
F 3 "" H 8050 2150 50  0001 C CNN
	1    8050 2150
	1    0    0    -1  
$EndComp
$Comp
L artemisa:Cap C8
U 1 1 5ED60E8E
P 7150 1150
F 0 "C8" V 7050 1000 50  0000 L CNN
F 1 "100nF" V 7050 1200 50  0000 L CNN
F 2 "artemisa:C_1206" H 7150 1150 50  0001 C CNN
F 3 "" H 7150 1150 50  0001 C CNN
	1    7150 1150
	0    1    1    0   
$EndComp
Wire Wire Line
	7050 1150 6700 1150
Connection ~ 6700 1150
Wire Wire Line
	6700 1150 6700 1250
$Comp
L artemisa:GND #PWR030
U 1 1 5ED63334
P 7500 1300
F 0 "#PWR030" H 7500 1200 60  0001 C CNN
F 1 "GND" H 7500 1400 60  0001 C CNN
F 2 "" H 7500 1300 60  0001 C CNN
F 3 "" H 7500 1300 60  0001 C CNN
	1    7500 1300
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7500 1300 7500 1150
Wire Wire Line
	7500 1150 7250 1150
$EndSCHEMATC