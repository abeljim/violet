EESchema Schematic File Version 4
LIBS:violet-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 12 13
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
L Interface_Expansion:TCA9555RGER U27
U 1 1 5D79908C
P 5550 3400
F 0 "U27" H 5550 3400 50  0000 C CNN
F 1 "TCA9555RGER" H 5550 3300 50  0000 C CNN
F 2 "Package_DFN_QFN:QFN-24-1EP_4x4mm_P0.5mm_EP2.6x2.6mm" H 6750 2400 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tca9555.pdf" H 5050 4300 50  0001 C CNN
F 4 "595-TCA9555RGER" H 5550 3400 50  0001 C CNN "Mouser"
	1    5550 3400
	1    0    0    -1  
$EndComp
Text HLabel 6450 2600 2    50   Input ~ 0
P00
Text HLabel 6450 2700 2    50   Input ~ 0
P01
Text HLabel 6450 2800 2    50   Input ~ 0
P02
Text HLabel 6450 2900 2    50   Input ~ 0
P03
Text HLabel 6450 3000 2    50   Input ~ 0
P04
Text HLabel 6450 3100 2    50   Input ~ 0
P05
Text HLabel 6450 3200 2    50   Input ~ 0
P06
Text HLabel 6450 3300 2    50   Input ~ 0
P07
Text HLabel 6450 3500 2    50   Input ~ 0
P10
Text HLabel 6450 3600 2    50   Input ~ 0
P11
Text HLabel 6450 3700 2    50   Input ~ 0
P12
Text HLabel 6450 3800 2    50   Input ~ 0
P13
Text HLabel 6450 3900 2    50   Input ~ 0
P14
Text HLabel 6450 4000 2    50   Input ~ 0
P15
Text HLabel 6450 4100 2    50   Input ~ 0
P16
Text HLabel 6450 4200 2    50   Input ~ 0
P17
$Comp
L power:GND #PWR0135
U 1 1 5D79A416
P 5550 4700
F 0 "#PWR0135" H 5550 4450 50  0001 C CNN
F 1 "GND" H 5555 4527 50  0000 C CNN
F 2 "" H 5550 4700 50  0001 C CNN
F 3 "" H 5550 4700 50  0001 C CNN
	1    5550 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 4500 5550 4600
Wire Wire Line
	5550 4600 5650 4600
Wire Wire Line
	5650 4600 5650 4500
Connection ~ 5550 4600
Wire Wire Line
	5550 4600 5550 4700
$Comp
L power:GND #PWR0134
U 1 1 5D79ABCC
P 4650 4350
F 0 "#PWR0134" H 4650 4100 50  0001 C CNN
F 1 "GND" H 4655 4177 50  0000 C CNN
F 2 "" H 4650 4350 50  0001 C CNN
F 3 "" H 4650 4350 50  0001 C CNN
	1    4650 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 4000 4650 4000
Wire Wire Line
	4650 4000 4650 4100
Wire Wire Line
	4850 4100 4650 4100
Connection ~ 4650 4100
Wire Wire Line
	4650 4100 4650 4200
Wire Wire Line
	4850 4200 4650 4200
Connection ~ 4650 4200
Wire Wire Line
	4650 4200 4650 4350
Text HLabel 4650 2600 0    50   Input ~ 0
SDA
Text HLabel 4650 2700 0    50   Input ~ 0
SCL
Text HLabel 4150 2800 0    50   Input ~ 0
INT
Text HLabel 5250 2100 0    50   Input ~ 0
3V3D
Wire Wire Line
	5250 2100 5550 2100
Wire Wire Line
	5550 2100 5550 2300
Text HLabel 4150 2150 0    50   Input ~ 0
3V3D
Wire Wire Line
	4150 2800 4250 2800
Wire Wire Line
	4650 2600 4850 2600
Wire Wire Line
	4650 2700 4850 2700
$Comp
L Device:R R46
U 1 1 5D79CD5E
P 4250 2350
F 0 "R46" H 4320 2396 50  0000 L CNN
F 1 "10k" H 4320 2305 50  0000 L CNN
F 2 "violet:R_0402b" V 4180 2350 50  0001 C CNN
F 3 "~" H 4250 2350 50  0001 C CNN
F 4 "71-CRCW040210K0FKEDC" H 4250 2350 50  0001 C CNN "Mouser"
	1    4250 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 2150 4250 2150
Wire Wire Line
	4250 2150 4250 2200
Wire Wire Line
	4250 2500 4250 2800
Connection ~ 4250 2800
Wire Wire Line
	4250 2800 4850 2800
Wire Wire Line
	6250 2600 6450 2600
Wire Wire Line
	6450 2700 6250 2700
Wire Wire Line
	6250 2800 6450 2800
Wire Wire Line
	6250 2900 6450 2900
Wire Wire Line
	6450 3000 6250 3000
Wire Wire Line
	6250 3100 6450 3100
Wire Wire Line
	6450 3200 6250 3200
Wire Wire Line
	6250 3300 6450 3300
Wire Wire Line
	6450 3500 6250 3500
Wire Wire Line
	6250 3600 6450 3600
Wire Wire Line
	6250 3700 6450 3700
Wire Wire Line
	6450 3800 6250 3800
Wire Wire Line
	6250 3900 6450 3900
Wire Wire Line
	6450 4000 6250 4000
Wire Wire Line
	6250 4100 6450 4100
Wire Wire Line
	6450 4200 6250 4200
$EndSCHEMATC
