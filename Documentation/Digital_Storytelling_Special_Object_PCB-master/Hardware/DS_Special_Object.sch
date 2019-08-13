EESchema Schematic File Version 4
LIBS:DS_Special_Object-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "DS Special Object PCB "
Date "2018-09-25"
Rev "V0.1"
Comp "Meow Wolf "
Comment1 "Joel Bartlett "
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L power:GND #PWR08
U 1 1 5BA42D3A
P 2950 2600
F 0 "#PWR08" H 2950 2350 50  0001 C CNN
F 1 "GND" H 2955 2427 50  0000 C CNN
F 2 "" H 2950 2600 50  0001 C CNN
F 3 "" H 2950 2600 50  0001 C CNN
	1    2950 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 2550 3000 2550
$Comp
L MeowWolf_Templates:ADAFRUIT_HUZZAH32 U3
U 1 1 5BA45DE5
P 3500 1900
F 0 "U3" H 3500 3037 60  0000 C CNN
F 1 "ADAFRUIT_HUZZAH32" H 3500 2931 60  0000 C CNN
F 2 "MeowWolf_Templates:ADAFRUIT_HUZZAH32" H 3500 1900 60  0001 C CNN
F 3 "" H 3500 1900 60  0001 C CNN
	1    3500 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 2600 2950 2550
$Comp
L SparkFun-IC-Special-Function:DRV2605L U5
U 1 1 5BA4A847
P 7000 1450
F 0 "U5" H 7000 1904 45  0000 C CNN
F 1 "DRV2605L" H 7000 1820 45  0000 C CNN
F 2 "Silicon-Standard:VSSOP-10" H 7000 1850 20  0001 C CNN
F 3 "" H 7000 1450 60  0001 C CNN
	1    7000 1450
	1    0    0    -1  
$EndComp
Text Notes 6750 900  0    50   ~ 0
VDD = 2-5.2V
Wire Wire Line
	7600 1250 7700 1250
Wire Wire Line
	7700 1250 7700 1150
Wire Wire Line
	7600 1650 7700 1650
Wire Wire Line
	7700 1650 7700 1250
Connection ~ 7700 1250
$Comp
L power:GND #PWR014
U 1 1 5BA4A9D4
P 7800 1800
F 0 "#PWR014" H 7800 1550 50  0001 C CNN
F 1 "GND" H 7805 1627 50  0000 C CNN
F 2 "" H 7800 1800 50  0001 C CNN
F 3 "" H 7800 1800 50  0001 C CNN
	1    7800 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7800 1800 7800 1450
Wire Wire Line
	7800 1450 7600 1450
Wire Wire Line
	7600 1350 8000 1350
Wire Wire Line
	7600 1550 8000 1550
Text GLabel 8000 1350 2    50   Input ~ 0
OUT-
Text GLabel 8000 1550 2    50   Input ~ 0
OUT+
$Comp
L Device:C C6
U 1 1 5BA4AAFB
P 8600 1450
F 0 "C6" H 8715 1496 50  0000 L CNN
F 1 "0.1uF" H 8715 1405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 8638 1300 50  0001 C CNN
F 3 "~" H 8600 1450 50  0001 C CNN
	1    8600 1450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR016
U 1 1 5BA4AB33
P 8600 1800
F 0 "#PWR016" H 8600 1550 50  0001 C CNN
F 1 "GND" H 8605 1627 50  0000 C CNN
F 2 "" H 8600 1800 50  0001 C CNN
F 3 "" H 8600 1800 50  0001 C CNN
	1    8600 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 1150 8600 1300
Wire Wire Line
	8600 1800 8600 1600
$Comp
L Device:C C5
U 1 1 5BA4AC1E
P 6300 1850
F 0 "C5" H 6415 1896 50  0000 L CNN
F 1 "1.0uF" H 6415 1805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6338 1700 50  0001 C CNN
F 3 "~" H 6300 1850 50  0001 C CNN
	1    6300 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 1700 6300 1250
Wire Wire Line
	6300 1250 6400 1250
$Comp
L power:GND #PWR012
U 1 1 5BA4AD0E
P 6300 2050
F 0 "#PWR012" H 6300 1800 50  0001 C CNN
F 1 "GND" H 6305 1877 50  0000 C CNN
F 2 "" H 6300 2050 50  0001 C CNN
F 3 "" H 6300 2050 50  0001 C CNN
	1    6300 2050
	1    0    0    -1  
$EndComp
Text GLabel 6200 1350 0    50   Input ~ 0
SDA_5V
Text GLabel 6200 1450 0    50   Input ~ 0
SCL_5V
$Comp
L power:+3.3V #PWR017
U 1 1 5BA4B9EE
P 9900 1250
F 0 "#PWR017" H 9900 1100 50  0001 C CNN
F 1 "+3.3V" H 9915 1423 50  0000 C CNN
F 2 "" H 9900 1250 50  0001 C CNN
F 3 "" H 9900 1250 50  0001 C CNN
	1    9900 1250
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR07
U 1 1 5BA4BE90
P 2900 900
F 0 "#PWR07" H 2900 750 50  0001 C CNN
F 1 "+3.3V" H 2915 1073 50  0000 C CNN
F 2 "" H 2900 900 50  0001 C CNN
F 3 "" H 2900 900 50  0001 C CNN
	1    2900 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 900  2900 1150
Wire Wire Line
	2900 1150 3000 1150
NoConn ~ 6400 1550
Wire Wire Line
	4000 2450 4150 2450
Wire Wire Line
	4000 2550 4150 2550
Text GLabel 4150 2450 2    50   Input ~ 0
SCL_3V3
Text GLabel 4150 2550 2    50   Input ~ 0
SDA_3V3
Wire Wire Line
	6200 1650 6250 1650
Text GLabel 6200 1650 0    50   Input ~ 0
MOTOR_EN
Wire Wire Line
	6300 2050 6300 2000
Wire Wire Line
	4000 2350 4150 2350
Text GLabel 4150 2350 2    50   Input ~ 0
MOTOR_EN
Text GLabel 6850 2650 2    50   Input ~ 0
OUT-
Text GLabel 6850 2750 2    50   Input ~ 0
OUT+
Wire Wire Line
	6850 2650 6800 2650
Wire Wire Line
	6850 2750 6800 2750
$Comp
L power:GND #PWR03
U 1 1 5BFCFC2D
P 1450 1200
F 0 "#PWR03" H 1450 950 50  0001 C CNN
F 1 "GND" H 1455 1027 50  0000 C CNN
F 2 "" H 1450 1200 50  0001 C CNN
F 3 "" H 1450 1200 50  0001 C CNN
	1    1450 1200
	1    0    0    -1  
$EndComp
Text GLabel 700  2100 0    50   Input ~ 0
LED
Text GLabel 4150 2250 2    50   Input ~ 0
LED
$Comp
L Connector_Generic:Conn_01x02 J3
U 1 1 5BFEC5A0
P 6600 2750
F 0 "J3" H 6520 2425 50  0000 C CNN
F 1 "Conn_01x02" H 6520 2516 50  0000 C CNN
F 2 "Connector_Molex:Molex_Nano-Fit_105309-xx02_1x02_P2.50mm_Vertical" H 6600 2750 50  0001 C CNN
F 3 "~" H 6600 2750 50  0001 C CNN
	1    6600 2750
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J2
U 1 1 5BFED081
P 1700 1050
F 0 "J2" H 1780 1092 50  0000 L CNN
F 1 "Conn_01x03" H 1780 1001 50  0000 L CNN
F 2 "Connector_Molex:Molex_Nano-Fit_105309-xx03_1x03_P2.50mm_Vertical" H 1700 1050 50  0001 C CNN
F 3 "~" H 1700 1050 50  0001 C CNN
	1    1700 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 900  1450 950 
Wire Wire Line
	1450 950  1500 950 
Wire Wire Line
	1500 1150 1450 1150
Wire Wire Line
	1450 1150 1450 1200
$Comp
L SparkFun-Hardware:STAND-OFF H1
U 1 1 5BFF313E
P 10200 6900
F 0 "H1" H 10200 7000 45  0001 C CNN
F 1 "STAND-OFF" H 10200 6800 45  0001 C CNN
F 2 "Hardware:STAND-OFF" H 10200 7050 20  0001 C CNN
F 3 "" H 10200 6900 50  0001 C CNN
F 4 "XXX-00000" H 10278 6900 60  0001 L CNN "Field4"
	1    10200 6900
	1    0    0    -1  
$EndComp
$Comp
L SparkFun-Hardware:STAND-OFF H2
U 1 1 5BFF31E9
P 10400 6900
F 0 "H2" H 10400 7000 45  0001 C CNN
F 1 "STAND-OFF" H 10400 6800 45  0001 C CNN
F 2 "Hardware:STAND-OFF" H 10400 7050 20  0001 C CNN
F 3 "" H 10400 6900 50  0001 C CNN
F 4 "XXX-00000" H 10478 6900 60  0001 L CNN "Field4"
	1    10400 6900
	1    0    0    -1  
$EndComp
$Comp
L MeowWolf_Logos:MeowWolf_Logo_Horizontal LOGO1
U 1 1 5BFF34AE
P 8550 6850
F 0 "LOGO1" H 8550 6600 60  0001 C CNN
F 1 "MeowWolf_Logo_Horizontal" H 8550 7100 60  0001 C CNN
F 2 "MeowWolf_Logos:MW_Logo_Horizontal_1.25inch" H 8550 6850 60  0001 C CNN
F 3 "" H 8550 6850 60  0001 C CNN
	1    8550 6850
	1    0    0    -1  
$EndComp
$Comp
L SparkFun-Batteries:LIPO-OUTLINE2000 BT1
U 1 1 5BFCAFA4
P 9750 800
F 0 "BT1" H 9750 950 45  0001 C CNN
F 1 "LIPO-OUTLINE2000" H 9750 750 45  0001 C CNN
F 2 "Batteries:LIPO-1000" H 9750 1000 20  0001 C CNN
F 3 "" H 9750 800 50  0001 C CNN
F 4 "BATT-08764" H 9878 850 60  0000 L CNN "Field4"
	1    9750 800 
	1    0    0    -1  
$EndComp
Wire Notes Line
	2300 3000 2300 500 
Wire Notes Line
	9050 3000 9050 500 
Wire Notes Line
	9050 900  11200 900 
Text Notes 9800 550  0    50   ~ 0
Battery Placeholder\n
Text Notes 6950 600  0    50   ~ 0
Haptic Motor Driver\n
Text Notes 3100 600  0    50   ~ 0
Adafruit Huzzah32
Text Notes 950  600  0    50   ~ 0
LED Connection
Text Notes 2550 5300 0    50   ~ 0
Low Battery Alert pin could in theory diable the PAM booster IC \ncausing 5V powered segments (haptic motor and LEDs) to be disabled \nwhile still providing power to the ESP32 and keeping its network \nconnection alive.  
Wire Wire Line
	3500 3900 3600 3900
Text GLabel 3600 3900 2    50   Input ~ 0
SDA_3V3
Text GLabel 3600 4100 2    50   Input ~ 0
SCL_3V3
Text Notes 600  3700 0    50   ~ 0
JST_Battery
$Comp
L SparkFun-IC-Power:PAM2401 U4
U 1 1 5BD4F120
P 5400 4050
F 0 "U4" H 5400 4704 45  0000 C CNN
F 1 "PAM2401" H 5400 4620 45  0000 C CNN
F 2 "Silicon-Standard:MSOP8" H 5400 4650 20  0001 C CNN
F 3 "" H 5400 4050 60  0001 C CNN
F 4 "IC-XXXXX" H 5400 4631 60  0001 C CNN "Field4"
	1    5400 4050
	1    0    0    -1  
$EndComp
Text Notes 2500 4900 0    79   ~ 0
BATTERY_FUEL_GAUGE\n
$Comp
L power:GND #PWR06
U 1 1 5BF8B12E
P 2550 4550
F 0 "#PWR06" H 2550 4300 50  0001 C CNN
F 1 "GND" H 2555 4377 50  0000 C CNN
F 2 "" H 2550 4550 50  0001 C CNN
F 3 "" H 2550 4550 50  0001 C CNN
	1    2550 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 4100 2550 4100
Wire Wire Line
	2550 4100 2550 4300
Wire Wire Line
	2600 4300 2550 4300
Connection ~ 2550 4300
Wire Wire Line
	2550 4300 2550 4450
Connection ~ 2550 4450
Wire Wire Line
	2550 4450 2550 4550
Wire Wire Line
	2600 3900 2450 3900
Wire Wire Line
	2450 3700 2600 3700
$Comp
L SparkFun-Connectors:JST_2MM_MALE J1
U 1 1 5BB2593E
P 900 3350
F 0 "J1" V 1186 3344 50  0000 C CNN
F 1 "JST_2MM_MALE" H 900 3350 50  0001 L BNN
F 2 "Connectors:JST-2-SMD" H 930 3500 20  0001 C CNN
F 3 "" H 900 3350 50  0001 C CNN
	1    900  3350
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR01
U 1 1 5BB307D1
P 1150 3450
F 0 "#PWR01" H 1150 3200 50  0001 C CNN
F 1 "GND" H 1155 3277 50  0000 C CNN
F 2 "" H 1150 3450 50  0001 C CNN
F 3 "" H 1150 3450 50  0001 C CNN
	1    1150 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 3400 1150 3400
Wire Wire Line
	1150 3400 1150 3450
Wire Wire Line
	4400 3300 4400 3650
Wire Wire Line
	4700 3800 4700 3650
Connection ~ 4700 3650
Wire Wire Line
	4700 3650 4800 3650
$Comp
L power:GND #PWR09
U 1 1 5BD47D95
P 4700 4550
F 0 "#PWR09" H 4700 4300 50  0001 C CNN
F 1 "GND" H 4705 4377 50  0000 C CNN
F 2 "" H 4700 4550 50  0001 C CNN
F 3 "" H 4700 4550 50  0001 C CNN
	1    4700 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 4100 4700 4550
NoConn ~ 4900 4450
$Comp
L power:GND #PWR010
U 1 1 5BD6F876
P 6050 4550
F 0 "#PWR010" H 6050 4300 50  0001 C CNN
F 1 "GND" H 6055 4377 50  0000 C CNN
F 2 "" H 6050 4550 50  0001 C CNN
F 3 "" H 6050 4550 50  0001 C CNN
	1    6050 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 4250 5950 4250
Wire Wire Line
	5950 4250 5950 4450
Wire Wire Line
	5900 4450 5950 4450
Connection ~ 5950 4450
Wire Wire Line
	6150 4050 6150 4000
Wire Wire Line
	5900 4050 6150 4050
Wire Wire Line
	6150 4100 6150 4050
Connection ~ 6150 4050
Wire Wire Line
	5900 3850 6050 3850
Wire Wire Line
	6050 3850 6050 3650
Wire Wire Line
	6050 3650 6150 3650
Wire Wire Line
	6150 3700 6150 3650
Connection ~ 6150 3650
Wire Wire Line
	6150 3650 6400 3650
Wire Wire Line
	4800 3350 4800 3650
Connection ~ 4800 3650
Wire Wire Line
	5950 3350 5950 3650
Wire Wire Line
	5950 3650 5900 3650
Wire Wire Line
	6150 4400 6150 4450
Wire Wire Line
	6150 4450 6050 4450
Wire Wire Line
	6400 3700 6400 3650
Wire Wire Line
	6400 4000 6400 4450
Wire Wire Line
	6400 4450 6150 4450
Connection ~ 6150 4450
Wire Wire Line
	6050 4550 6050 4450
Connection ~ 6050 4450
Wire Wire Line
	6050 4450 5950 4450
$Comp
L power:+5V #PWR011
U 1 1 5BE4D9FA
P 6500 3450
F 0 "#PWR011" H 6500 3300 50  0001 C CNN
F 1 "+5V" H 6515 3623 50  0000 C CNN
F 2 "" H 6500 3450 50  0001 C CNN
F 3 "" H 6500 3450 50  0001 C CNN
	1    6500 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 3450 6500 3650
Wire Wire Line
	6500 3650 6400 3650
Connection ~ 6400 3650
Text Label 2500 3300 0    50   ~ 0
LIPO
Text Notes 4450 4900 0    79   ~ 0
LiPO_BOOSTER\n
Wire Wire Line
	2450 3300 2450 3700
Connection ~ 2450 3700
Wire Wire Line
	2450 3700 2450 3900
Text Notes 2600 3150 0    79   ~ 0
POWER/BATTERY MANAGEMENT
Wire Wire Line
	4800 3650 4900 3650
$Comp
L power:+5V #PWR02
U 1 1 5C2723E3
P 1450 900
F 0 "#PWR02" H 1450 750 50  0001 C CNN
F 1 "+5V" H 1465 1073 50  0000 C CNN
F 2 "" H 1450 900 50  0001 C CNN
F 3 "" H 1450 900 50  0001 C CNN
	1    1450 900 
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR013
U 1 1 5C272690
P 7700 1150
F 0 "#PWR013" H 7700 1000 50  0001 C CNN
F 1 "+5V" H 7715 1323 50  0000 C CNN
F 2 "" H 7700 1150 50  0001 C CNN
F 3 "" H 7700 1150 50  0001 C CNN
	1    7700 1150
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR015
U 1 1 5C27516A
P 8600 1150
F 0 "#PWR015" H 8600 1000 50  0001 C CNN
F 1 "+5V" H 8615 1323 50  0000 C CNN
F 2 "" H 8600 1150 50  0001 C CNN
F 3 "" H 8600 1150 50  0001 C CNN
	1    8600 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 1450 4100 1450
Text GLabel 4100 1450 2    50   Input ~ 0
LIPO
$Comp
L MeowWolf_Devices:SN74LV1T125_LEVEL_SHIFTER U1
U 1 1 5BB6F750
P 1200 2000
F 0 "U1" H 1000 2250 60  0000 L CNN
F 1 "SN74LV1T125_LEVEL_SHIFTER" H 1250 2250 39  0000 L CNN
F 2 "Silicon-Standard:SOT23-5" H 1400 2200 60  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74lvc1g125.pdf" H 1400 2300 60  0001 L CNN
	1    1200 2000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5BB75795
P 6150 4250
F 0 "R2" H 6000 4300 50  0000 L CNN
F 1 "100KΩ" V 6250 4150 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6080 4250 50  0001 C CNN
F 3 "~" H 6150 4250 50  0001 C CNN
	1    6150 4250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5BB75850
P 6150 3850
F 0 "R1" H 6000 3750 50  0000 L CNN
F 1 "750KΩ" V 6250 3700 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6080 3850 50  0001 C CNN
F 3 "~" H 6150 3850 50  0001 C CNN
	1    6150 3850
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 5BB758CA
P 6400 3850
F 0 "C4" H 6515 3896 50  0000 L CNN
F 1 "22uF" H 6515 3805 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 6438 3700 50  0001 C CNN
F 3 "~" H 6400 3850 50  0001 C CNN
	1    6400 3850
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 5BB75961
P 4700 3950
F 0 "C3" H 4815 3996 50  0000 L CNN
F 1 "22uF" H 4815 3905 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 4738 3800 50  0001 C CNN
F 3 "~" H 4700 3950 50  0001 C CNN
	1    4700 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 2250 4150 2250
Wire Wire Line
	700  2100 900  2100
Text GLabel 1450 2100 2    50   Input ~ 0
LED_BUFFERED
Wire Wire Line
	1400 2100 1450 2100
$Comp
L power:+5V #PWR04
U 1 1 5BB98A56
P 1200 1650
F 0 "#PWR04" H 1200 1500 50  0001 C CNN
F 1 "+5V" H 1215 1823 50  0000 C CNN
F 2 "" H 1200 1650 50  0001 C CNN
F 3 "" H 1200 1650 50  0001 C CNN
	1    1200 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 1650 1200 1700
$Comp
L power:GND #PWR05
U 1 1 5BB9B7AB
P 1200 2400
F 0 "#PWR05" H 1200 2150 50  0001 C CNN
F 1 "GND" H 1205 2227 50  0000 C CNN
F 2 "" H 1200 2400 50  0001 C CNN
F 3 "" H 1200 2400 50  0001 C CNN
	1    1200 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 2300 1200 2350
Wire Wire Line
	900  1900 850  1900
Wire Wire Line
	850  1900 850  2350
Wire Wire Line
	850  2350 1200 2350
Connection ~ 1200 2350
Wire Wire Line
	1200 2350 1200 2400
Text GLabel 1100 1050 0    50   Input ~ 0
LED_BUFFERED
$Comp
L Device:C C2
U 1 1 5BBAAE92
P 2250 4100
F 0 "C2" H 2365 4146 50  0000 L CNN
F 1 "10uF" H 2365 4055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2288 3950 50  0001 C CNN
F 3 "~" H 2250 4100 50  0001 C CNN
	1    2250 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 3950 2250 3900
Wire Wire Line
	2250 3900 2450 3900
Connection ~ 2450 3900
Wire Wire Line
	2250 4250 2250 4450
Wire Wire Line
	2250 4450 2550 4450
$Comp
L Device:C C1
U 1 1 5BBB19C3
P 1850 4100
F 0 "C1" H 1965 4146 50  0000 L CNN
F 1 "0.1uF" H 1965 4055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1888 3950 50  0001 C CNN
F 3 "~" H 1850 4100 50  0001 C CNN
	1    1850 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 3950 1850 3900
Connection ~ 2250 3900
Wire Wire Line
	1850 4250 1850 4450
Wire Wire Line
	1850 4450 2250 4450
Connection ~ 2250 4450
$Comp
L Transistor_FET:BSS138 Q1
U 1 1 5BBB93A8
P 10150 1600
F 0 "Q1" V 10400 1600 50  0000 C CNN
F 1 "BSS138" V 10491 1600 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 10350 1525 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/BS/BSS138.pdf" H 10150 1600 50  0001 L CNN
	1    10150 1600
	0    1    1    0   
$EndComp
$Comp
L Transistor_FET:BSS138 Q2
U 1 1 5BBB991F
P 10200 2600
F 0 "Q2" V 10450 2600 50  0000 C CNN
F 1 "BSS138" V 10541 2600 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 10400 2525 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/BS/BSS138.pdf" H 10200 2600 50  0001 L CNN
	1    10200 2600
	0    1    1    0   
$EndComp
Text GLabel 9800 1700 0    50   Input ~ 0
SDA_3V3
Text GLabel 9850 2700 0    50   Input ~ 0
SCL_3V3
Wire Wire Line
	9800 1700 9900 1700
Wire Wire Line
	9850 2700 9950 2700
Text GLabel 10500 1700 2    50   Input ~ 0
SDA_5V
Text GLabel 10550 2700 2    50   Input ~ 0
SCL_5V
$Comp
L Device:R R4
U 1 1 5BBD42A2
P 9950 2500
F 0 "R4" H 9800 2550 50  0000 L CNN
F 1 "10KΩ" H 9650 2450 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 9880 2500 50  0001 C CNN
F 3 "~" H 9950 2500 50  0001 C CNN
	1    9950 2500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 5BBD434B
P 10450 2500
F 0 "R6" H 10300 2550 50  0000 L CNN
F 1 "10KΩ" H 10150 2450 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 10380 2500 50  0001 C CNN
F 3 "~" H 10450 2500 50  0001 C CNN
	1    10450 2500
	-1   0    0    1   
$EndComp
$Comp
L Device:R R3
U 1 1 5BBD44A4
P 9900 1500
F 0 "R3" H 9750 1550 50  0000 L CNN
F 1 "10KΩ" H 9600 1450 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 9830 1500 50  0001 C CNN
F 3 "~" H 9900 1500 50  0001 C CNN
	1    9900 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 5BBD44F6
P 10400 1500
F 0 "R5" H 10250 1550 50  0000 L CNN
F 1 "10KΩ" H 10100 1450 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 10330 1500 50  0001 C CNN
F 3 "~" H 10400 1500 50  0001 C CNN
	1    10400 1500
	-1   0    0    1   
$EndComp
Wire Wire Line
	9900 1650 9900 1700
Connection ~ 9900 1700
Wire Wire Line
	9900 1700 9950 1700
Wire Wire Line
	10350 1700 10400 1700
Wire Wire Line
	10400 1650 10400 1700
Connection ~ 10400 1700
Wire Wire Line
	10400 1700 10500 1700
$Comp
L power:+3.3V #PWR018
U 1 1 5BBE02BA
P 9950 2250
F 0 "#PWR018" H 9950 2100 50  0001 C CNN
F 1 "+3.3V" H 9965 2423 50  0000 C CNN
F 2 "" H 9950 2250 50  0001 C CNN
F 3 "" H 9950 2250 50  0001 C CNN
	1    9950 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	9900 1350 9900 1300
Wire Wire Line
	9900 1300 10150 1300
Wire Wire Line
	10150 1300 10150 1400
Connection ~ 9900 1300
Wire Wire Line
	9900 1300 9900 1250
$Comp
L power:+5V #PWR019
U 1 1 5BC005C7
P 10400 1250
F 0 "#PWR019" H 10400 1100 50  0001 C CNN
F 1 "+5V" H 10415 1423 50  0000 C CNN
F 2 "" H 10400 1250 50  0001 C CNN
F 3 "" H 10400 1250 50  0001 C CNN
	1    10400 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	10400 1250 10400 1350
Wire Wire Line
	9950 2250 9950 2300
Wire Wire Line
	9950 2650 9950 2700
Connection ~ 9950 2700
Wire Wire Line
	9950 2700 10000 2700
Wire Wire Line
	10200 2400 10200 2300
Wire Wire Line
	10200 2300 9950 2300
Connection ~ 9950 2300
Wire Wire Line
	9950 2300 9950 2350
Wire Wire Line
	10400 2700 10450 2700
Wire Wire Line
	10450 2650 10450 2700
Connection ~ 10450 2700
Wire Wire Line
	10450 2700 10550 2700
$Comp
L power:+5V #PWR020
U 1 1 5BC2375B
P 10450 2250
F 0 "#PWR020" H 10450 2100 50  0001 C CNN
F 1 "+5V" H 10465 2423 50  0000 C CNN
F 2 "" H 10450 2250 50  0001 C CNN
F 3 "" H 10450 2250 50  0001 C CNN
	1    10450 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	10450 2250 10450 2350
Wire Wire Line
	6200 1350 6400 1350
Wire Wire Line
	6200 1450 6400 1450
Wire Notes Line
	500  3000 11200 3000
Text Notes 9600 1000 0    50   ~ 0
Level Shifting and I2C Pullups
Wire Wire Line
	3600 4100 3500 4100
$Comp
L SparkFun-IC-Power:MAX17048DFN8 U2
U 1 1 5BF3611F
P 3050 4000
F 0 "U2" H 3050 4554 45  0000 C CNN
F 1 "MAX17048DFN8" H 3050 4470 45  0000 C CNN
F 2 "Silicon-Standard:DFN-8" H 3050 4450 20  0001 C CNN
F 3 "" H 3050 4000 60  0001 C CNN
F 4 "IC-12551" H 3050 4481 60  0001 C CNN "Field4"
	1    3050 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 4450 3550 4450
Wire Wire Line
	3550 4450 3550 4300
Wire Wire Line
	3550 4300 3500 4300
$Comp
L Device:R R7
U 1 1 5BB7DD43
P 4400 3950
F 0 "R7" H 4250 3850 50  0000 L CNN
F 1 "10KΩ" V 4500 3800 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4330 3950 50  0001 C CNN
F 3 "~" H 4400 3950 50  0001 C CNN
	1    4400 3950
	1    0    0    -1  
$EndComp
$Comp
L SparkFun-Coils:INDUCTOR-VLF4012AT-2.2UH L1
U 1 1 5BBC58EF
P 5400 3350
F 0 "L1" V 5579 3350 45  0000 C CNN
F 1 "2.2UH" V 5495 3350 45  0000 C CNN
F 2 "Inductor_SMD:L_Bourns-SRN4026" H 5400 3600 20  0001 C CNN
F 3 "" H 5400 3350 50  0001 C CNN
F 4 "NDUC-09513" V 5506 3350 60  0001 C CNN "Field4"
	1    5400 3350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4800 3350 5200 3350
Wire Wire Line
	5600 3350 5950 3350
Wire Wire Line
	3650 3700 3500 3700
Text GLabel 3650 3700 2    50   Input ~ 0
ALERT
Text GLabel 4350 4250 0    50   Input ~ 0
EN
Wire Wire Line
	4000 2150 4150 2150
Wire Wire Line
	4000 2050 4150 2050
Text GLabel 4150 2050 2    50   Input ~ 0
ALERT
Text GLabel 4150 2150 2    50   Input ~ 0
EN
$Comp
L Device:R R8
U 1 1 5BBFDFB0
P 6250 1100
F 0 "R8" H 6100 1000 50  0000 L CNN
F 1 "10KΩ" V 6350 950 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6180 1100 50  0001 C CNN
F 3 "~" H 6250 1100 50  0001 C CNN
	1    6250 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 1250 6250 1650
Connection ~ 6250 1650
Wire Wire Line
	6250 1650 6400 1650
$Comp
L power:+5V #PWR021
U 1 1 5BC0330C
P 6250 900
F 0 "#PWR021" H 6250 750 50  0001 C CNN
F 1 "+5V" H 6265 1073 50  0000 C CNN
F 2 "" H 6250 900 50  0001 C CNN
F 3 "" H 6250 900 50  0001 C CNN
	1    6250 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 900  6250 950 
$Comp
L Device:R R9
U 1 1 5BC46010
P 1300 1050
F 0 "R9" H 1150 950 50  0000 L CNN
F 1 "330Ω" V 1400 900 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 1230 1050 50  0001 C CNN
F 3 "~" H 1300 1050 50  0001 C CNN
	1    1300 1050
	0    1    1    0   
$EndComp
Wire Wire Line
	1100 1050 1150 1050
Wire Wire Line
	1450 1050 1500 1050
$Comp
L power:+5V #PWR022
U 1 1 5BC603A6
P 1850 2400
F 0 "#PWR022" H 1850 2250 50  0001 C CNN
F 1 "+5V" H 1865 2573 50  0000 C CNN
F 2 "" H 1850 2400 50  0001 C CNN
F 3 "" H 1850 2400 50  0001 C CNN
	1    1850 2400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR023
U 1 1 5BC603EB
P 1850 2800
F 0 "#PWR023" H 1850 2550 50  0001 C CNN
F 1 "GND" H 1855 2627 50  0000 C CNN
F 2 "" H 1850 2800 50  0001 C CNN
F 3 "" H 1850 2800 50  0001 C CNN
	1    1850 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 2800 1850 2750
Wire Wire Line
	1850 2450 1850 2400
$Comp
L SparkFun-Capacitors:100UF-POLAR-EIA7343-16V-10%_TANT_ C7
U 1 1 5BC995D2
P 1850 2550
F 0 "C7" H 1978 2542 45  0000 L CNN
F 1 "1000UF" H 1978 2458 45  0000 L CNN
F 2 "Capacitors:CPOL-RADIAL-5MM-10MM" H 1850 2800 20  0001 C CNN
F 3 "" H 1850 2550 50  0001 C CNN
	1    1850 2550
	1    0    0    -1  
$EndComp
$Comp
L SparkFun-Switches:SWITCH-DPDT-SMD-AYZ0202 S1
U 1 1 5C09DBB0
P 1500 3500
F 0 "S1" H 1500 3954 45  0000 C CNN
F 1 "SWITCH-DPDT-SMD-AYZ0202" H 1500 3870 45  0000 C CNN
F 2 "Switches:SWITCH_DPDT_SMD_AYZ0202" H 1500 3950 20  0001 C CNN
F 3 "" H 1500 3500 50  0001 C CNN
F 4 "SWCH-08179" H 1500 3881 60  0001 C CNN "Field4"
	1    1500 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 3300 1250 3300
Wire Wire Line
	1250 3300 1250 3400
Wire Wire Line
	1250 3700 1300 3700
Wire Wire Line
	1300 3400 1250 3400
Connection ~ 1250 3400
Wire Wire Line
	1250 3400 1250 3700
Wire Wire Line
	1700 3300 2000 3300
Connection ~ 2450 3300
Wire Wire Line
	1700 3600 1800 3600
Wire Wire Line
	2000 3600 2000 3300
Connection ~ 2000 3300
Wire Wire Line
	2000 3300 2450 3300
NoConn ~ 1700 3500
NoConn ~ 1700 3800
$Comp
L Device:R R10
U 1 1 5C0FAD64
P 5000 1150
F 0 "R10" H 4800 1100 50  0000 L CNN
F 1 "330Ω" V 5100 1000 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4930 1150 50  0001 C CNN
F 3 "~" H 5000 1150 50  0001 C CNN
	1    5000 1150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5C0FAE33
P 5000 1800
F 0 "#PWR0101" H 5000 1550 50  0001 C CNN
F 1 "GND" H 5005 1627 50  0000 C CNN
F 2 "" H 5000 1800 50  0001 C CNN
F 3 "" H 5000 1800 50  0001 C CNN
	1    5000 1800
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0102
U 1 1 5C0FAE7E
P 5000 900
F 0 "#PWR0102" H 5000 750 50  0001 C CNN
F 1 "+3.3V" H 5015 1073 50  0000 C CNN
F 2 "" H 5000 900 50  0001 C CNN
F 3 "" H 5000 900 50  0001 C CNN
	1    5000 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 900  5000 1000
Wire Wire Line
	5000 1300 5000 1400
Wire Wire Line
	5000 1800 5000 1700
Wire Wire Line
	2450 3300 4400 3300
Wire Wire Line
	4350 4250 4400 4250
Wire Wire Line
	4400 4100 4400 4250
Connection ~ 4400 4250
Wire Wire Line
	4400 4250 4900 4250
Wire Wire Line
	4400 3800 4400 3650
Connection ~ 4400 3650
Wire Wire Line
	4400 3650 4700 3650
Wire Notes Line
	7200 5400 7200 3000
Wire Notes Line
	500  5400 7200 5400
Wire Notes Line
	5450 500  5450 3000
Wire Wire Line
	1850 3900 2250 3900
$Comp
L SparkFun-Jumpers:JUMPER-SMT_2_NO JP1
U 1 1 5C1A0B3A
P 1500 4050
F 0 "JP1" H 1500 4150 45  0000 C CNN
F 1 "JUMPER-SMT_2_NO" H 1500 3900 45  0000 C CNN
F 2 "Jumpers:SMT-JUMPER_2_NO_SILK" H 1500 4250 20  0001 C CNN
F 3 "" H 1500 4050 60  0001 C CNN
F 4 "XXX-00000" H 1500 4207 60  0001 C CNN "PROD_ID"
	1    1500 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 4050 1250 4050
Wire Wire Line
	1250 4050 1250 3700
Connection ~ 1250 3700
Wire Wire Line
	1650 4050 1800 4050
Wire Wire Line
	1800 4050 1800 3600
Connection ~ 1800 3600
Wire Wire Line
	1800 3600 2000 3600
Text Notes 850  4450 0    50   ~ 0
Close solder jumper to \nbypass ON/OFF switch
Wire Notes Line
	1750 4250 1750 4500
Wire Notes Line
	1750 4500 800  4500
Wire Notes Line
	800  4500 800  4250
Wire Notes Line
	800  4250 1750 4250
Wire Wire Line
	4000 1650 4100 1650
Text GLabel 4100 1650 2    50   Input ~ 0
VUSB
$Comp
L Connector_Generic:Conn_01x02 J4
U 1 1 5C1BA829
P 4900 2700
F 0 "J4" H 4820 2375 50  0000 C CNN
F 1 "Conn_01x02" H 4820 2466 50  0000 C CNN
F 2 "Connectors:1X02" H 4900 2700 50  0001 C CNN
F 3 "~" H 4900 2700 50  0001 C CNN
	1    4900 2700
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5C1BA893
P 5150 2750
F 0 "#PWR0103" H 5150 2500 50  0001 C CNN
F 1 "GND" H 5155 2577 50  0000 C CNN
F 2 "" H 5150 2750 50  0001 C CNN
F 3 "" H 5150 2750 50  0001 C CNN
	1    5150 2750
	1    0    0    -1  
$EndComp
Text GLabel 5150 2600 2    50   Input ~ 0
VUSB
Wire Wire Line
	5100 2600 5150 2600
Wire Wire Line
	5100 2700 5150 2700
Wire Wire Line
	5150 2700 5150 2750
Wire Notes Line
	4650 3000 4650 500 
Wire Notes Line
	4650 2100 5450 2100
Text Notes 4750 650  0    50   ~ 0
Power \nIndicator LED
Text Notes 4750 2300 0    50   ~ 0
Alternate\nCharging Port
NoConn ~ 4000 1550
NoConn ~ 4000 1850
NoConn ~ 4000 1750
NoConn ~ 4000 1950
NoConn ~ 3000 2450
NoConn ~ 3000 2350
NoConn ~ 3000 2250
NoConn ~ 3000 2150
NoConn ~ 3000 2050
NoConn ~ 3000 1950
NoConn ~ 3000 1850
NoConn ~ 3000 1750
NoConn ~ 3000 1650
NoConn ~ 3000 1550
NoConn ~ 3000 1450
NoConn ~ 3000 1350
NoConn ~ 3000 1250
$Comp
L Device:LED D1
U 1 1 5C267511
P 5000 1550
F 0 "D1" V 5038 1433 50  0000 R CNN
F 1 "LED" V 4947 1433 50  0000 R CNN
F 2 "LED_SMD:LED_1206_3216Metric" H 5000 1550 50  0001 C CNN
F 3 "~" H 5000 1550 50  0001 C CNN
	1    5000 1550
	0    -1   -1   0   
$EndComp
$EndSCHEMATC
