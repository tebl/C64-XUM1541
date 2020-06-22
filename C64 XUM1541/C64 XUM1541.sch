EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Commodore 64 XUM1541"
Date ""
Rev "B"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L C64_IEC:C64_IEC J1
U 1 1 5EDD9D01
P 7200 3850
F 0 "J1" H 7475 4175 50  0000 C CNN
F 1 "C64_IEC" H 7475 4100 50  0000 C CNN
F 2 "C64_IEC:C64_IEC" H 7200 3850 50  0001 C CNN
F 3 "http://www.mouser.com/ds/2/18/40_c091_abd_e-75918.pdf" H 7200 3850 50  0001 C CNN
	1    7200 3850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR06
U 1 1 5EDDCFBD
P 6575 4025
F 0 "#PWR06" H 6575 3775 50  0001 C CNN
F 1 "GND" H 6580 3852 50  0000 C CNN
F 2 "" H 6575 4025 50  0001 C CNN
F 3 "" H 6575 4025 50  0001 C CNN
	1    6575 4025
	1    0    0    -1  
$EndComp
Wire Wire Line
	6575 4025 6575 3850
Text GLabel 6825 3950 0    60   Input ~ 0
CLK
Wire Wire Line
	6575 3850 6800 3850
Wire Wire Line
	6825 3950 6900 3950
$Comp
L power:GND #PWR07
U 1 1 5EDE0044
P 7825 4025
F 0 "#PWR07" H 7825 3775 50  0001 C CNN
F 1 "GND" H 7830 3852 50  0000 C CNN
F 2 "" H 7825 4025 50  0001 C CNN
F 3 "" H 7825 4025 50  0001 C CNN
	1    7825 4025
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7825 4025 7825 3950
Wire Wire Line
	7825 3850 7600 3850
Wire Wire Line
	7500 3950 7825 3950
Connection ~ 7825 3950
Wire Wire Line
	7825 3950 7825 3850
Wire Wire Line
	6825 3750 6900 3750
Text GLabel 7200 4225 3    60   Input ~ 0
ATN
Wire Wire Line
	7200 4225 7200 4150
Text GLabel 7575 3750 2    60   Input ~ 0
SRQ
Wire Wire Line
	7575 3750 7500 3750
Text GLabel 7200 3475 1    60   Input ~ 0
RST
Wire Wire Line
	7200 3475 7200 3550
NoConn ~ 5250 3300
Wire Wire Line
	4775 4725 4775 4650
$Comp
L power:GND #PWR0101
U 1 1 5EE04E5F
P 4775 4800
F 0 "#PWR0101" H 4775 4550 50  0001 C CNN
F 1 "GND" H 4780 4627 50  0000 C CNN
F 2 "" H 4775 4800 50  0001 C CNN
F 3 "" H 4775 4800 50  0001 C CNN
	1    4775 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4775 4725 4675 4725
Wire Wire Line
	4675 4725 4675 4650
Wire Wire Line
	4775 4725 4875 4725
Wire Wire Line
	4875 4725 4875 4650
Connection ~ 4775 4725
Wire Wire Line
	4775 4725 4775 4800
Wire Wire Line
	4775 3050 4775 2975
$Comp
L arduino_pro_micro:Arduino_Pro_Micro A1
U 1 1 5EDD95E8
P 4775 3550
F 0 "A1" H 5150 4050 50  0000 C CNN
F 1 "Arduino_Pro_Micro" H 5150 3975 50  0000 C CNN
F 2 "arduino_pro_micro:Arduino_Pro_Micro" H 4725 3550 50  0001 C CNN
F 3 "~" H 4725 3550 50  0001 C CNN
	1    4775 3550
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0102
U 1 1 5EE06914
P 4775 2975
F 0 "#PWR0102" H 4775 2825 50  0001 C CNN
F 1 "VCC" H 4792 3148 50  0000 C CNN
F 2 "" H 4775 2975 50  0001 C CNN
F 3 "" H 4775 2975 50  0001 C CNN
	1    4775 2975
	1    0    0    -1  
$EndComp
Text GLabel 4225 4300 0    60   Input ~ 0
ATN
Wire Wire Line
	4300 4300 4225 4300
Text GLabel 4225 4400 0    60   Input ~ 0
SRQ
Wire Wire Line
	4225 4400 4300 4400
Text GLabel 5325 4400 2    60   Input ~ 0
RST
Wire Wire Line
	5250 4400 5325 4400
Text GLabel 5325 4300 2    60   Input ~ 0
DAT
Wire Wire Line
	5250 4300 5325 4300
Text GLabel 5325 4200 2    60   Input ~ 0
CLK
Wire Wire Line
	5250 4200 5325 4200
NoConn ~ 4300 4200
NoConn ~ 4300 4100
NoConn ~ 4300 4000
NoConn ~ 4300 3900
Text GLabel 6825 3750 0    60   Input ~ 0
DAT
$Comp
L Device:R R1
U 1 1 5EE0FE5F
P 7200 5500
F 0 "R1" H 7270 5546 50  0000 L CNN
F 1 "330" H 7270 5455 50  0000 L CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7130 5500 50  0001 C CNN
F 3 "~" H 7200 5500 50  0001 C CNN
	1    7200 5500
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D1
U 1 1 5EE10306
P 7200 5800
F 0 "D1" V 7239 5682 50  0000 R CNN
F 1 "POWER" V 7148 5682 50  0000 R CNN
F 2 "LEDs:LED_D5.0mm" H 7200 5800 50  0001 C CNN
F 3 "~" H 7200 5800 50  0001 C CNN
	1    7200 5800
	0    -1   -1   0   
$EndComp
$Comp
L power:VCC #PWR0103
U 1 1 5EE10D8F
P 7200 5350
F 0 "#PWR0103" H 7200 5200 50  0001 C CNN
F 1 "VCC" H 7217 5523 50  0000 C CNN
F 2 "" H 7200 5350 50  0001 C CNN
F 3 "" H 7200 5350 50  0001 C CNN
	1    7200 5350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 5EE111F9
P 7200 6025
F 0 "#PWR0104" H 7200 5775 50  0001 C CNN
F 1 "GND" H 7205 5852 50  0000 C CNN
F 2 "" H 7200 6025 50  0001 C CNN
F 3 "" H 7200 6025 50  0001 C CNN
	1    7200 6025
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 6025 7200 5950
$Comp
L Switch:SW_Push SW1
U 1 1 5EE1232D
P 5875 3500
F 0 "SW1" H 5875 3750 50  0000 C CNN
F 1 "RESET" H 5875 3675 50  0000 C CNN
F 2 "Buttons_Switches_THT:SW_Tactile_SPST_Angled_PTS645Vx39-2LFS" H 5875 3700 50  0001 C CNN
F 3 "~" H 5875 3700 50  0001 C CNN
	1    5875 3500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 5EE13E2C
P 6150 3575
F 0 "#PWR0105" H 6150 3325 50  0001 C CNN
F 1 "GND" H 6155 3402 50  0000 C CNN
F 2 "" H 6150 3575 50  0001 C CNN
F 3 "" H 6150 3575 50  0001 C CNN
	1    6150 3575
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 3575 6150 3500
Wire Wire Line
	6075 3500 6150 3500
Text Label 4275 3300 2    60   ~ 0
D3
Text Label 4275 3400 2    60   ~ 0
D2
Text Label 4275 3700 2    60   ~ 0
D1
Text Label 4275 3800 2    60   ~ 0
D0
Text Label 5275 3700 0    60   ~ 0
D4
Text Label 5275 3800 0    60   ~ 0
D5
Text Label 5275 3900 0    60   ~ 0
D6
Text Label 5275 4000 0    60   ~ 0
D7
Wire Wire Line
	5250 3500 5675 3500
Wire Wire Line
	5250 3700 5625 3700
Wire Wire Line
	5625 3800 5250 3800
Wire Wire Line
	5250 3900 5625 3900
Wire Wire Line
	5625 4000 5250 4000
Wire Wire Line
	3925 3300 4300 3300
Wire Wire Line
	4300 3400 3925 3400
Wire Wire Line
	3925 3700 4300 3700
Wire Wire Line
	4300 3800 3925 3800
Entry Wire Line
	5625 3700 5725 3800
Entry Wire Line
	5625 3800 5725 3900
Entry Wire Line
	5625 3900 5725 4000
Entry Wire Line
	5625 4000 5725 4100
Entry Wire Line
	3825 3400 3925 3300
Entry Wire Line
	3825 3500 3925 3400
Entry Wire Line
	3825 3800 3925 3700
Entry Wire Line
	3825 3900 3925 3800
Wire Bus Line
	3825 6775 5725 6775
$Comp
L Connector_Generic:Conn_02x08_Odd_Even J2
U 1 1 5EF167B3
P 4725 5650
F 0 "J2" H 4775 6167 50  0000 C CNN
F 1 "PARALLEL" H 4775 6076 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x08_Pitch2.54mm" H 4725 5650 50  0001 C CNN
F 3 "~" H 4725 5650 50  0001 C CNN
	1    4725 5650
	1    0    0    -1  
$EndComp
Text Label 4500 5650 2    60   ~ 0
D3
Text Label 4500 5550 2    60   ~ 0
D2
Text Label 4500 5450 2    60   ~ 0
D1
Text Label 4500 5350 2    60   ~ 0
D0
Entry Wire Line
	3825 5750 3925 5650
Entry Wire Line
	3825 5650 3925 5550
Entry Wire Line
	3825 5550 3925 5450
Entry Wire Line
	3825 5450 3925 5350
Text Label 4500 5750 2    60   ~ 0
D4
Text Label 4500 5850 2    60   ~ 0
D5
Text Label 4500 5950 2    60   ~ 0
D6
Text Label 4500 6050 2    60   ~ 0
D7
Entry Wire Line
	3925 5750 3825 5850
Entry Wire Line
	3925 5850 3825 5950
Entry Wire Line
	3925 5950 3825 6050
Entry Wire Line
	3925 6050 3825 6150
Wire Wire Line
	5025 5350 5100 5350
Wire Wire Line
	5100 5350 5100 5450
Wire Wire Line
	5025 6050 5100 6050
Connection ~ 5100 6050
Wire Wire Line
	5100 6050 5100 6125
Wire Wire Line
	5100 5950 5025 5950
Connection ~ 5100 5950
Wire Wire Line
	5100 5950 5100 6050
Wire Wire Line
	5025 5850 5100 5850
Connection ~ 5100 5850
Wire Wire Line
	5100 5850 5100 5950
Wire Wire Line
	5025 5750 5100 5750
Connection ~ 5100 5750
Wire Wire Line
	5100 5750 5100 5850
Wire Wire Line
	5025 5650 5100 5650
Connection ~ 5100 5650
Wire Wire Line
	5100 5650 5100 5750
Wire Wire Line
	5025 5550 5100 5550
Connection ~ 5100 5550
Wire Wire Line
	5100 5550 5100 5650
Wire Wire Line
	5025 5450 5100 5450
Connection ~ 5100 5450
Wire Wire Line
	5100 5450 5100 5550
$Comp
L power:GND #PWR01
U 1 1 5EF2A7F5
P 5100 6125
F 0 "#PWR01" H 5100 5875 50  0001 C CNN
F 1 "GND" H 5105 5952 50  0000 C CNN
F 2 "" H 5100 6125 50  0001 C CNN
F 3 "" H 5100 6125 50  0001 C CNN
	1    5100 6125
	1    0    0    -1  
$EndComp
Wire Wire Line
	3925 5350 4525 5350
Wire Wire Line
	3925 5450 4525 5450
Wire Wire Line
	3925 5550 4525 5550
Wire Wire Line
	3925 5650 4525 5650
Wire Wire Line
	3925 5750 4525 5750
Wire Wire Line
	3925 5850 4525 5850
Wire Wire Line
	3925 5950 4525 5950
Wire Wire Line
	3925 6050 4525 6050
Wire Notes Line
	3700 5050 5850 5050
Wire Notes Line
	5850 5050 5850 6550
Wire Notes Line
	5850 6550 3700 6550
Wire Notes Line
	3700 6550 3700 5050
Wire Notes Line
	6875 5050 7600 5050
Wire Notes Line
	7600 5050 7600 6275
Wire Notes Line
	7600 6275 6875 6275
Wire Notes Line
	6875 6275 6875 5050
Text Notes 6975 7025 0    60   ~ 0
Simple version of the XUM1541, a device that can be used to communicate with a\nCommodore 1541 floppy disk drive from a modern computer. This makes it easy\nto archive disks when moving over to PI1541 or something similar.\n\nLED and parallel connectors are optional and not needed for a  basic build.
Text Notes 7050 5025 0    60   ~ 0
(optional)
Text Notes 4000 5025 0    60   ~ 0
(optional)
Wire Bus Line
	5725 3800 5725 6775
Wire Bus Line
	3825 3400 3825 6775
$EndSCHEMATC
