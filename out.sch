EESchema Schematic File Version 4
LIBS:violet-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 10 10
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 1900 2300 0    50   Input ~ 0
RF_IN
$Comp
L Device:R R?
U 1 1 5D49FA1D
P 3450 2150
F 0 "R?" H 3520 2196 50  0000 L CNN
F 1 "49.9k" H 3520 2105 50  0000 L CNN
F 2 "" V 3380 2150 50  0001 C CNN
F 3 "~" H 3450 2150 50  0001 C CNN
	1    3450 2150
	1    0    0    -1  
$EndComp
$Comp
L RFXF9503:RFXF9503 B?
U 1 1 5D4A061B
P 2700 2200
F 0 "B?" H 2700 2325 50  0000 C CNN
F 1 "RFXF9503" H 2700 2234 50  0000 C CNN
F 2 "" H 2700 2200 50  0001 C CNN
F 3 "" H 2700 2200 50  0001 C CNN
	1    2700 2200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D4A0BA4
P 2200 2550
F 0 "#PWR?" H 2200 2300 50  0001 C CNN
F 1 "GND" H 2205 2377 50  0000 C CNN
F 2 "" H 2200 2550 50  0001 C CNN
F 3 "" H 2200 2550 50  0001 C CNN
	1    2200 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 2300 2300 2300
Wire Wire Line
	2200 2550 2200 2450
Wire Wire Line
	2200 2450 2300 2450
$Comp
L Device:R R?
U 1 1 5D4A1AB1
P 3450 3000
F 0 "R?" H 3520 3046 50  0000 L CNN
F 1 "49.9k" H 3520 2955 50  0000 L CNN
F 2 "" V 3380 3000 50  0001 C CNN
F 3 "~" H 3450 3000 50  0001 C CNN
	1    3450 3000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5D4A1BCB
P 3450 2600
F 0 "R?" H 3520 2646 50  0000 L CNN
F 1 "49.9k" H 3520 2555 50  0000 L CNN
F 2 "" V 3380 2600 50  0001 C CNN
F 3 "~" H 3450 2600 50  0001 C CNN
	1    3450 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 2300 3300 2300
Wire Wire Line
	3300 2300 3300 2000
Wire Wire Line
	3300 2000 3350 2000
Wire Wire Line
	3100 2450 3300 2450
Wire Wire Line
	3300 2450 3300 2750
Wire Wire Line
	3300 2750 3450 2750
$Comp
L power:GND #PWR?
U 1 1 5D4A36C9
P 3450 3250
F 0 "#PWR?" H 3450 3000 50  0001 C CNN
F 1 "GND" H 3455 3077 50  0000 C CNN
F 2 "" H 3450 3250 50  0001 C CNN
F 3 "" H 3450 3250 50  0001 C CNN
	1    3450 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 3250 3450 3150
Wire Wire Line
	3450 2850 3450 2750
Connection ~ 3450 2750
$Comp
L Device:R R?
U 1 1 5D4A3D4C
P 4650 2150
F 0 "R?" H 4720 2196 50  0000 L CNN
F 1 "49.9k" H 4720 2105 50  0000 L CNN
F 2 "" V 4580 2150 50  0001 C CNN
F 3 "~" H 4650 2150 50  0001 C CNN
	1    4650 2150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5D4A41A5
P 4650 2600
F 0 "R?" H 4720 2646 50  0000 L CNN
F 1 "49.9k" H 4720 2555 50  0000 L CNN
F 2 "" V 4580 2600 50  0001 C CNN
F 3 "~" H 4650 2600 50  0001 C CNN
	1    4650 2600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5D4A43AC
P 4650 3000
F 0 "R?" H 4720 3046 50  0000 L CNN
F 1 "49.9k" H 4720 2955 50  0000 L CNN
F 2 "" V 4580 3000 50  0001 C CNN
F 3 "~" H 4650 3000 50  0001 C CNN
	1    4650 3000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D4A4E7E
P 4650 3250
F 0 "#PWR?" H 4650 3000 50  0001 C CNN
F 1 "GND" H 4655 3077 50  0000 C CNN
F 2 "" H 4650 3250 50  0001 C CNN
F 3 "" H 4650 3250 50  0001 C CNN
	1    4650 3250
	1    0    0    -1  
$EndComp
$Comp
L RFXF9503:RFXF9503 B?
U 1 1 5D4A5893
P 5600 2650
F 0 "B?" H 5600 2185 50  0000 C CNN
F 1 "RFXF9503" H 5600 2276 50  0000 C CNN
F 2 "" H 5600 2650 50  0001 C CNN
F 3 "" H 5600 2650 50  0001 C CNN
	1    5600 2650
	-1   0    0    1   
$EndComp
Wire Wire Line
	4650 3250 4650 3150
$Comp
L power:GND #PWR?
U 1 1 5D4A80B7
P 5850 1950
F 0 "#PWR?" H 5850 1700 50  0001 C CNN
F 1 "GND" H 5855 1777 50  0000 C CNN
F 2 "" H 5850 1950 50  0001 C CNN
F 3 "" H 5850 1950 50  0001 C CNN
	1    5850 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 2750 4650 2800
Wire Wire Line
	5200 2400 5000 2400
Wire Wire Line
	5000 2400 5000 2800
Wire Wire Line
	5000 2800 4650 2800
Connection ~ 4650 2800
Wire Wire Line
	4650 2800 4650 2850
Wire Wire Line
	5200 2550 5100 2550
Wire Wire Line
	5100 2550 5100 2000
Wire Wire Line
	5100 2000 4850 2000
Wire Wire Line
	6000 2400 6000 1800
Wire Wire Line
	6000 1800 5850 1800
Wire Wire Line
	5850 1800 5850 1950
Wire Wire Line
	3350 2000 3350 1900
Wire Wire Line
	4850 1900 4850 2000
Connection ~ 3350 2000
Wire Wire Line
	3350 2000 3450 2000
Connection ~ 4850 2000
Wire Wire Line
	4850 2000 4650 2000
Wire Wire Line
	3350 1900 4850 1900
$Comp
L Connector:Conn_Coaxial J?
U 1 1 5D52C3FC
P 6900 2550
F 0 "J?" H 7000 2525 50  0000 L CNN
F 1 "Conn_Coaxial" H 7000 2434 50  0000 L CNN
F 2 "" H 6900 2550 50  0001 C CNN
F 3 " ~" H 6900 2550 50  0001 C CNN
	1    6900 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 2550 6700 2550
$Comp
L Connector:Conn_Coaxial J?
U 1 1 5D52F702
P 6900 3600
F 0 "J?" H 7000 3575 50  0000 L CNN
F 1 "Conn_Coaxial" H 7000 3484 50  0000 L CNN
F 2 "" H 6900 3600 50  0001 C CNN
F 3 " ~" H 6900 3600 50  0001 C CNN
	1    6900 3600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D5306D6
P 6900 2850
F 0 "#PWR?" H 6900 2600 50  0001 C CNN
F 1 "GND" H 6905 2677 50  0000 C CNN
F 2 "" H 6900 2850 50  0001 C CNN
F 3 "" H 6900 2850 50  0001 C CNN
	1    6900 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 2850 6900 2750
Text Notes 6850 2400 0    50   ~ 0
DUT\n
$Comp
L F2910:F2910 U?
U 1 1 5D53483E
P 1550 5950
F 0 "U?" H 1550 6465 50  0000 C CNN
F 1 "F2910" H 1550 6374 50  0000 C CNN
F 2 "" H 1550 6350 50  0001 C CNN
F 3 "" H 1550 6350 50  0001 C CNN
	1    1550 5950
	1    0    0    -1  
$EndComp
$Comp
L F2910:F2910 U?
U 1 1 5D535AC8
P 3150 5950
F 0 "U?" H 3150 6465 50  0000 C CNN
F 1 "F2910" H 3150 6374 50  0000 C CNN
F 2 "" H 3150 6350 50  0001 C CNN
F 3 "" H 3150 6350 50  0001 C CNN
	1    3150 5950
	1    0    0    -1  
$EndComp
$Comp
L F2910:F2910 U?
U 1 1 5D5362CC
P 4700 5950
F 0 "U?" H 4700 6465 50  0000 C CNN
F 1 "F2910" H 4700 6374 50  0000 C CNN
F 2 "" H 4700 6350 50  0001 C CNN
F 3 "" H 4700 6350 50  0001 C CNN
	1    4700 5950
	1    0    0    -1  
$EndComp
Text HLabel 5250 6500 2    50   Output ~ 0
RF_OUT
Text HLabel 4200 4700 2    50   Input ~ 0
SW2
Text HLabel 6300 4650 2    50   Input ~ 0
SW3
Text HLabel 2500 4950 2    50   Input ~ 0
SW1
Wire Wire Line
	3450 2300 3450 2350
Wire Wire Line
	4650 2300 4650 2350
Text Label 3600 2350 0    50   ~ 0
RX1
Text Label 4400 2350 0    50   ~ 0
A
Text Label 6400 3600 0    50   ~ 0
B
Wire Wire Line
	6400 3600 6700 3600
$Comp
L power:GND #PWR?
U 1 1 5D53AEFA
P 6900 3900
F 0 "#PWR?" H 6900 3650 50  0001 C CNN
F 1 "GND" H 6905 3727 50  0000 C CNN
F 2 "" H 6900 3900 50  0001 C CNN
F 3 "" H 6900 3900 50  0001 C CNN
	1    6900 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 3900 6900 3800
Text Notes 6850 3450 0    50   ~ 0
DET
Wire Wire Line
	4400 2350 4650 2350
Connection ~ 4650 2350
Wire Wire Line
	4650 2350 4650 2450
Wire Wire Line
	3600 2350 3450 2350
Connection ~ 3450 2350
Wire Wire Line
	3450 2350 3450 2450
Wire Wire Line
	1950 6200 1950 6500
Wire Wire Line
	1950 6500 3550 6500
Wire Wire Line
	3550 6500 3550 6200
Wire Wire Line
	3550 6500 5100 6500
Wire Wire Line
	5100 6500 5100 6200
Connection ~ 3550 6500
Wire Wire Line
	5100 6500 5250 6500
Connection ~ 5100 6500
Text Label 2050 5700 0    50   ~ 0
RX1
Text Label 3700 5700 0    50   ~ 0
A
Text Label 5250 5700 0    50   ~ 0
B
Wire Wire Line
	1950 5700 2050 5700
Wire Wire Line
	3550 5700 3700 5700
Wire Wire Line
	5100 5700 5250 5700
NoConn ~ 1150 5700
NoConn ~ 1150 6200
$Comp
L power:GND #PWR?
U 1 1 5D566869
P 950 6250
F 0 "#PWR?" H 950 6000 50  0001 C CNN
F 1 "GND" H 955 6077 50  0000 C CNN
F 2 "" H 950 6250 50  0001 C CNN
F 3 "" H 950 6250 50  0001 C CNN
	1    950  6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 5850 2700 5850
Wire Wire Line
	2500 5850 2500 6200
Wire Wire Line
	2750 6050 2700 6050
Wire Wire Line
	2700 6050 2700 5850
Connection ~ 2700 5850
Wire Wire Line
	2700 5850 2500 5850
Wire Wire Line
	950  5850 950  6250
Wire Wire Line
	950  5850 1100 5850
Wire Wire Line
	1150 6050 1100 6050
Wire Wire Line
	1100 6050 1100 5850
Connection ~ 1100 5850
Wire Wire Line
	1100 5850 1150 5850
NoConn ~ 2750 6200
NoConn ~ 2750 5700
NoConn ~ 4300 5700
NoConn ~ 4300 6200
$Comp
L power:GND #PWR?
U 1 1 5D571C12
P 4050 6200
F 0 "#PWR?" H 4050 5950 50  0001 C CNN
F 1 "GND" H 4055 6027 50  0000 C CNN
F 2 "" H 4050 6200 50  0001 C CNN
F 3 "" H 4050 6200 50  0001 C CNN
	1    4050 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 5850 4250 5850
Wire Wire Line
	4050 5850 4050 6200
Wire Wire Line
	4300 6050 4250 6050
Wire Wire Line
	4250 6050 4250 5850
Connection ~ 4250 5850
Wire Wire Line
	4250 5850 4050 5850
$Comp
L power:GND #PWR?
U 1 1 5D578B80
P 1900 5350
F 0 "#PWR?" H 1900 5100 50  0001 C CNN
F 1 "GND" H 1905 5177 50  0000 C CNN
F 2 "" H 1900 5350 50  0001 C CNN
F 3 "" H 1900 5350 50  0001 C CNN
	1    1900 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 4950 2350 4950
Wire Wire Line
	1950 5850 2350 5850
Wire Wire Line
	2350 4950 2350 5850
Wire Wire Line
	1900 5250 1900 5350
Wire Wire Line
	1900 4950 2350 4950
Connection ~ 2350 4950
$Comp
L Device:C C?
U 1 1 5D57518E
P 1900 5100
F 0 "C?" H 2015 5146 50  0000 L CNN
F 1 "4.9pF" H 2015 5055 50  0000 L CNN
F 2 "" H 1938 4950 50  0001 C CNN
F 3 "~" H 1900 5100 50  0001 C CNN
	1    1900 5100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5D582955
P 3500 5000
F 0 "C?" H 3615 5046 50  0000 L CNN
F 1 "4.9pF" H 3615 4955 50  0000 L CNN
F 2 "" H 3538 4850 50  0001 C CNN
F 3 "~" H 3500 5000 50  0001 C CNN
	1    3500 5000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D582C1B
P 3500 5250
F 0 "#PWR?" H 3500 5000 50  0001 C CNN
F 1 "GND" H 3505 5077 50  0000 C CNN
F 2 "" H 3500 5250 50  0001 C CNN
F 3 "" H 3500 5250 50  0001 C CNN
	1    3500 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 4700 3900 4700
Wire Wire Line
	3900 4700 3900 5850
Wire Wire Line
	3550 5850 3900 5850
Wire Wire Line
	3500 5250 3500 5150
Wire Wire Line
	3500 4850 3500 4700
Wire Wire Line
	3500 4700 3900 4700
Connection ~ 3900 4700
$Comp
L Device:C C?
U 1 1 5D58D31A
P 5800 4850
F 0 "C?" H 5915 4896 50  0000 L CNN
F 1 "4.9pF" H 5915 4805 50  0000 L CNN
F 2 "" H 5838 4700 50  0001 C CNN
F 3 "~" H 5800 4850 50  0001 C CNN
	1    5800 4850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D58D516
P 5800 5100
F 0 "#PWR?" H 5800 4850 50  0001 C CNN
F 1 "GND" H 5805 4927 50  0000 C CNN
F 2 "" H 5800 5100 50  0001 C CNN
F 3 "" H 5800 5100 50  0001 C CNN
	1    5800 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 4700 5800 4650
Wire Wire Line
	5800 4650 6150 4650
Wire Wire Line
	5800 5100 5800 5000
Wire Wire Line
	6150 4650 6150 5850
Wire Wire Line
	5100 5850 6150 5850
Connection ~ 6150 4650
Wire Wire Line
	6150 4650 6300 4650
$Comp
L Device:C C?
U 1 1 5D596F0B
P 1950 7000
F 0 "C?" H 2065 7046 50  0000 L CNN
F 1 "4.5pF" H 2065 6955 50  0000 L CNN
F 2 "" H 1988 6850 50  0001 C CNN
F 3 "~" H 1950 7000 50  0001 C CNN
	1    1950 7000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5D5970FE
P 2450 7000
F 0 "C?" H 2565 7046 50  0000 L CNN
F 1 "0.5pF" H 2565 6955 50  0000 L CNN
F 2 "" H 2488 6850 50  0001 C CNN
F 3 "~" H 2450 7000 50  0001 C CNN
	1    2450 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 6850 2200 6850
Wire Wire Line
	2200 6050 1950 6050
Connection ~ 2200 6850
Wire Wire Line
	2200 6850 2450 6850
$Comp
L power:GND #PWR?
U 1 1 5D568B76
P 2500 6200
F 0 "#PWR?" H 2500 5950 50  0001 C CNN
F 1 "GND" H 2505 6027 50  0000 C CNN
F 2 "" H 2500 6200 50  0001 C CNN
F 3 "" H 2500 6200 50  0001 C CNN
	1    2500 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 6050 2200 6650
$Comp
L power:GND #PWR?
U 1 1 5D5ACCFF
P 2200 7250
F 0 "#PWR?" H 2200 7000 50  0001 C CNN
F 1 "GND" H 2205 7077 50  0000 C CNN
F 2 "" H 2200 7250 50  0001 C CNN
F 3 "" H 2200 7250 50  0001 C CNN
	1    2200 7250
	1    0    0    -1  
$EndComp
Text HLabel 1750 6650 0    50   Input ~ 0
+3v3
Wire Wire Line
	1750 6650 2200 6650
Connection ~ 2200 6650
Wire Wire Line
	2200 6650 2200 6850
Wire Wire Line
	1950 7150 2200 7150
Wire Wire Line
	2200 7250 2200 7150
Connection ~ 2200 7150
Wire Wire Line
	2200 7150 2450 7150
$Comp
L Device:C C?
U 1 1 5D5B4A87
P 3600 7000
F 0 "C?" H 3715 7046 50  0000 L CNN
F 1 "4.5pF" H 3715 6955 50  0000 L CNN
F 2 "" H 3638 6850 50  0001 C CNN
F 3 "~" H 3600 7000 50  0001 C CNN
	1    3600 7000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5D5B5225
P 4050 7000
F 0 "C?" H 4165 7046 50  0000 L CNN
F 1 "0.5pF" H 4165 6955 50  0000 L CNN
F 2 "" H 4088 6850 50  0001 C CNN
F 3 "~" H 4050 7000 50  0001 C CNN
	1    4050 7000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5D5BA884
P 6150 7000
F 0 "C?" H 6265 7046 50  0000 L CNN
F 1 "0.5pF" H 6265 6955 50  0000 L CNN
F 2 "" H 6188 6850 50  0001 C CNN
F 3 "~" H 6150 7000 50  0001 C CNN
	1    6150 7000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5D5BAEA9
P 5700 7000
F 0 "C?" H 5815 7046 50  0000 L CNN
F 1 "4.5pF" H 5815 6955 50  0000 L CNN
F 2 "" H 5738 6850 50  0001 C CNN
F 3 "~" H 5700 7000 50  0001 C CNN
	1    5700 7000
	1    0    0    -1  
$EndComp
Text HLabel 3500 6700 0    50   Input ~ 0
+3v3
Text HLabel 5100 6750 0    50   Input ~ 0
+3v3
$Comp
L power:GND #PWR?
U 1 1 5D5BB8AE
P 3800 7250
F 0 "#PWR?" H 3800 7000 50  0001 C CNN
F 1 "GND" H 3805 7077 50  0000 C CNN
F 2 "" H 3800 7250 50  0001 C CNN
F 3 "" H 3800 7250 50  0001 C CNN
	1    3800 7250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D5BBC2D
P 5950 7250
F 0 "#PWR?" H 5950 7000 50  0001 C CNN
F 1 "GND" H 5955 7077 50  0000 C CNN
F 2 "" H 5950 7250 50  0001 C CNN
F 3 "" H 5950 7250 50  0001 C CNN
	1    5950 7250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 7150 5950 7150
Wire Wire Line
	5950 7250 5950 7150
Connection ~ 5950 7150
Wire Wire Line
	5950 7150 6150 7150
Wire Wire Line
	5700 6850 5950 6850
Wire Wire Line
	5100 6050 5950 6050
Wire Wire Line
	5950 6050 5950 6750
Connection ~ 5950 6850
Wire Wire Line
	5950 6850 6150 6850
Wire Wire Line
	5100 6750 5950 6750
Connection ~ 5950 6750
Wire Wire Line
	5950 6750 5950 6850
Wire Wire Line
	3600 6850 3850 6850
Wire Wire Line
	3850 6850 3850 6700
Wire Wire Line
	3850 6050 3550 6050
Connection ~ 3850 6850
Wire Wire Line
	3850 6850 4050 6850
Wire Wire Line
	3500 6700 3850 6700
Connection ~ 3850 6700
Wire Wire Line
	3850 6700 3850 6050
Wire Wire Line
	3600 7150 3800 7150
Wire Wire Line
	3800 7250 3800 7150
Connection ~ 3800 7150
Wire Wire Line
	3800 7150 4050 7150
$EndSCHEMATC