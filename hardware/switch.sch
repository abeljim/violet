EESchema Schematic File Version 4
LIBS:violet-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 13
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
L violet:RFXF9503 U13
U 1 1 5D6AF445
P 4350 1250
F 0 "U13" H 4350 1550 50  0000 C CNN
F 1 "RFXF9503" H 4350 1450 50  0000 C CNN
F 2 "violet:S20" H 4350 1250 50  0001 C CNN
F 3 "" H 4350 1250 50  0001 C CNN
F 4 "~" H 4350 1250 50  0001 C CNN "Mouser"
	1    4350 1250
	1    0    0    -1  
$EndComp
$Comp
L violet:RFXF9503 U15
U 1 1 5D6AFBEA
P 8900 1700
F 0 "U15" H 8900 2000 50  0000 C CNN
F 1 "RFXF9503" H 8900 1900 50  0000 C CNN
F 2 "violet:S20" H 8900 1700 50  0001 C CNN
F 3 "" H 8900 1700 50  0001 C CNN
F 4 "~" H 8900 1700 50  0001 C CNN "Mouser"
	1    8900 1700
	1    0    0    -1  
$EndComp
$Comp
L violet:RFXF9503 U10
U 1 1 5D6B018D
P 1850 1250
F 0 "U10" H 1850 1550 50  0000 C CNN
F 1 "RFXF9503" H 1850 1450 50  0000 C CNN
F 2 "violet:S20" H 1850 1250 50  0001 C CNN
F 3 "" H 1850 1250 50  0001 C CNN
F 4 "~" H 1850 1250 50  0001 C CNN "Mouser"
	1    1850 1250
	-1   0    0    1   
$EndComp
$Comp
L Device:R R17
U 1 1 5D6B0943
P 3150 2000
F 0 "R17" H 3220 2046 50  0000 L CNN
F 1 "49.9" H 3220 1955 50  0000 L CNN
F 2 "violet:R_0402b" V 3080 2000 50  0001 C CNN
F 3 "~" H 3150 2000 50  0001 C CNN
F 4 "71-RCS040249R9FKED" H 3150 2000 50  0001 C CNN "Mouser"
	1    3150 2000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R16
U 1 1 5D6DC7CF
P 3150 1550
F 0 "R16" H 3220 1596 50  0000 L CNN
F 1 "49.9" H 3220 1505 50  0000 L CNN
F 2 "violet:R_0402b" V 3080 1550 50  0001 C CNN
F 3 "~" H 3150 1550 50  0001 C CNN
F 4 "71-RCS040249R9FKED" H 3150 1550 50  0001 C CNN "Mouser"
	1    3150 1550
	1    0    0    -1  
$EndComp
$Comp
L Device:R R15
U 1 1 5D6DDBEA
P 3150 1100
F 0 "R15" H 3220 1146 50  0000 L CNN
F 1 "49.9" H 3220 1055 50  0000 L CNN
F 2 "violet:R_0402b" V 3080 1100 50  0001 C CNN
F 3 "~" H 3150 1100 50  0001 C CNN
F 4 "71-RCS040249R9FKED" H 3150 1100 50  0001 C CNN "Mouser"
	1    3150 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 1350 4850 1350
Wire Wire Line
	4850 1350 4850 1500
$Comp
L power:GND #PWR061
U 1 1 5D6E25EB
P 3150 2150
F 0 "#PWR061" H 3150 1900 50  0001 C CNN
F 1 "GND" H 3155 1977 50  0000 C CNN
F 2 "" H 3150 2150 50  0001 C CNN
F 3 "" H 3150 2150 50  0001 C CNN
	1    3150 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 950  3150 850 
Wire Wire Line
	3150 850  3950 850 
Wire Wire Line
	3950 850  3950 1150
Wire Wire Line
	3150 1400 3150 1350
Wire Wire Line
	3150 1850 3150 1750
Wire Wire Line
	3950 1350 3950 1750
Wire Wire Line
	3950 1750 3150 1750
Connection ~ 3150 1750
Wire Wire Line
	3150 1750 3150 1700
Text Label 3300 1350 0    50   ~ 0
RX1
Wire Wire Line
	3150 1350 3300 1350
Connection ~ 3150 1350
Wire Wire Line
	3150 1350 3150 1250
Text HLabel 4900 1150 2    50   Input ~ 0
RF_IN
Wire Wire Line
	4750 1150 4900 1150
$Comp
L Device:C C39
U 1 1 5D6E3EA2
P 1100 1350
F 0 "C39" V 848 1350 50  0000 C CNN
F 1 "1n" V 939 1350 50  0000 C CNN
F 2 "violet:C_0402b" H 1138 1200 50  0001 C CNN
F 3 "~" H 1100 1350 50  0001 C CNN
F 4 "80-C0402S102K5R7867" H 1100 1350 50  0001 C CNN "Mouser"
	1    1100 1350
	0    1    1    0   
$EndComp
Text HLabel 850  1350 0    50   Output ~ 0
DUT
$Comp
L Device:R R12
U 1 1 5D6F3BB0
P 2750 1100
F 0 "R12" H 2820 1146 50  0000 L CNN
F 1 "49.9" H 2820 1055 50  0000 L CNN
F 2 "violet:R_0402b" V 2680 1100 50  0001 C CNN
F 3 "~" H 2750 1100 50  0001 C CNN
F 4 "71-RCS040249R9FKED" H 2750 1100 50  0001 C CNN "Mouser"
	1    2750 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R13
U 1 1 5D6F465D
P 2750 1550
F 0 "R13" H 2820 1596 50  0000 L CNN
F 1 "49.9" H 2820 1505 50  0000 L CNN
F 2 "violet:R_0402b" V 2680 1550 50  0001 C CNN
F 3 "~" H 2750 1550 50  0001 C CNN
F 4 "71-RCS040249R9FKED" H 2750 1550 50  0001 C CNN "Mouser"
	1    2750 1550
	1    0    0    -1  
$EndComp
$Comp
L Device:R R14
U 1 1 5D6F4B97
P 2750 2000
F 0 "R14" H 2820 2046 50  0000 L CNN
F 1 "49.9" H 2820 1955 50  0000 L CNN
F 2 "violet:R_0402b" V 2680 2000 50  0001 C CNN
F 3 "~" H 2750 2000 50  0001 C CNN
F 4 "71-RCS040249R9FKED" H 2750 2000 50  0001 C CNN "Mouser"
	1    2750 2000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR060
U 1 1 5D6F53C6
P 2750 2150
F 0 "#PWR060" H 2750 1900 50  0001 C CNN
F 1 "GND" H 2755 1977 50  0000 C CNN
F 2 "" H 2750 2150 50  0001 C CNN
F 3 "" H 2750 2150 50  0001 C CNN
	1    2750 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 1250 2750 1350
Wire Wire Line
	2750 950  2750 850 
Wire Wire Line
	2750 850  3150 850 
Connection ~ 3150 850 
Text Label 2550 1350 0    50   ~ 0
A
Wire Wire Line
	2550 1350 2750 1350
Connection ~ 2750 1350
Wire Wire Line
	2750 1350 2750 1400
NoConn ~ 4350 1500
NoConn ~ 1850 1000
Wire Wire Line
	850  1350 950  1350
Wire Wire Line
	1250 1350 1450 1350
$Comp
L power:GND #PWR051
U 1 1 5D6FEB1E
P 1600 750
F 0 "#PWR051" H 1600 500 50  0001 C CNN
F 1 "GND" H 1605 577 50  0000 C CNN
F 2 "" H 1600 750 50  0001 C CNN
F 3 "" H 1600 750 50  0001 C CNN
	1    1600 750 
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 1150 1400 1150
Wire Wire Line
	1400 1150 1400 700 
Wire Wire Line
	1400 700  1600 700 
Wire Wire Line
	1600 700  1600 750 
Wire Wire Line
	2750 1700 2750 1750
Wire Wire Line
	2250 1350 2400 1350
Wire Wire Line
	2400 1350 2400 850 
Wire Wire Line
	2400 850  2750 850 
Connection ~ 2750 850 
Wire Wire Line
	2250 1150 2300 1150
Wire Wire Line
	2300 1150 2300 1750
Wire Wire Line
	2300 1750 2750 1750
Connection ~ 2750 1750
Wire Wire Line
	2750 1750 2750 1850
$Comp
L power:GND #PWR063
U 1 1 5D6DFD30
P 4850 1500
F 0 "#PWR063" H 4850 1250 50  0001 C CNN
F 1 "GND" H 4855 1327 50  0000 C CNN
F 2 "" H 4850 1500 50  0001 C CNN
F 3 "" H 4850 1500 50  0001 C CNN
	1    4850 1500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR069
U 1 1 5D706118
P 9400 1950
F 0 "#PWR069" H 9400 1700 50  0001 C CNN
F 1 "GND" H 9405 1777 50  0000 C CNN
F 2 "" H 9400 1950 50  0001 C CNN
F 3 "" H 9400 1950 50  0001 C CNN
	1    9400 1950
	1    0    0    -1  
$EndComp
Text HLabel 7000 1250 0    50   Input ~ 0
DET
$Comp
L Device:R R20
U 1 1 5D706C29
P 7750 2500
F 0 "R20" H 7820 2546 50  0000 L CNN
F 1 "49.9" H 7820 2455 50  0000 L CNN
F 2 "violet:R_0402b" V 7680 2500 50  0001 C CNN
F 3 "~" H 7750 2500 50  0001 C CNN
F 4 "71-RCS040249R9FKED" H 7750 2500 50  0001 C CNN "Mouser"
	1    7750 2500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R18
U 1 1 5D707328
P 7750 1500
F 0 "R18" H 7820 1546 50  0000 L CNN
F 1 "49.9" H 7820 1455 50  0000 L CNN
F 2 "violet:R_0402b" V 7680 1500 50  0001 C CNN
F 3 "~" H 7750 1500 50  0001 C CNN
F 4 "71-RCS040249R9FKED" H 7750 1500 50  0001 C CNN "Mouser"
	1    7750 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R19
U 1 1 5D707715
P 7750 2000
F 0 "R19" H 7820 2046 50  0000 L CNN
F 1 "49.9" H 7820 1955 50  0000 L CNN
F 2 "violet:R_0402b" V 7680 2000 50  0001 C CNN
F 3 "~" H 7750 2000 50  0001 C CNN
F 4 "71-RCS040249R9FKED" H 7750 2000 50  0001 C CNN "Mouser"
	1    7750 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 1350 7750 1250
Wire Wire Line
	7750 1250 8500 1250
Wire Wire Line
	8500 1250 8500 1600
Wire Wire Line
	7750 1650 7750 1750
Wire Wire Line
	7750 2150 7750 2250
$Comp
L power:GND #PWR068
U 1 1 5D70B17D
P 7750 2650
F 0 "#PWR068" H 7750 2400 50  0001 C CNN
F 1 "GND" H 7755 2477 50  0000 C CNN
F 2 "" H 7750 2650 50  0001 C CNN
F 3 "" H 7750 2650 50  0001 C CNN
	1    7750 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	9300 1800 9400 1800
Wire Wire Line
	9400 1800 9400 1950
Wire Wire Line
	7750 2250 8500 2250
Wire Wire Line
	8500 2250 8500 1800
Connection ~ 7750 2250
Wire Wire Line
	7750 2250 7750 2350
$Comp
L Device:R R21
U 1 1 5D70D1E3
P 9650 1800
F 0 "R21" H 9720 1846 50  0000 L CNN
F 1 "49.9" H 9720 1755 50  0000 L CNN
F 2 "violet:R_0402b" V 9580 1800 50  0001 C CNN
F 3 "~" H 9650 1800 50  0001 C CNN
F 4 "71-RCS040249R9FKED" H 9650 1800 50  0001 C CNN "Mouser"
	1    9650 1800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR070
U 1 1 5D70DAC3
P 9650 1950
F 0 "#PWR070" H 9650 1700 50  0001 C CNN
F 1 "GND" H 9655 1777 50  0000 C CNN
F 2 "" H 9650 1950 50  0001 C CNN
F 3 "" H 9650 1950 50  0001 C CNN
	1    9650 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	9300 1600 9650 1600
Wire Wire Line
	9650 1600 9650 1650
Text Label 7900 1750 0    50   ~ 0
B
Wire Wire Line
	7750 1750 7900 1750
Connection ~ 7750 1750
Wire Wire Line
	7750 1750 7750 1850
Wire Wire Line
	7550 1250 7750 1250
Connection ~ 7750 1250
NoConn ~ 8900 1950
$Comp
L Device:C C49
U 1 1 5D7206A4
P 7400 1250
F 0 "C49" V 7148 1250 50  0000 C CNN
F 1 "1n" V 7239 1250 50  0000 C CNN
F 2 "violet:C_0402b" H 7438 1100 50  0001 C CNN
F 3 "~" H 7400 1250 50  0001 C CNN
F 4 "80-C0402S102K5R7867" H 7400 1250 50  0001 C CNN "Mouser"
	1    7400 1250
	0    1    1    0   
$EndComp
Wire Wire Line
	7000 1250 7250 1250
$Comp
L violet:F2910 U11
U 1 1 5D68E119
P 2050 4450
F 0 "U11" V 2096 4787 50  0000 L CNN
F 1 "F2910" V 2005 4787 50  0000 L CNN
F 2 "violet:F2910" H 2050 4750 50  0001 C CNN
F 3 "" H 2050 4750 50  0001 C CNN
F 4 "972-F2910NBGP8" H 2050 4450 50  0001 C CNN "Mouser"
	1    2050 4450
	0    -1   -1   0   
$EndComp
$Comp
L violet:F2910 U12
U 1 1 5D68F478
P 2050 6500
F 0 "U12" V 2096 6837 50  0000 L CNN
F 1 "F2910" V 2005 6837 50  0000 L CNN
F 2 "violet:F2910" H 2050 6800 50  0001 C CNN
F 3 "" H 2050 6800 50  0001 C CNN
F 4 "972-F2910NBGP8" H 2050 6500 50  0001 C CNN "Mouser"
	1    2050 6500
	0    -1   -1   0   
$EndComp
$Comp
L violet:F2910 U14
U 1 1 5D68FD61
P 5350 5300
F 0 "U14" V 5396 5637 50  0000 L CNN
F 1 "F2910" V 5305 5637 50  0000 L CNN
F 2 "violet:F2910" H 5350 5600 50  0001 C CNN
F 3 "" H 5350 5600 50  0001 C CNN
F 4 "972-F2910NBGP8" H 5350 5300 50  0001 C CNN "Mouser"
	1    5350 5300
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR052
U 1 1 5D690B4B
P 2050 4900
F 0 "#PWR052" H 2050 4650 50  0001 C CNN
F 1 "GND" H 2055 4727 50  0000 C CNN
F 2 "" H 2050 4900 50  0001 C CNN
F 3 "" H 2050 4900 50  0001 C CNN
	1    2050 4900
	1    0    0    -1  
$EndComp
Text Label 1600 4050 0    50   ~ 0
RX1
$Comp
L Device:C C41
U 1 1 5D6918C5
P 1200 4000
F 0 "C41" H 1085 3954 50  0000 R CNN
F 1 "4.9p" H 1085 4045 50  0000 R CNN
F 2 "violet:C_0402b" H 1238 3850 50  0001 C CNN
F 3 "~" H 1200 4000 50  0001 C CNN
F 4 "80-CBR04C499B5GAC" H 1200 4000 50  0001 C CNN "Mouser"
	1    1200 4000
	-1   0    0    1   
$EndComp
$Comp
L Device:C C45
U 1 1 5D69307B
P 2350 3700
F 0 "C45" V 2098 3700 50  0000 C CNN
F 1 "4.5p" V 2189 3700 50  0000 C CNN
F 2 "violet:C_0402b" H 2388 3550 50  0001 C CNN
F 3 "~" H 2350 3700 50  0001 C CNN
F 4 "80-CBR04C459B5GAC" H 2350 3700 50  0001 C CNN "Mouser"
	1    2350 3700
	0    1    1    0   
$EndComp
$Comp
L Device:C C44
U 1 1 5D693303
P 2350 3300
F 0 "C44" V 2098 3300 50  0000 C CNN
F 1 "0.5p" V 2189 3300 50  0000 C CNN
F 2 "violet:C_0402b" H 2388 3150 50  0001 C CNN
F 3 "~" H 2350 3300 50  0001 C CNN
F 4 "80-C0402C508B5GACTU" H 2350 3300 50  0001 C CNN "Mouser"
	1    2350 3300
	0    1    1    0   
$EndComp
Wire Wire Line
	1950 4800 2050 4800
Wire Wire Line
	2050 4800 2050 4900
Connection ~ 2050 4800
Wire Wire Line
	2050 4800 2150 4800
Wire Wire Line
	1800 4100 1800 4050
Wire Wire Line
	1800 4050 1600 4050
Text HLabel 1050 3700 0    50   Input ~ 0
SW1
$Comp
L power:GND #PWR054
U 1 1 5D69B5B0
P 2550 4550
F 0 "#PWR054" H 2550 4300 50  0001 C CNN
F 1 "GND" H 2555 4377 50  0000 C CNN
F 2 "" H 2550 4550 50  0001 C CNN
F 3 "" H 2550 4550 50  0001 C CNN
	1    2550 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 3700 1200 3700
Wire Wire Line
	1950 3700 1950 4100
Wire Wire Line
	1200 3850 1200 3700
Connection ~ 1200 3700
Wire Wire Line
	1200 3700 1950 3700
Wire Wire Line
	2450 4450 2550 4450
Wire Wire Line
	2550 4450 2550 4550
NoConn ~ 1800 4800
NoConn ~ 2300 4800
Text HLabel 1650 3250 0    50   Input ~ 0
3V3D
$Comp
L power:GND #PWR050
U 1 1 5D69BA15
P 1200 4150
F 0 "#PWR050" H 1200 3900 50  0001 C CNN
F 1 "GND" H 1205 3977 50  0000 C CNN
F 2 "" H 1200 4150 50  0001 C CNN
F 3 "" H 1200 4150 50  0001 C CNN
	1    1200 4150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR057
U 1 1 5D6A53BA
P 2600 3750
F 0 "#PWR057" H 2600 3500 50  0001 C CNN
F 1 "GND" H 2605 3577 50  0000 C CNN
F 2 "" H 2600 3750 50  0001 C CNN
F 3 "" H 2600 3750 50  0001 C CNN
	1    2600 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 3250 2150 3250
Wire Wire Line
	2150 3250 2150 3300
Wire Wire Line
	2150 3300 2200 3300
Connection ~ 2150 3300
Wire Wire Line
	2150 3300 2150 3700
Wire Wire Line
	2150 3700 2200 3700
Connection ~ 2150 3700
Wire Wire Line
	2150 3700 2150 4100
Wire Wire Line
	2500 3300 2600 3300
Wire Wire Line
	2500 3700 2600 3700
Wire Wire Line
	2600 3700 2600 3750
$Comp
L power:GND #PWR056
U 1 1 5D6BABA0
P 2600 3300
F 0 "#PWR056" H 2600 3050 50  0001 C CNN
F 1 "GND" H 2605 3127 50  0000 C CNN
F 2 "" H 2600 3300 50  0001 C CNN
F 3 "" H 2600 3300 50  0001 C CNN
	1    2600 3300
	1    0    0    -1  
$EndComp
Text HLabel 4400 4600 0    50   Input ~ 0
SW2
Text HLabel 900  5900 0    50   Input ~ 0
SW3
Text Label 2450 4100 0    50   ~ 0
RX1_OUT
Wire Wire Line
	2300 4100 2450 4100
$Comp
L Device:C C46
U 1 1 5D6F88B3
P 4600 5050
F 0 "C46" H 4485 5004 50  0000 R CNN
F 1 "4.9p" H 4485 5095 50  0000 R CNN
F 2 "violet:C_0402b" H 4638 4900 50  0001 C CNN
F 3 "~" H 4600 5050 50  0001 C CNN
F 4 "80-CBR04C499B5GAC" H 4600 5050 50  0001 C CNN "Mouser"
	1    4600 5050
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR062
U 1 1 5D6F8ECC
P 4600 5300
F 0 "#PWR062" H 4600 5050 50  0001 C CNN
F 1 "GND" H 4605 5127 50  0000 C CNN
F 2 "" H 4600 5300 50  0001 C CNN
F 3 "" H 4600 5300 50  0001 C CNN
	1    4600 5300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR065
U 1 1 5D6F9460
P 5850 5400
F 0 "#PWR065" H 5850 5150 50  0001 C CNN
F 1 "GND" H 5855 5227 50  0000 C CNN
F 2 "" H 5850 5400 50  0001 C CNN
F 3 "" H 5850 5400 50  0001 C CNN
	1    5850 5400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR064
U 1 1 5D6F9AB3
P 5350 5800
F 0 "#PWR064" H 5350 5550 50  0001 C CNN
F 1 "GND" H 5355 5627 50  0000 C CNN
F 2 "" H 5350 5800 50  0001 C CNN
F 3 "" H 5350 5800 50  0001 C CNN
	1    5350 5800
	1    0    0    -1  
$EndComp
$Comp
L Device:C C48
U 1 1 5D6FA09E
P 5600 4500
F 0 "C48" V 5348 4500 50  0000 C CNN
F 1 "4.5p" V 5439 4500 50  0000 C CNN
F 2 "violet:C_0402b" H 5638 4350 50  0001 C CNN
F 3 "~" H 5600 4500 50  0001 C CNN
F 4 "80-CBR04C459B5GAC" H 5600 4500 50  0001 C CNN "Mouser"
	1    5600 4500
	0    1    1    0   
$EndComp
$Comp
L Device:C C47
U 1 1 5D6FA962
P 5600 4100
F 0 "C47" V 5348 4100 50  0000 C CNN
F 1 "0.5p" V 5439 4100 50  0000 C CNN
F 2 "violet:C_0402b" H 5638 3950 50  0001 C CNN
F 3 "~" H 5600 4100 50  0001 C CNN
F 4 "80-C0402C508B5GACTU" H 5600 4100 50  0001 C CNN "Mouser"
	1    5600 4100
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR066
U 1 1 5D6FAC36
P 5900 4100
F 0 "#PWR066" H 5900 3850 50  0001 C CNN
F 1 "GND" H 5905 3927 50  0000 C CNN
F 2 "" H 5900 4100 50  0001 C CNN
F 3 "" H 5900 4100 50  0001 C CNN
	1    5900 4100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR067
U 1 1 5D6FB827
P 5900 4500
F 0 "#PWR067" H 5900 4250 50  0001 C CNN
F 1 "GND" H 5905 4327 50  0000 C CNN
F 2 "" H 5900 4500 50  0001 C CNN
F 3 "" H 5900 4500 50  0001 C CNN
	1    5900 4500
	1    0    0    -1  
$EndComp
Text HLabel 5300 4100 0    50   Input ~ 0
3V3D
Wire Wire Line
	5300 4100 5450 4100
Wire Wire Line
	5450 4100 5450 4500
Connection ~ 5450 4100
Connection ~ 5450 4500
Wire Wire Line
	5450 4500 5450 4950
Wire Wire Line
	5750 4100 5900 4100
Wire Wire Line
	5750 4500 5900 4500
Wire Wire Line
	5250 4600 5250 4950
Wire Wire Line
	4600 4900 4600 4600
Wire Wire Line
	4400 4600 4600 4600
Connection ~ 4600 4600
Wire Wire Line
	4600 4600 5250 4600
Wire Wire Line
	4600 5300 4600 5200
Text Label 4950 4850 0    50   ~ 0
A
Wire Wire Line
	4950 4850 5100 4850
Wire Wire Line
	5100 4850 5100 4950
Wire Wire Line
	5250 5650 5350 5650
Wire Wire Line
	5350 5800 5350 5650
Connection ~ 5350 5650
Wire Wire Line
	5350 5650 5450 5650
Wire Wire Line
	5750 5300 5850 5300
Wire Wire Line
	5850 5300 5850 5400
NoConn ~ 5600 5650
NoConn ~ 5100 5650
Text Label 5750 4900 0    50   ~ 0
A_OUT
Wire Wire Line
	5750 4900 5600 4900
Wire Wire Line
	5600 4900 5600 4950
$Comp
L Device:C C42
U 1 1 5D71E670
P 2300 5450
F 0 "C42" V 2048 5450 50  0000 C CNN
F 1 "0.5p" V 2139 5450 50  0000 C CNN
F 2 "violet:C_0402b" H 2338 5300 50  0001 C CNN
F 3 "~" H 2300 5450 50  0001 C CNN
F 4 "80-C0402C508B5GACTU" H 2300 5450 50  0001 C CNN "Mouser"
	1    2300 5450
	0    1    1    0   
$EndComp
$Comp
L Device:C C43
U 1 1 5D71F186
P 2300 5850
F 0 "C43" V 2048 5850 50  0000 C CNN
F 1 "4.5p" V 2139 5850 50  0000 C CNN
F 2 "violet:C_0402b" H 2338 5700 50  0001 C CNN
F 3 "~" H 2300 5850 50  0001 C CNN
F 4 "80-CBR04C459B5GAC" H 2300 5850 50  0001 C CNN "Mouser"
	1    2300 5850
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR053
U 1 1 5D72596D
P 2050 7000
F 0 "#PWR053" H 2050 6750 50  0001 C CNN
F 1 "GND" H 2055 6827 50  0000 C CNN
F 2 "" H 2050 7000 50  0001 C CNN
F 3 "" H 2050 7000 50  0001 C CNN
	1    2050 7000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C40
U 1 1 5D7260AA
P 1100 6400
F 0 "C40" H 985 6354 50  0000 R CNN
F 1 "4.9p" H 985 6445 50  0000 R CNN
F 2 "violet:C_0402b" H 1138 6250 50  0001 C CNN
F 3 "~" H 1100 6400 50  0001 C CNN
F 4 "80-CBR04C499B5GAC" H 1100 6400 50  0001 C CNN "Mouser"
	1    1100 6400
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR055
U 1 1 5D7266EC
P 2550 6600
F 0 "#PWR055" H 2550 6350 50  0001 C CNN
F 1 "GND" H 2555 6427 50  0000 C CNN
F 2 "" H 2550 6600 50  0001 C CNN
F 3 "" H 2550 6600 50  0001 C CNN
	1    2550 6600
	1    0    0    -1  
$EndComp
Text Label 1600 6100 0    50   ~ 0
B
Wire Wire Line
	1800 6150 1800 6100
Wire Wire Line
	1800 6100 1600 6100
$Comp
L power:GND #PWR049
U 1 1 5D729C93
P 1100 6550
F 0 "#PWR049" H 1100 6300 50  0001 C CNN
F 1 "GND" H 1105 6377 50  0000 C CNN
F 2 "" H 1100 6550 50  0001 C CNN
F 3 "" H 1100 6550 50  0001 C CNN
	1    1100 6550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 6600 2550 6500
Wire Wire Line
	2550 6500 2450 6500
Wire Wire Line
	1950 6850 2050 6850
Wire Wire Line
	2050 6850 2050 7000
Connection ~ 2050 6850
Wire Wire Line
	2050 6850 2150 6850
NoConn ~ 1800 6850
NoConn ~ 2300 6850
Wire Wire Line
	900  5900 1100 5900
Wire Wire Line
	1950 5900 1950 6150
Wire Wire Line
	1100 6250 1100 5900
Connection ~ 1100 5900
Wire Wire Line
	1100 5900 1950 5900
Text HLabel 1600 5450 0    50   Input ~ 0
3V3D
Wire Wire Line
	1600 5450 2150 5450
Wire Wire Line
	2150 5450 2150 5850
Connection ~ 2150 5450
Wire Wire Line
	2150 5850 2150 6150
Connection ~ 2150 5850
$Comp
L power:GND #PWR058
U 1 1 5D74854B
P 2600 5450
F 0 "#PWR058" H 2600 5200 50  0001 C CNN
F 1 "GND" H 2605 5277 50  0000 C CNN
F 2 "" H 2600 5450 50  0001 C CNN
F 3 "" H 2600 5450 50  0001 C CNN
	1    2600 5450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR059
U 1 1 5D748E76
P 2600 5850
F 0 "#PWR059" H 2600 5600 50  0001 C CNN
F 1 "GND" H 2605 5677 50  0000 C CNN
F 2 "" H 2600 5850 50  0001 C CNN
F 3 "" H 2600 5850 50  0001 C CNN
	1    2600 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 5850 2600 5850
Wire Wire Line
	2450 5450 2600 5450
Text Label 2750 6150 0    50   ~ 0
B_OUT
Wire Wire Line
	2300 6150 2750 6150
$Sheet
S 8000 4550 1150 1200
U 5D791680
F0 "Switches 2" 50
F1 "switchs2.sch" 50
F2 "A" I L 8000 4700 50 
F3 "B" I L 8000 4800 50 
F4 "RX1" I L 8000 4900 50 
F5 "RF_OUT" O R 9150 4800 50 
F6 "3V3D" I L 8000 5600 50 
F7 "SW_A_OUT" I L 8000 5100 50 
F8 "SW_RX1_OUT" I L 8000 5200 50 
F9 "SW_AR_OUT" I L 8000 5300 50 
F10 "SW_B_OUT" I L 8000 5400 50 
$EndSheet
Text Label 7600 4900 0    50   ~ 0
RX1_OUT
Text Label 7600 4700 0    50   ~ 0
A_OUT
Text Label 7600 4800 0    50   ~ 0
B_OUT
Wire Wire Line
	7600 4700 8000 4700
Wire Wire Line
	7600 4800 8000 4800
Wire Wire Line
	7600 4900 8000 4900
Text HLabel 7850 5600 0    50   Input ~ 0
3V3D
Wire Wire Line
	7850 5600 8000 5600
Text HLabel 7800 5100 0    50   Input ~ 0
SW4
Text HLabel 7800 5200 0    50   Input ~ 0
SW5
Text HLabel 7800 5300 0    50   Input ~ 0
SW6
Text HLabel 7800 5400 0    50   Input ~ 0
SW7
Wire Wire Line
	7800 5100 8000 5100
Wire Wire Line
	7800 5200 8000 5200
Wire Wire Line
	7800 5300 8000 5300
Wire Wire Line
	7800 5400 8000 5400
Text HLabel 9400 4800 2    50   Output ~ 0
RF_OUT
Wire Wire Line
	9150 4800 9400 4800
$EndSCHEMATC
