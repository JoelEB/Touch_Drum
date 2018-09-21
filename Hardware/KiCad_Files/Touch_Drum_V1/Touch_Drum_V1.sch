EESchema Schematic File Version 4
LIBS:Touch_Drum_V1-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
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
L MeowWolf_Templates:TEENSY_3.2_FULL_PINS U?
U 1 1 5BA49460
P 6000 3100
F 0 "U?" H 6000 4687 60  0000 C CNN
F 1 "TEENSY_3.2_FULL_PINS" H 6000 4581 60  0000 C CNN
F 2 "" H 6000 2300 60  0000 C CNN
F 3 "" H 6000 2300 60  0000 C CNN
	1    6000 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 2100 4850 2100
Wire Wire Line
	5000 2200 4850 2200
Wire Wire Line
	5000 2300 4850 2300
Wire Wire Line
	5000 2400 4850 2400
Wire Wire Line
	5000 2500 4850 2500
Wire Wire Line
	5000 2600 4850 2600
Wire Wire Line
	5000 2700 4850 2700
Wire Wire Line
	5000 2800 4850 2800
Wire Wire Line
	5000 2900 4850 2900
Wire Wire Line
	5000 3000 4850 3000
Wire Wire Line
	5000 3100 4850 3100
Wire Wire Line
	5000 3200 4850 3200
Wire Wire Line
	5000 3300 4850 3300
Wire Wire Line
	5000 3500 4850 3500
Wire Wire Line
	5000 3600 4850 3600
Wire Wire Line
	5000 3700 4850 3700
Wire Wire Line
	5000 3800 4850 3800
Wire Wire Line
	5000 3900 4850 3900
Wire Wire Line
	5000 4000 4850 4000
Wire Wire Line
	5000 4100 4850 4100
Wire Wire Line
	5000 4200 4850 4200
Wire Wire Line
	5000 4300 4850 4300
Wire Wire Line
	5000 4400 4850 4400
Wire Wire Line
	5000 2000 4850 2000
Wire Wire Line
	5000 1900 4850 1900
Wire Wire Line
	7200 2100 7000 2100
Wire Wire Line
	7200 2200 7000 2200
Wire Wire Line
	7200 2300 7000 2300
Wire Wire Line
	7200 2400 7000 2400
Wire Wire Line
	7200 2500 7000 2500
Wire Wire Line
	7200 2600 7000 2600
Wire Wire Line
	7200 2700 7000 2700
Wire Wire Line
	7200 2800 7000 2800
Wire Wire Line
	7200 2900 7000 2900
Wire Wire Line
	7200 3000 7000 3000
Wire Wire Line
	7200 3100 7000 3100
Wire Wire Line
	7200 3200 7000 3200
Wire Wire Line
	7200 3300 7000 3300
Wire Wire Line
	7200 3400 7000 3400
Wire Wire Line
	7200 3500 7000 3500
Wire Wire Line
	7200 3600 7000 3600
Wire Wire Line
	7200 3700 7000 3700
Wire Wire Line
	7200 3800 7000 3800
Wire Wire Line
	7200 3900 7000 3900
Wire Wire Line
	7200 4000 7000 4000
Wire Wire Line
	7200 4100 7000 4100
Wire Wire Line
	7200 4200 7000 4200
Wire Wire Line
	7200 4300 7000 4300
Wire Wire Line
	7200 4400 7000 4400
Text GLabel 4850 1900 0    50   Input ~ 0
TOUCH_0
Text GLabel 4850 2000 0    50   Input ~ 0
TOUCH_1
Text GLabel 4850 3900 0    50   Input ~ 0
TOUCH_2
Text GLabel 4850 4000 0    50   Input ~ 0
TOUCH_3
Text GLabel 4850 4100 0    50   Input ~ 0
TOUCH_4
Text GLabel 4850 4200 0    50   Input ~ 0
TOUCH_8
Text GLabel 4850 4300 0    50   Input ~ 0
TOUCH_9
$Comp
L power:GND #PWR?
U 1 1 5BA53AE5
P 4350 1900
F 0 "#PWR?" H 4350 1650 50  0001 C CNN
F 1 "GND" H 4355 1727 50  0000 C CNN
F 2 "" H 4350 1900 50  0001 C CNN
F 3 "" H 4350 1900 50  0001 C CNN
	1    4350 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 1900 4350 1800
Wire Wire Line
	4350 1800 5000 1800
Text GLabel 7200 3100 2    50   Input ~ 0
TOUCH_5
Text GLabel 7200 2400 2    50   Input ~ 0
TOUCH_6
Text GLabel 7200 2300 2    50   Input ~ 0
TOUCH_7
Text GLabel 4850 2100 0    50   Input ~ 0
OLED_RST
Text GLabel 4850 4400 0    50   Input ~ 0
OLED_CS
Text GLabel 7200 4400 2    50   Input ~ 0
OLED_DC
Text GLabel 7200 3400 2    50   Input ~ 0
DECAY_KNOB
Text GLabel 7200 2100 2    50   Input ~ 0
VOL_KNOB
Text GLabel 4850 3800 0    50   Input ~ 0
OLED_SCK
Text GLabel 4850 2700 0    50   Input ~ 0
FOOT_BUTTON_1
Text GLabel 4850 2600 0    50   Input ~ 0
OLED_MOSI
Text GLabel 4850 2400 0    50   Input ~ 0
FOOT_BUTTON_0
Text GLabel 4850 2300 0    50   Input ~ 0
BUTTON_1
Text GLabel 4850 2200 0    50   Input ~ 0
BITTON_0
Text GLabel 7200 2600 2    50   Input ~ 0
SDA1
Text GLabel 7200 2700 2    50   Input ~ 0
SCL1
$Comp
L power:GND #PWR?
U 1 1 5BA54D0F
P 4750 3450
F 0 "#PWR?" H 4750 3200 50  0001 C CNN
F 1 "GND" H 4755 3277 50  0000 C CNN
F 2 "" H 4750 3450 50  0001 C CNN
F 3 "" H 4750 3450 50  0001 C CNN
	1    4750 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 3450 4750 3400
Wire Wire Line
	4750 3400 5000 3400
Text Notes 7200 4300 0    50   ~ 0
AUDIO_DIN
Text Notes 7200 4200 0    50   ~ 0
AUDIO_LRCLK
Text Notes 4400 3750 0    50   ~ 0
AUDIO_DOUT\n
Text Notes 4400 3050 0    50   ~ 0
AUDIO_MCLK
Text Notes 4400 2850 0    50   ~ 0
AUDIO_BCLK
$EndSCHEMATC
