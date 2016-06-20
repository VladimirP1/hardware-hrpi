EESchema Schematic File Version 2
LIBS:test-rescue
LIBS:power
LIBS:device
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
LIBS:arduino_nano
LIBS:test-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date "15 nov 2012"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L CONN_02X20 P1
U 1 1 575AB297
P 2750 2200
F 0 "P1" H 2750 3250 50  0000 C CNN
F 1 "CONN_02X20" V 2750 2200 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x20" H 2750 1250 50  0001 C CNN
F 3 "" H 2750 1250 50  0000 C CNN
	1    2750 2200
	1    0    0    -1  
$EndComp
Text Label 2150 1250 0    60   ~ 0
3V3
Text Label 2150 1350 0    60   ~ 0
SDA
Text Label 2150 1450 0    60   ~ 0
SCL
Text Label 2150 1550 0    60   ~ 0
RC0
Text Notes 4850 1950 0    60   ~ 0
7,11,13,15,31,33,35,37\nPPM_IN=29
Text Label 2150 1750 0    60   ~ 0
RC1
Text Label 2150 1850 0    60   ~ 0
RC2
Text Label 2150 1950 0    60   ~ 0
RC3
Text Label 2150 2750 0    60   ~ 0
RC4
Text Label 2150 2850 0    60   ~ 0
RC5
Text Label 2150 2950 0    60   ~ 0
RC6
Text Label 2150 3050 0    60   ~ 0
RC7
Text Label 3200 1550 0    60   ~ 0
TXD
Text Label 3200 1650 0    60   ~ 0
RXD
Text Label 3200 2050 0    60   ~ 0
INT
Text Label 2150 2150 0    60   ~ 0
MOSI
Text Label 2150 2250 0    60   ~ 0
MISO
Text Label 2150 2350 0    60   ~ 0
SCLK
Text Label 3200 3050 0    60   ~ 0
NSS2
Text Label 3200 1250 0    60   ~ 0
5V
Text Label 2150 2650 0    60   ~ 0
PPM_IN
$Comp
L CONN_02X04 P2
U 1 1 575ABB32
P 3850 5400
F 0 "P2" H 3850 5650 50  0000 C CNN
F 1 "CONN_02X04" H 3850 5150 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x04" H 3850 4200 50  0001 C CNN
F 3 "" H 3850 4200 50  0000 C CNN
	1    3850 5400
	0    -1   -1   0   
$EndComp
Text Label 3700 5100 1    60   ~ 0
3V3
Text Label 3800 5100 1    60   ~ 0
GND
Text Label 3900 5100 1    60   ~ 0
SDA
Text Label 4000 5100 1    60   ~ 0
SCL
Text Label 3700 5900 1    60   ~ 0
3V3
Text Label 3800 5900 1    60   ~ 0
GND
Text Label 3900 5900 1    60   ~ 0
SDA
Text Label 4000 5900 1    60   ~ 0
SCL
$Comp
L CONN_01X04 P3
U 1 1 575AC08B
P 1400 3850
F 0 "P3" H 1400 4100 50  0000 C CNN
F 1 "CONN_01X04" V 1500 3850 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04" H 1400 3850 50  0001 C CNN
F 3 "" H 1400 3850 50  0000 C CNN
	1    1400 3850
	-1   0    0    1   
$EndComp
Text Label 1650 3700 0    60   ~ 0
RXD5V
Text Label 1650 3800 0    60   ~ 0
TXD5V
Text Label 1650 3900 0    60   ~ 0
5V
Text Label 1650 4000 0    60   ~ 0
GND
$Comp
L D D1
U 1 1 575AC688
P 2400 4550
F 0 "D1" H 2400 4650 50  0000 C CNN
F 1 "D" H 2400 4450 50  0000 C CNN
F 2 "Diodes_ThroughHole:Diode_DO-35_SOD27_Horizontal_RM10" H 2400 4550 50  0001 C CNN
F 3 "" H 2400 4550 50  0000 C CNN
	1    2400 4550
	0    1    1    0   
$EndComp
$Comp
L R R1
U 1 1 575AC7A0
P 2150 4750
F 0 "R1" V 2230 4750 50  0000 C CNN
F 1 "7k" V 2150 4750 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 2080 4750 50  0001 C CNN
F 3 "" H 2150 4750 50  0000 C CNN
	1    2150 4750
	0    1    1    0   
$EndComp
$Comp
L D D2
U 1 1 575ACBDB
P 2400 5200
F 0 "D2" H 2400 5300 50  0000 C CNN
F 1 "D" H 2400 5100 50  0000 C CNN
F 2 "Diodes_ThroughHole:Diode_DO-35_SOD27_Horizontal_RM10" H 2400 5200 50  0001 C CNN
F 3 "" H 2400 5200 50  0000 C CNN
	1    2400 5200
	0    1    1    0   
$EndComp
$Comp
L R R2
U 1 1 575ACBE1
P 2150 5400
F 0 "R2" V 2230 5400 50  0000 C CNN
F 1 "7k" V 2150 5400 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 2080 5400 50  0001 C CNN
F 3 "" H 2150 5400 50  0000 C CNN
	1    2150 5400
	0    1    1    0   
$EndComp
Text Label 2550 4400 0    60   ~ 0
3V3
Text Label 2550 5050 0    60   ~ 0
3V3
Text Label 2550 5400 0    60   ~ 0
TXD
Text Label 2550 4750 0    60   ~ 0
RXD
Text Label 1750 4750 0    60   ~ 0
RXD5V
Text Label 1750 5400 0    60   ~ 0
TXD5V
Text Notes 1300 4250 0    60   ~ 0
Level shifter
Text Notes 1200 3500 0    60   ~ 0
Serial port
Text Notes 3450 4750 0    60   ~ 0
I2C
$Comp
L CONN_01X08 P4
U 1 1 575B0D05
P 3650 4050
F 0 "P4" H 3650 4500 50  0000 C CNN
F 1 "CONN_01X08" V 3750 4050 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x08" H 3650 4050 50  0001 C CNN
F 3 "" H 3650 4050 50  0000 C CNN
	1    3650 4050
	-1   0    0    1   
$EndComp
Text Label 4150 4400 0    60   ~ 0
GND
Text Label 4150 4300 0    60   ~ 0
3V3
Text Label 4150 4200 0    60   ~ 0
MOSI
Text Label 4150 4100 0    60   ~ 0
MISO
Text Label 4150 3900 0    60   ~ 0
INT
Text Label 4150 3800 0    60   ~ 0
NSS1
Text Label 4150 3700 0    60   ~ 0
NSS2
Text Label 3200 2750 0    60   ~ 0
NSS1
Text Notes 3450 3500 0    60   ~ 0
SPI
$Comp
L CONN_01X08 P5
U 1 1 575B3AE0
P 5500 3800
F 0 "P5" H 5500 4250 50  0000 C CNN
F 1 "CONN_01X08" V 5600 3800 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x08" H 5500 3800 50  0001 C CNN
F 3 "" H 5500 3800 50  0000 C CNN
	1    5500 3800
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X08 P7
U 1 1 575B3E19
P 7500 3800
F 0 "P7" H 7500 4250 50  0000 C CNN
F 1 "CONN_01X08" V 7600 3800 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x08" H 7500 3800 50  0001 C CNN
F 3 "" H 7500 3800 50  0000 C CNN
	1    7500 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 1250 2100 1250
Wire Wire Line
	2500 1350 2100 1350
Wire Wire Line
	2500 1450 2100 1450
Wire Wire Line
	2500 1550 2100 1550
Wire Wire Line
	2500 1750 2100 1750
Wire Wire Line
	2500 1850 2100 1850
Wire Wire Line
	2500 1950 2100 1950
Wire Wire Line
	2500 2650 2100 2650
Wire Wire Line
	2500 2750 2100 2750
Wire Wire Line
	2500 2850 2100 2850
Wire Wire Line
	2500 2950 2100 2950
Wire Wire Line
	2500 3050 2100 3050
Wire Wire Line
	3000 1550 3400 1550
Wire Wire Line
	3000 1650 3400 1650
Wire Wire Line
	3000 2050 3400 2050
Wire Wire Line
	2500 2150 2100 2150
Wire Wire Line
	2500 2250 2100 2250
Wire Wire Line
	2500 2350 2100 2350
Wire Wire Line
	3000 3050 3400 3050
Wire Wire Line
	3000 1250 3400 1250
Wire Wire Line
	3150 1250 3150 1350
Wire Wire Line
	3150 1350 3000 1350
Connection ~ 3150 1250
Wire Wire Line
	3700 5150 3700 4850
Wire Wire Line
	3700 5650 3700 5900
Wire Wire Line
	3800 5150 3800 4850
Wire Wire Line
	3900 5150 3900 4850
Wire Wire Line
	4000 5150 4000 4850
Wire Wire Line
	3800 5650 3800 5900
Wire Wire Line
	3900 5650 3900 5900
Wire Wire Line
	4000 5650 4000 5900
Wire Wire Line
	1600 3700 2000 3700
Wire Wire Line
	1600 3800 2000 3800
Wire Wire Line
	1600 3900 2000 3900
Wire Wire Line
	1600 4000 2000 4000
Wire Wire Line
	2300 4750 2750 4750
Wire Wire Line
	2400 4750 2400 4700
Connection ~ 2400 4750
Wire Wire Line
	2400 4400 2750 4400
Wire Wire Line
	2000 4750 1750 4750
Wire Notes Line
	1250 4150 3200 4150
Wire Notes Line
	3200 4150 3200 5700
Wire Notes Line
	3200 5700 1250 5700
Wire Notes Line
	1250 5700 1250 4150
Wire Wire Line
	2300 5400 2750 5400
Wire Wire Line
	2400 5400 2400 5350
Connection ~ 2400 5400
Wire Wire Line
	2400 5050 2750 5050
Wire Wire Line
	2000 5400 1750 5400
Wire Notes Line
	1250 4250 1950 4250
Wire Notes Line
	1950 4250 1950 4150
Wire Notes Line
	1150 3400 3300 3400
Wire Notes Line
	3300 3400 3300 5800
Wire Notes Line
	3300 5800 1150 5800
Wire Notes Line
	1150 5800 1150 3400
Wire Notes Line
	1150 3500 1750 3500
Wire Notes Line
	1750 3500 1750 3400
Wire Notes Line
	3400 4650 4350 4650
Wire Notes Line
	4350 4650 4350 6050
Wire Notes Line
	4350 6050 3400 6050
Wire Notes Line
	3400 6050 3400 4650
Wire Notes Line
	3400 4750 3700 4750
Wire Notes Line
	3700 4750 3700 4650
Wire Wire Line
	3850 3700 4350 3700
Wire Wire Line
	3850 3800 4350 3800
Wire Wire Line
	3850 3900 4350 3900
Wire Wire Line
	3850 4100 4350 4100
Wire Wire Line
	3850 4200 4350 4200
Wire Wire Line
	3850 4300 4350 4300
Wire Wire Line
	3850 4400 4350 4400
Wire Wire Line
	3000 2750 3400 2750
Wire Notes Line
	3400 3400 4500 3400
Wire Notes Line
	4500 3400 4500 4550
Wire Notes Line
	4500 4550 3400 4550
Wire Notes Line
	3400 4550 3400 3400
Wire Notes Line
	3400 3500 3650 3500
Wire Notes Line
	3650 3500 3650 3400
Wire Wire Line
	5300 3450 4800 3450
Wire Wire Line
	5300 3550 4800 3550
Wire Wire Line
	5300 3650 4800 3650
Wire Wire Line
	5300 3750 4800 3750
Wire Wire Line
	5300 3850 4800 3850
Wire Wire Line
	5300 3950 4800 3950
Wire Wire Line
	5300 4050 4800 4050
Wire Wire Line
	5300 4150 4800 4150
Wire Wire Line
	6300 3450 6300 4400
Connection ~ 6300 3550
Connection ~ 6300 3650
Connection ~ 6300 3750
Connection ~ 6300 3850
Connection ~ 6300 3950
Connection ~ 6300 4050
Wire Wire Line
	6300 4400 6900 4400
Connection ~ 6300 4150
Wire Wire Line
	7300 3200 7300 4150
Connection ~ 7300 4050
Connection ~ 7300 3950
Connection ~ 7300 3850
Connection ~ 7300 3750
Connection ~ 7300 3650
Connection ~ 7300 3550
Wire Wire Line
	7300 3200 7800 3200
Connection ~ 7300 3450
Text Label 7550 3200 0    60   ~ 0
RAIL
Text Label 6600 4400 0    60   ~ 0
GND
Text Label 4850 3450 0    60   ~ 0
RC0
Text Label 4850 3550 0    60   ~ 0
RC1
Text Label 4850 3650 0    60   ~ 0
RC2
Text Label 4850 3750 0    60   ~ 0
RC3
Text Label 4850 3850 0    60   ~ 0
RC4
Text Label 4850 3950 0    60   ~ 0
RC5
Text Label 4850 4050 0    60   ~ 0
RC6
Text Label 4850 4150 0    60   ~ 0
RC7
Wire Wire Line
	6000 5550 6850 5550
Text Label 6550 5550 0    60   ~ 0
GND
Wire Wire Line
	6350 5250 6850 5250
Wire Wire Line
	5200 5250 5650 5250
Text Label 6550 5250 0    60   ~ 0
5V
Text Label 5250 5250 0    60   ~ 0
RAIL
$Comp
L C C1
U 1 1 575B56E8
P 5200 5750
F 0 "C1" H 5225 5850 50  0000 L CNN
F 1 "C" H 5225 5650 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 5238 5600 50  0001 C CNN
F 3 "" H 5200 5750 50  0000 C CNN
	1    5200 5750
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 575B5861
P 5450 5750
F 0 "C2" H 5475 5850 50  0000 L CNN
F 1 "C" H 5475 5650 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 5488 5600 50  0001 C CNN
F 3 "" H 5450 5750 50  0000 C CNN
	1    5450 5750
	1    0    0    -1  
$EndComp
$Comp
L CP C3
U 1 1 575B58B6
P 5700 5750
F 0 "C3" H 5725 5850 50  0000 L CNN
F 1 "CP" H 5725 5650 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Radial_D8_L11.5_P3.5" H 5738 5600 50  0001 C CNN
F 3 "" H 5700 5750 50  0000 C CNN
	1    5700 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 5900 6000 5900
Connection ~ 5450 5900
Wire Wire Line
	6000 5900 6000 5550
Connection ~ 5700 5900
Wire Wire Line
	3000 1450 3400 1450
Text Label 3200 1450 0    60   ~ 0
GND
Text Notes 3500 3050 0    60   ~ 0
Use NSS2 for MPU6000
$Comp
L CONN_01X08 P6
U 1 1 575B3BEC
P 6500 3800
F 0 "P6" H 6500 4250 50  0000 C CNN
F 1 "CONN_01X08" V 6600 3800 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x08" H 6500 3800 50  0001 C CNN
F 3 "" H 6500 3800 50  0000 C CNN
	1    6500 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 4000 4350 4000
Text Label 4150 4000 0    60   ~ 0
SCLK
Wire Notes Line
	4700 2950 4700 4500
Wire Notes Line
	4700 4500 8100 4500
Wire Notes Line
	8100 4500 8100 2950
Wire Notes Line
	8100 2950 4700 2950
Text Notes 4750 3050 0    60   ~ 0
RC out
Wire Notes Line
	4700 3050 5200 3050
Wire Notes Line
	5200 3050 5200 2950
Wire Notes Line
	4900 4700 7200 4700
Wire Notes Line
	7200 4700 7200 6100
Wire Notes Line
	7200 6100 4900 6100
Wire Notes Line
	4900 6100 4900 4700
Text Notes 4950 4800 0    60   ~ 0
Power
Wire Notes Line
	4900 4800 5300 4800
Wire Notes Line
	5300 4800 5300 4700
Wire Wire Line
	4950 5600 5700 5600
Connection ~ 5450 5600
$Comp
L Arduino_Nano U2
U 1 1 575BCB18
P 9400 3750
F 0 "U2" H 8900 2900 60  0000 C CNN
F 1 "Arduino_Nano" H 9150 2800 60  0000 C CNN
F 2 "arduino:arduino_nano" V 9150 3900 60  0001 C CNN
F 3 "" V 9150 3900 60  0000 C CNN
	1    9400 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	8650 4400 8200 4400
Wire Wire Line
	8650 4200 8200 4200
$Comp
L CONN_01X10 P8
U 1 1 575BE628
P 11000 3550
F 0 "P8" H 11000 4100 50  0000 C CNN
F 1 "CONN_01X10" V 11100 3550 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x10" H 11000 3550 50  0001 C CNN
F 3 "" H 11000 3550 50  0000 C CNN
	1    11000 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	9650 3100 10800 3100
Wire Wire Line
	10800 3200 9650 3200
Wire Wire Line
	9650 3300 10800 3300
Wire Wire Line
	10800 3400 9650 3400
Wire Wire Line
	9650 3500 10800 3500
Wire Wire Line
	10800 3600 9650 3600
Wire Wire Line
	9650 3700 10800 3700
Wire Wire Line
	10800 3800 9650 3800
$Comp
L D D3
U 1 1 575BEF43
P 9800 2100
F 0 "D3" H 9800 2200 50  0000 C CNN
F 1 "D" H 9800 2000 50  0000 C CNN
F 2 "Diodes_ThroughHole:Diode_DO-35_SOD27_Horizontal_RM10" H 9800 2100 50  0001 C CNN
F 3 "" H 9800 2100 50  0000 C CNN
	1    9800 2100
	0    1    1    0   
$EndComp
$Comp
L R R3
U 1 1 575BEF49
P 9550 2300
F 0 "R3" V 9630 2300 50  0000 C CNN
F 1 "7k" V 9550 2300 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 9480 2300 50  0001 C CNN
F 3 "" H 9550 2300 50  0000 C CNN
	1    9550 2300
	0    1    1    0   
$EndComp
Text Label 9950 1950 0    60   ~ 0
3V3
Text Label 9950 2300 0    60   ~ 0
PPM_IN
Text Label 9150 2300 0    60   ~ 0
PPM_IN5V
Wire Wire Line
	9700 2300 10150 2300
Wire Wire Line
	9800 2300 9800 2250
Connection ~ 9800 2300
Wire Wire Line
	9800 1950 10150 1950
Wire Wire Line
	9400 2300 9150 2300
Wire Wire Line
	9650 4000 9900 4000
Text Label 9650 4000 0    60   ~ 0
PPM_IN5V
Wire Wire Line
	10800 4000 10800 4200
Wire Wire Line
	10800 4200 9650 4200
Wire Wire Line
	10800 3900 10350 3900
Text Label 10400 3900 0    60   ~ 0
5V
Text Label 8250 4400 0    60   ~ 0
GND
Text Label 8250 4200 0    60   ~ 0
5V
$Comp
L CONN_01X01 P9
U 1 1 575C0076
P 5850 5250
F 0 "P9" H 5850 5350 50  0000 C CNN
F 1 "CONN_01X01" V 5950 5250 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01" H 5850 5250 50  0001 C CNN
F 3 "" H 5850 5250 50  0000 C CNN
	1    5850 5250
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X01 P10
U 1 1 575C011F
P 6150 5250
F 0 "P10" H 6150 5350 50  0000 C CNN
F 1 "CONN_01X01" V 6250 5250 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01" H 6150 5250 50  0001 C CNN
F 3 "" H 6150 5250 50  0000 C CNN
	1    6150 5250
	-1   0    0    1   
$EndComp
Connection ~ 5200 5600
Text Label 5000 5600 0    60   ~ 0
5V
Wire Wire Line
	8650 3800 8200 3800
Wire Wire Line
	8650 3900 8200 3900
Text Label 8250 3800 0    60   ~ 0
SDA
Text Label 8250 3900 0    60   ~ 0
SCL
$Comp
L CONN_01X06 P?
U 1 1 575C163F
P 7550 2100
F 0 "P?" H 7550 2450 50  0000 C CNN
F 1 "CONN_01X06" V 7650 2100 50  0000 C CNN
F 2 "" H 7550 2100 50  0000 C CNN
F 3 "" H 7550 2100 50  0000 C CNN
	1    7550 2100
	-1   0    0    1   
$EndComp
Wire Wire Line
	7750 1850 8250 1850
Wire Wire Line
	7750 1950 8250 1950
Wire Wire Line
	7750 2050 8250 2050
Wire Wire Line
	7750 2150 8250 2150
Wire Wire Line
	7750 2250 8250 2250
Wire Wire Line
	7750 2350 8250 2350
Text Label 7850 2350 0    60   ~ 0
GND
Text Label 7850 2250 0    60   ~ 0
GND
Text Label 7850 2150 0    60   ~ 0
5V
Text Label 7850 2050 0    60   ~ 0
5V
Text Label 7850 1950 0    60   ~ 0
A0
Text Label 7850 1850 0    60   ~ 0
A1
Wire Wire Line
	8650 3400 8350 3400
Wire Wire Line
	8650 3500 8350 3500
Text Label 8400 3400 0    60   ~ 0
A0
Text Label 8400 3500 0    60   ~ 0
A1
$EndSCHEMATC
