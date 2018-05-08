EESchema Schematic File Version 2
LIBS:artemsx
LIBS:power
LIBS:device
LIBS:switches
LIBS:relays
LIBS:motors
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:artemsx-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 10 11
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
L MSX_Slot J2
U 1 1 5AE91CDF
P 5050 3450
F 0 "J2" H 5100 4750 50  0000 C CNN
F 1 "MSX_Slot" H 5100 2150 50  0000 C CNN
F 2 "" H 5050 3450 50  0001 C CNN
F 3 "" H 5050 3450 50  0001 C CNN
	1    5050 3450
	1    0    0    -1  
$EndComp
Text HLabel 2200 5400 0    60   Input ~ 0
ADDR[0..15]
Entry Wire Line
	3850 3050 3750 3150
Entry Wire Line
	3850 3150 3750 3250
Entry Wire Line
	3850 3250 3750 3350
Entry Wire Line
	3850 3350 3750 3450
Entry Wire Line
	3850 3450 3750 3550
Entry Wire Line
	3850 3550 3750 3650
Entry Wire Line
	3850 3650 3750 3750
Entry Wire Line
	3850 3750 3750 3850
Text Label 3900 3050 0    60   ~ 0
ADDR9
Text Label 3900 3150 0    60   ~ 0
ADDR11
Text Label 3900 3250 0    60   ~ 0
ADDR7
Text Label 3900 3350 0    60   ~ 0
ADDR12
Text Label 3900 3450 0    60   ~ 0
ADDR14
Text Label 3900 3550 0    60   ~ 0
ADDR1
Text Label 3900 3650 0    60   ~ 0
ADDR3
Text Label 3900 3750 0    60   ~ 0
ADDR5
Wire Wire Line
	3850 3050 4850 3050
Wire Wire Line
	4850 3150 3850 3150
Wire Wire Line
	3850 3250 4850 3250
Wire Wire Line
	4850 3350 3850 3350
Wire Wire Line
	3850 3450 4850 3450
Wire Wire Line
	4850 3550 3850 3550
Wire Wire Line
	3850 3650 4850 3650
Wire Wire Line
	4850 3750 3850 3750
Entry Bus Bus
	3750 5300 3650 5400
Wire Bus Line
	3750 3100 3750 5300
Wire Bus Line
	2200 5400 9800 5400
Text HLabel 2200 5750 0    60   BiDi ~ 0
DATA[0..7]
Entry Bus Bus
	4000 5650 3900 5750
Wire Bus Line
	4000 3950 4000 5650
Wire Bus Line
	2200 5750 9550 5750
Entry Wire Line
	4100 3850 4000 3950
Entry Wire Line
	4100 3950 4000 4050
Entry Wire Line
	4100 4050 4000 4150
Entry Wire Line
	4100 4150 4000 4250
Text Label 4150 3850 0    60   ~ 0
DATA1
Text Label 4150 3950 0    60   ~ 0
DATA3
Text Label 4150 4050 0    60   ~ 0
DATA5
Text Label 4150 4150 0    60   ~ 0
DATA7
Wire Wire Line
	4100 3850 4850 3850
Wire Wire Line
	4850 3950 4100 3950
Wire Wire Line
	4100 4050 4850 4050
Wire Wire Line
	4850 4150 4100 4150
Entry Wire Line
	6350 3050 6450 3150
Entry Wire Line
	6350 3150 6450 3250
Entry Wire Line
	6350 3250 6450 3350
Entry Wire Line
	6350 3350 6450 3450
Entry Wire Line
	6350 3450 6450 3550
Entry Wire Line
	6350 3550 6450 3650
Entry Wire Line
	6350 3650 6450 3750
Entry Wire Line
	6350 3750 6450 3850
Text Label 6300 3050 2    60   ~ 0
ADDR15
Text Label 6300 3150 2    60   ~ 0
ADDR10
Text Label 6300 3250 2    60   ~ 0
ADDR6
Text Label 6300 3350 2    60   ~ 0
ADDR8
Text Label 6300 3450 2    60   ~ 0
ADDR13
Text Label 6300 3550 2    60   ~ 0
ADDR0
Text Label 6300 3650 2    60   ~ 0
ADDR2
Text Label 6300 3750 2    60   ~ 0
ADDR4
Wire Wire Line
	6350 3050 5350 3050
Wire Wire Line
	5350 3150 6350 3150
Wire Wire Line
	6350 3250 5350 3250
Wire Wire Line
	5350 3350 6350 3350
Wire Wire Line
	6350 3450 5350 3450
Wire Wire Line
	5350 3550 6350 3550
Wire Wire Line
	6350 3650 5350 3650
Wire Wire Line
	5350 3750 6350 3750
Entry Wire Line
	6100 3850 6200 3950
Entry Wire Line
	6100 3950 6200 4050
Entry Wire Line
	6100 4050 6200 4150
Entry Wire Line
	6100 4150 6200 4250
Text Label 6050 3850 2    60   ~ 0
DATA0
Text Label 6050 3950 2    60   ~ 0
DATA2
Text Label 6050 4050 2    60   ~ 0
DATA4
Text Label 6050 4150 2    60   ~ 0
DATA6
Wire Wire Line
	6100 3850 5350 3850
Wire Wire Line
	5350 3950 6100 3950
Wire Wire Line
	6100 4050 5350 4050
Wire Wire Line
	5350 4150 6100 4150
Entry Bus Bus
	6200 5650 6100 5750
Wire Bus Line
	6200 3950 6200 5650
Entry Bus Bus
	6450 5300 6350 5400
Wire Bus Line
	6450 3100 6450 5300
Text Notes 4800 5350 0    60   ~ 0
ADDRESS BUS
Text Notes 4900 5700 0    60   ~ 0
DATA BUS
$Comp
L GND #PWR044
U 1 1 5AE9275E
P 4150 4450
F 0 "#PWR044" H 4150 4200 50  0001 C CNN
F 1 "GND" H 4150 4300 50  0000 C CNN
F 2 "" H 4150 4450 50  0001 C CNN
F 3 "" H 4150 4450 50  0001 C CNN
	1    4150 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 4250 4150 4250
Wire Wire Line
	4150 4250 4150 4450
Wire Wire Line
	4850 4350 4150 4350
Connection ~ 4150 4350
$Comp
L VCC #PWR045
U 1 1 5AE927BD
P 4350 4950
F 0 "#PWR045" H 4350 4800 50  0001 C CNN
F 1 "VCC" H 4350 5100 50  0000 C CNN
F 2 "" H 4350 4950 50  0001 C CNN
F 3 "" H 4350 4950 50  0001 C CNN
	1    4350 4950
	-1   0    0    1   
$EndComp
Wire Wire Line
	4850 4450 4350 4450
Wire Wire Line
	4350 4450 4350 4950
Wire Wire Line
	4850 4550 4350 4550
Connection ~ 4350 4550
Text Label 4100 2950 0    60   ~ 0
~RESET
Text Label 4100 2850 0    60   ~ 0
~WR
Text Label 4100 2750 0    60   ~ 0
~IORQ
Text Label 4100 2650 0    60   ~ 0
~M1
Text Label 4100 2550 0    60   ~ 0
~EXTWAIT
Text Label 4100 2350 0    60   ~ 0
~CS12
Text Label 4100 2250 0    60   ~ 0
~CS1
Wire Wire Line
	4100 2950 4850 2950
Wire Wire Line
	4850 2850 4100 2850
Wire Wire Line
	4100 2750 4850 2750
Wire Wire Line
	4850 2650 4100 2650
Wire Wire Line
	4100 2550 4850 2550
Wire Wire Line
	4850 2350 4100 2350
Wire Wire Line
	4100 2250 4850 2250
NoConn ~ 4850 2450
Entry Wire Line
	4000 2850 4100 2950
Entry Wire Line
	4000 2750 4100 2850
Entry Wire Line
	4000 2650 4100 2750
Entry Wire Line
	4000 2550 4100 2650
Entry Wire Line
	4000 2450 4100 2550
Entry Wire Line
	4000 2250 4100 2350
Entry Wire Line
	4000 2150 4100 2250
Wire Bus Line
	4000 1750 4000 2850
Text Label 6100 2850 2    60   ~ 0
~RD
Text Label 6100 2750 2    60   ~ 0
~MREQ
Text Label 6100 2550 2    60   ~ 0
~EXTINT
Text Label 6100 2450 2    60   ~ 0
~RFSH
Text Label 6100 2350 2    60   ~ 0
~SLTSL2
Text Label 6100 2250 2    60   ~ 0
~CS2
Wire Wire Line
	6100 2850 5350 2850
Wire Wire Line
	5350 2750 6100 2750
Wire Wire Line
	5350 2550 6100 2550
Wire Wire Line
	6100 2450 5350 2450
Wire Wire Line
	5350 2350 6100 2350
Wire Wire Line
	6100 2250 5350 2250
Entry Wire Line
	6200 2750 6100 2850
Entry Wire Line
	6200 2650 6100 2750
Entry Wire Line
	6200 2450 6100 2550
Entry Wire Line
	6200 2350 6100 2450
Entry Wire Line
	6200 2250 6100 2350
Entry Wire Line
	6200 2150 6100 2250
NoConn ~ 5350 2950
Wire Bus Line
	6200 1750 6200 2850
$Comp
L -12VA #PWR046
U 1 1 5AE92EE5
P 6050 4750
F 0 "#PWR046" H 6050 4600 50  0001 C CNN
F 1 "-12VA" H 6050 4890 50  0000 C CNN
F 2 "" H 6050 4750 50  0001 C CNN
F 3 "" H 6050 4750 50  0001 C CNN
	1    6050 4750
	-1   0    0    1   
$EndComp
$Comp
L +12VA #PWR047
U 1 1 5AE92EFB
P 6050 4450
F 0 "#PWR047" H 6050 4300 50  0001 C CNN
F 1 "+12VA" H 6050 4590 50  0000 C CNN
F 2 "" H 6050 4450 50  0001 C CNN
F 3 "" H 6050 4450 50  0001 C CNN
	1    6050 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 4450 6050 4550
Wire Wire Line
	6050 4550 5350 4550
Wire Wire Line
	5350 4650 6050 4650
Wire Wire Line
	6050 4650 6050 4750
NoConn ~ 5350 4350
NoConn ~ 5350 4450
Text Label 6100 2950 2    60   ~ 0
CLK
Wire Wire Line
	5550 2950 6100 2950
Entry Wire Line
	6200 2850 6100 2950
Wire Wire Line
	5550 2950 5550 4250
Wire Wire Line
	5550 4250 5350 4250
Text Label 4100 2450 0    60   ~ 0
SOUND
Wire Wire Line
	4100 2450 4650 2450
Entry Wire Line
	4000 2350 4100 2450
Wire Wire Line
	4650 2450 4650 4650
Wire Wire Line
	4650 4650 4850 4650
$Comp
L MSX_Slot J3
U 1 1 5AE938CD
P 8500 3450
F 0 "J3" H 8550 4750 50  0000 C CNN
F 1 "MSX_Slot" H 8550 2150 50  0000 C CNN
F 2 "" H 8500 3450 50  0001 C CNN
F 3 "" H 8500 3450 50  0001 C CNN
	1    8500 3450
	1    0    0    -1  
$EndComp
Entry Wire Line
	7300 3050 7200 3150
Entry Wire Line
	7300 3150 7200 3250
Entry Wire Line
	7300 3250 7200 3350
Entry Wire Line
	7300 3350 7200 3450
Entry Wire Line
	7300 3450 7200 3550
Entry Wire Line
	7300 3550 7200 3650
Entry Wire Line
	7300 3650 7200 3750
Entry Wire Line
	7300 3750 7200 3850
Text Label 7350 3050 0    60   ~ 0
ADDR9
Text Label 7350 3150 0    60   ~ 0
ADDR11
Text Label 7350 3250 0    60   ~ 0
ADDR7
Text Label 7350 3350 0    60   ~ 0
ADDR12
Text Label 7350 3450 0    60   ~ 0
ADDR14
Text Label 7350 3550 0    60   ~ 0
ADDR1
Text Label 7350 3650 0    60   ~ 0
ADDR3
Text Label 7350 3750 0    60   ~ 0
ADDR5
Wire Wire Line
	7300 3050 8300 3050
Wire Wire Line
	8300 3150 7300 3150
Wire Wire Line
	7300 3250 8300 3250
Wire Wire Line
	8300 3350 7300 3350
Wire Wire Line
	7300 3450 8300 3450
Wire Wire Line
	8300 3550 7300 3550
Wire Wire Line
	7300 3650 8300 3650
Wire Wire Line
	8300 3750 7300 3750
Entry Bus Bus
	7200 5300 7100 5400
Wire Bus Line
	7200 3100 7200 5300
Entry Bus Bus
	7450 5650 7350 5750
Wire Bus Line
	7450 3950 7450 5650
Entry Wire Line
	7550 3850 7450 3950
Entry Wire Line
	7550 3950 7450 4050
Entry Wire Line
	7550 4050 7450 4150
Entry Wire Line
	7550 4150 7450 4250
Text Label 7600 3850 0    60   ~ 0
DATA1
Text Label 7600 3950 0    60   ~ 0
DATA3
Text Label 7600 4050 0    60   ~ 0
DATA5
Text Label 7600 4150 0    60   ~ 0
DATA7
Wire Wire Line
	7550 3850 8300 3850
Wire Wire Line
	8300 3950 7550 3950
Wire Wire Line
	7550 4050 8300 4050
Wire Wire Line
	8300 4150 7550 4150
Entry Wire Line
	9800 3050 9900 3150
Entry Wire Line
	9800 3150 9900 3250
Entry Wire Line
	9800 3250 9900 3350
Entry Wire Line
	9800 3350 9900 3450
Entry Wire Line
	9800 3450 9900 3550
Entry Wire Line
	9800 3550 9900 3650
Entry Wire Line
	9800 3650 9900 3750
Entry Wire Line
	9800 3750 9900 3850
Text Label 9750 3050 2    60   ~ 0
ADDR15
Text Label 9750 3150 2    60   ~ 0
ADDR10
Text Label 9750 3250 2    60   ~ 0
ADDR6
Text Label 9750 3350 2    60   ~ 0
ADDR8
Text Label 9750 3450 2    60   ~ 0
ADDR13
Text Label 9750 3550 2    60   ~ 0
ADDR0
Text Label 9750 3650 2    60   ~ 0
ADDR2
Text Label 9750 3750 2    60   ~ 0
ADDR4
Wire Wire Line
	9800 3050 8800 3050
Wire Wire Line
	8800 3150 9800 3150
Wire Wire Line
	9800 3250 8800 3250
Wire Wire Line
	8800 3350 9800 3350
Wire Wire Line
	9800 3450 8800 3450
Wire Wire Line
	8800 3550 9800 3550
Wire Wire Line
	9800 3650 8800 3650
Wire Wire Line
	8800 3750 9800 3750
Entry Wire Line
	9550 3850 9650 3950
Entry Wire Line
	9550 3950 9650 4050
Entry Wire Line
	9550 4050 9650 4150
Entry Wire Line
	9550 4150 9650 4250
Text Label 9500 3850 2    60   ~ 0
DATA0
Text Label 9500 3950 2    60   ~ 0
DATA2
Text Label 9500 4050 2    60   ~ 0
DATA4
Text Label 9500 4150 2    60   ~ 0
DATA6
Wire Wire Line
	9550 3850 8800 3850
Wire Wire Line
	8800 3950 9550 3950
Wire Wire Line
	9550 4050 8800 4050
Wire Wire Line
	8800 4150 9550 4150
Entry Bus Bus
	9650 5650 9550 5750
Wire Bus Line
	9650 3950 9650 5650
Entry Bus Bus
	9900 5300 9800 5400
Wire Bus Line
	9900 3100 9900 5300
Text Notes 8250 5350 0    60   ~ 0
ADDRESS BUS
Text Notes 8350 5700 0    60   ~ 0
DATA BUS
$Comp
L GND #PWR048
U 1 1 5AE93927
P 7600 4450
F 0 "#PWR048" H 7600 4200 50  0001 C CNN
F 1 "GND" H 7600 4300 50  0000 C CNN
F 2 "" H 7600 4450 50  0001 C CNN
F 3 "" H 7600 4450 50  0001 C CNN
	1    7600 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 4250 7600 4250
Wire Wire Line
	7600 4250 7600 4450
Wire Wire Line
	8300 4350 7600 4350
Connection ~ 7600 4350
$Comp
L VCC #PWR049
U 1 1 5AE93931
P 7800 4950
F 0 "#PWR049" H 7800 4800 50  0001 C CNN
F 1 "VCC" H 7800 5100 50  0000 C CNN
F 2 "" H 7800 4950 50  0001 C CNN
F 3 "" H 7800 4950 50  0001 C CNN
	1    7800 4950
	-1   0    0    1   
$EndComp
Wire Wire Line
	8300 4450 7800 4450
Wire Wire Line
	7800 4450 7800 4950
Wire Wire Line
	8300 4550 7800 4550
Connection ~ 7800 4550
Text Label 7550 2950 0    60   ~ 0
~RESET
Text Label 7550 2850 0    60   ~ 0
~WR
Text Label 7550 2750 0    60   ~ 0
~IORQ
Text Label 7550 2650 0    60   ~ 0
~M1
Text Label 7550 2550 0    60   ~ 0
~EXTWAIT
Text Label 7550 2350 0    60   ~ 0
~CS12
Text Label 7550 2250 0    60   ~ 0
~CS1
Wire Wire Line
	7550 2950 8300 2950
Wire Wire Line
	8300 2850 7550 2850
Wire Wire Line
	7550 2750 8300 2750
Wire Wire Line
	8300 2650 7550 2650
Wire Wire Line
	7550 2550 8300 2550
Wire Wire Line
	8300 2350 7550 2350
Wire Wire Line
	7550 2250 8300 2250
NoConn ~ 8300 2450
Entry Wire Line
	7450 2850 7550 2950
Entry Wire Line
	7450 2750 7550 2850
Entry Wire Line
	7450 2650 7550 2750
Entry Wire Line
	7450 2550 7550 2650
Entry Wire Line
	7450 2450 7550 2550
Entry Wire Line
	7450 2250 7550 2350
Entry Wire Line
	7450 2150 7550 2250
Wire Bus Line
	7450 1750 7450 2850
Text Label 9550 2850 2    60   ~ 0
~RD
Text Label 9550 2750 2    60   ~ 0
~MREQ
Text Label 9550 2550 2    60   ~ 0
~EXTINT
Text Label 9550 2450 2    60   ~ 0
~RFSH
Text Label 9550 2350 2    60   ~ 0
~SLTSL3
Text Label 9550 2250 2    60   ~ 0
~CS2
Wire Wire Line
	9550 2850 8800 2850
Wire Wire Line
	8800 2750 9550 2750
Wire Wire Line
	8800 2550 9550 2550
Wire Wire Line
	9550 2450 8800 2450
Wire Wire Line
	8800 2350 9550 2350
Wire Wire Line
	9550 2250 8800 2250
Entry Wire Line
	9650 2750 9550 2850
Entry Wire Line
	9650 2650 9550 2750
Entry Wire Line
	9650 2450 9550 2550
Entry Wire Line
	9650 2350 9550 2450
Entry Wire Line
	9650 2250 9550 2350
Entry Wire Line
	9650 2150 9550 2250
NoConn ~ 8800 2950
Wire Bus Line
	9650 1750 9650 2850
$Comp
L -12VA #PWR050
U 1 1 5AE93969
P 9500 4750
F 0 "#PWR050" H 9500 4600 50  0001 C CNN
F 1 "-12VA" H 9500 4890 50  0000 C CNN
F 2 "" H 9500 4750 50  0001 C CNN
F 3 "" H 9500 4750 50  0001 C CNN
	1    9500 4750
	-1   0    0    1   
$EndComp
$Comp
L +12VA #PWR051
U 1 1 5AE9396F
P 9500 4450
F 0 "#PWR051" H 9500 4300 50  0001 C CNN
F 1 "+12VA" H 9500 4590 50  0000 C CNN
F 2 "" H 9500 4450 50  0001 C CNN
F 3 "" H 9500 4450 50  0001 C CNN
	1    9500 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 4450 9500 4550
Wire Wire Line
	9500 4550 8800 4550
Wire Wire Line
	8800 4650 9500 4650
Wire Wire Line
	9500 4650 9500 4750
NoConn ~ 8800 4350
NoConn ~ 8800 4450
Text Label 9550 2950 2    60   ~ 0
CLK
Wire Wire Line
	9000 2950 9550 2950
Entry Wire Line
	9650 2850 9550 2950
Wire Wire Line
	9000 2950 9000 4250
Wire Wire Line
	9000 4250 8800 4250
Text Label 7550 2450 0    60   ~ 0
SOUND
Wire Wire Line
	7550 2450 8100 2450
Entry Wire Line
	7450 2350 7550 2450
Wire Wire Line
	8100 2450 8100 4650
Wire Wire Line
	8100 4650 8300 4650
Entry Bus Bus
	9550 1650 9650 1750
Entry Bus Bus
	7350 1650 7450 1750
Entry Bus Bus
	6100 1650 6200 1750
Entry Bus Bus
	3900 1650 4000 1750
Wire Bus Line
	3150 1650 9550 1650
Text Label 2950 3250 2    60   ~ 0
~RESET
Text Label 2950 2950 2    60   ~ 0
~WR
Text Label 2950 2650 2    60   ~ 0
~IORQ
Text Label 2950 2750 2    60   ~ 0
~M1
Text Label 2950 4950 2    60   ~ 0
~EXTWAIT
Text Label 2950 2350 2    60   ~ 0
~CS12
Text Label 2950 2150 2    60   ~ 0
~CS1
Wire Wire Line
	2950 3250 2200 3250
Wire Wire Line
	2200 2950 2950 2950
Wire Wire Line
	2950 2650 2200 2650
Wire Wire Line
	2200 2750 2950 2750
Wire Wire Line
	2950 4950 2200 4950
Wire Wire Line
	2200 2350 2950 2350
Wire Wire Line
	2950 2150 2200 2150
Entry Wire Line
	3050 3150 2950 3250
Entry Wire Line
	3050 2850 2950 2950
Entry Wire Line
	3050 2550 2950 2650
Entry Wire Line
	3050 2650 2950 2750
Entry Wire Line
	3050 4850 2950 4950
Entry Wire Line
	3050 2250 2950 2350
Entry Wire Line
	3050 2050 2950 2150
Text Label 2950 3550 2    60   ~ 0
SOUND
Wire Wire Line
	2950 3550 2200 3550
Entry Wire Line
	3050 3450 2950 3550
Text Label 2950 2850 2    60   ~ 0
~RD
Text Label 2950 2550 2    60   ~ 0
~MREQ
Text Label 2950 4200 2    60   ~ 0
~EXTINT
Text Label 2950 3150 2    60   ~ 0
~RFSH
Text Label 2950 2050 2    60   ~ 0
~SLTSL3
Text Label 2950 2250 2    60   ~ 0
~CS2
Wire Wire Line
	2950 2850 2200 2850
Wire Wire Line
	2200 2550 2950 2550
Wire Wire Line
	2200 4200 2950 4200
Wire Wire Line
	2950 3150 2200 3150
Wire Wire Line
	2200 2050 2950 2050
Wire Wire Line
	2950 2250 2200 2250
Entry Wire Line
	3050 2750 2950 2850
Entry Wire Line
	3050 2450 2950 2550
Entry Wire Line
	3050 4100 2950 4200
Entry Wire Line
	3050 3050 2950 3150
Entry Wire Line
	3050 1950 2950 2050
Entry Wire Line
	3050 2150 2950 2250
Text Label 2950 3350 2    60   ~ 0
CLK
Wire Wire Line
	2200 3350 2950 3350
Entry Wire Line
	3050 3250 2950 3350
Text Label 2950 1950 2    60   ~ 0
~SLTSL2
Wire Wire Line
	2200 1950 2950 1950
Entry Wire Line
	3050 1850 2950 1950
Text HLabel 2200 1950 0    60   Input ~ 0
~SLTSL2
Text HLabel 2200 2050 0    60   Input ~ 0
~SLTSL3
Text HLabel 2200 2150 0    60   Input ~ 0
~CS1
Text HLabel 2200 2250 0    60   Input ~ 0
~CS2
Text HLabel 2200 2350 0    60   Input ~ 0
~CS12
Text HLabel 2200 2550 0    60   Input ~ 0
~MREQ
Text HLabel 2200 2650 0    60   Input ~ 0
~IORQ
Text HLabel 2200 2750 0    60   Input ~ 0
~M1
Text HLabel 2200 2850 0    60   Input ~ 0
~RD
Text HLabel 2200 2950 0    60   Input ~ 0
~WR
Text HLabel 2200 3150 0    60   Input ~ 0
~RFSH
Text HLabel 2200 3250 0    60   Input ~ 0
~RESET
Text HLabel 2200 4950 0    60   Output ~ 0
~EXTWAIT
Text HLabel 2200 3350 0    60   Input ~ 0
CLK
Text HLabel 2200 4200 0    60   Output ~ 0
~EXITINT
Text HLabel 2200 3550 0    60   Output ~ 0
SOUND
Entry Bus Bus
	3150 1650 3050 1750
Wire Bus Line
	3050 1750 3050 4900
Text Notes 4750 1600 0    60   ~ 0
CONTROL BUS
Text Notes 8150 1600 0    60   ~ 0
CONTROL BUS
NoConn ~ 5350 2650
NoConn ~ 8800 2650
$Comp
L R R1
U 1 1 5AE95016
P 2400 4000
F 0 "R1" V 2480 4000 50  0000 C CNN
F 1 "10K" V 2400 4000 50  0000 C CNN
F 2 "" V 2330 4000 50  0001 C CNN
F 3 "" H 2400 4000 50  0001 C CNN
	1    2400 4000
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR052
U 1 1 5AE95078
P 2400 3800
F 0 "#PWR052" H 2400 3650 50  0001 C CNN
F 1 "VCC" H 2400 3950 50  0000 C CNN
F 2 "" H 2400 3800 50  0001 C CNN
F 3 "" H 2400 3800 50  0001 C CNN
	1    2400 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 3800 2400 3850
Wire Wire Line
	2400 4150 2400 4200
Connection ~ 2400 4200
$Comp
L R R2
U 1 1 5AE951FD
P 2400 4750
F 0 "R2" V 2480 4750 50  0000 C CNN
F 1 "10K" V 2400 4750 50  0000 C CNN
F 2 "" V 2330 4750 50  0001 C CNN
F 3 "" H 2400 4750 50  0001 C CNN
	1    2400 4750
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR053
U 1 1 5AE95203
P 2400 4550
F 0 "#PWR053" H 2400 4400 50  0001 C CNN
F 1 "VCC" H 2400 4700 50  0000 C CNN
F 2 "" H 2400 4550 50  0001 C CNN
F 3 "" H 2400 4550 50  0001 C CNN
	1    2400 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 4550 2400 4600
Wire Wire Line
	2400 4900 2400 4950
Connection ~ 2400 4950
$EndSCHEMATC
