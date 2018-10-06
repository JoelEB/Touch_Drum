EESchema Schematic File Version 4
LIBS:Touch_Drum_V1-cache
LIBS:Teensy_test_layout-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 8 7
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
L Touch_Drum_V1-rescue:2Jumper- JMP?
U 1 1 569EDBC7
P 1500 5800
F 0 "JMP?" H 1500 5895 60  0000 C CNN
F 1 "2Jumper" H 1500 5985 60  0001 C CNN
F 2 "SparkFun-Footprints:SF-2way-open" H 2655 5870 60  0001 C CNN
F 3 "" H 2655 5870 60  0000 C CNN
	1    1500 5800
	1    0    0    -1  
$EndComp
$Comp
L Touch_Drum_V1-rescue:3Jumper- JMP?
U 1 1 569EDBCE
P 3350 6400
F 0 "JMP?" H 3350 6495 60  0000 C CNN
F 1 "3Jumper" H 3350 6585 60  0001 C CNN
F 2 "SparkFun-Footprints:SF-3way-open" H 4505 6470 60  0001 C CNN
F 3 "" H 4505 6470 60  0000 C CNN
	1    3350 6400
	0    -1   -1   0   
$EndComp
$Comp
L Touch_Drum_V1-rescue:2Jumper- JMP?
U 1 1 569EDBD5
P 1500 5600
F 0 "JMP?" H 1500 5695 60  0000 C CNN
F 1 "2Jumper" H 1500 5785 60  0001 C CNN
F 2 "SparkFun-Footprints:SF-2way-open" H 2655 5670 60  0001 C CNN
F 3 "" H 2655 5670 60  0000 C CNN
	1    1500 5600
	1    0    0    -1  
$EndComp
Text GLabel 6700 3950 0    50   Input ~ 0
SDA0
Text GLabel 6700 4050 0    50   Input ~ 0
SCL0
Text GLabel 1000 5000 0    50   Input ~ 0
I2S_MCLK
Text GLabel 1000 5200 0    50   Input ~ 0
I2S_BCLK
Text GLabel 1000 5400 0    50   Input ~ 0
I2S_LRCLK
Text GLabel 1000 5600 0    50   Input ~ 0
I2S_DIN0
Text GLabel 1000 5800 0    50   Input ~ 0
I2S_DOUT0
$Comp
L Touch_Drum_V1-rescue:+1V8- #PWR?
U 1 1 569EDC07
P 4500 3550
AR Path="/569EDC07" Ref="#PWR?"  Part="1" 
AR Path="/569EDAE2/569EDC07" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4500 3400 50  0001 C CNN
F 1 "+1V8" H 4500 3690 50  0000 C CNN
F 2 "" H 4500 3550 50  0000 C CNN
F 3 "" H 4500 3550 50  0000 C CNN
	1    4500 3550
	1    0    0    -1  
$EndComp
$Comp
L Touch_Drum_V1-rescue:+3V3- #PWR?
U 1 1 569EDC0D
P 4850 3550
F 0 "#PWR?" H 4850 3400 50  0001 C CNN
F 1 "+3V3" H 4850 3690 50  0000 C CNN
F 2 "" H 4850 3550 50  0000 C CNN
F 3 "" H 4850 3550 50  0000 C CNN
	1    4850 3550
	1    0    0    -1  
$EndComp
$Comp
L Touch_Drum_V1-rescue:+3V3- #PWR?
U 1 1 569EDC13
P 5050 3550
F 0 "#PWR?" H 5050 3400 50  0001 C CNN
F 1 "+3V3" H 5050 3690 50  0000 C CNN
F 2 "" H 5050 3550 50  0000 C CNN
F 3 "" H 5050 3550 50  0000 C CNN
	1    5050 3550
	1    0    0    -1  
$EndComp
$Comp
L Touch_Drum_V1-rescue:+3V3- #PWR?
U 1 1 569EDC19
P 3350 6050
F 0 "#PWR?" H 3350 5900 50  0001 C CNN
F 1 "+3V3" H 3350 6190 50  0000 C CNN
F 2 "" H 3350 6050 50  0000 C CNN
F 3 "" H 3350 6050 50  0000 C CNN
	1    3350 6050
	1    0    0    -1  
$EndComp
$Comp
L Touch_Drum_V1-rescue:R- R?
U 1 1 569EDC1F
P 5050 3800
F 0 "R?" V 5130 3800 50  0000 C CNN
F 1 "1" V 5050 3800 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 4980 3800 50  0001 C CNN
F 3 "" H 5050 3800 50  0000 C CNN
	1    5050 3800
	1    0    0    -1  
$EndComp
$Comp
L Touch_Drum_V1-rescue:C- C?
U 1 1 569EDC26
P 3750 6450
F 0 "C?" H 3775 6550 50  0000 L CNN
F 1 "0.1uF" H 3775 6350 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 3788 6300 50  0001 C CNN
F 3 "" H 3750 6450 50  0000 C CNN
	1    3750 6450
	1    0    0    -1  
$EndComp
$Comp
L Touch_Drum_V1-rescue:C- C?
U 1 1 569EDC2D
P 5300 4200
F 0 "C?" H 5325 4300 50  0000 L CNN
F 1 "0.1uF" H 5325 4100 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 5338 4050 50  0001 C CNN
F 3 "" H 5300 4200 50  0000 C CNN
	1    5300 4200
	1    0    0    -1  
$EndComp
$Comp
L Touch_Drum_V1-rescue:C- C?
U 1 1 569EDC34
P 5550 4200
F 0 "C?" H 5575 4300 50  0000 L CNN
F 1 "0.1uF" H 5575 4100 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 5588 4050 50  0001 C CNN
F 3 "" H 5550 4200 50  0000 C CNN
	1    5550 4200
	1    0    0    -1  
$EndComp
$Comp
L Touch_Drum_V1-rescue:C- C?
U 1 1 569EDC3B
P 4300 4100
F 0 "C?" H 4325 4200 50  0000 L CNN
F 1 "0.1uF" H 4325 4000 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 4338 3950 50  0001 C CNN
F 3 "" H 4300 4100 50  0000 C CNN
	1    4300 4100
	1    0    0    -1  
$EndComp
$Comp
L Touch_Drum_V1-rescue:C- C?
U 1 1 569EDC42
P 4700 4000
F 0 "C?" H 4725 4100 50  0000 L CNN
F 1 "0.1uF" H 4725 3900 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 4738 3850 50  0001 C CNN
F 3 "" H 4700 4000 50  0000 C CNN
	1    4700 4000
	1    0    0    -1  
$EndComp
$Comp
L Touch_Drum_V1-rescue:SGTL5000- U?
U 1 1 569EDC61
P 4850 5550
F 0 "U?" V 4900 5600 60  0000 C CNN
F 1 "SGTL5000" V 4800 5600 60  0000 C CNN
F 2 "SparkFun-Footprints:SF-QFN-32-NXP-SGTL5000" H 4850 5600 60  0001 C CNN
F 3 "" H 4850 5600 60  0000 C CNN
	1    4850 5550
	1    0    0    -1  
$EndComp
$Comp
L Touch_Drum_V1-rescue:2Jumper- JMP?
U 1 1 569EE0F6
P 7250 4750
F 0 "JMP?" H 7250 4845 60  0000 C CNN
F 1 "2Jumper" H 7250 4935 60  0001 C CNN
F 2 "SparkFun-Footprints:SF-2way-open" H 8405 4820 60  0001 C CNN
F 3 "" H 8405 4820 60  0000 C CNN
	1    7250 4750
	1    0    0    -1  
$EndComp
$Comp
L Touch_Drum_V1-rescue:3Jumper- JMP?
U 1 1 569EE0FC
P 8200 5400
F 0 "JMP?" H 8200 5495 60  0000 C CNN
F 1 "3Jumper" H 8200 5585 60  0001 C CNN
F 2 "SparkFun-Footprints:SF-3way-open" H 9355 5470 60  0001 C CNN
F 3 "" H 9355 5470 60  0000 C CNN
	1    8200 5400
	0    -1   -1   0   
$EndComp
$Comp
L Touch_Drum_V1-rescue:2Jumper- JMP?
U 1 1 569EE102
P 7250 4550
F 0 "JMP?" H 7250 4645 60  0000 C CNN
F 1 "2Jumper" H 7250 4735 60  0001 C CNN
F 2 "SparkFun-Footprints:SF-2way-open" H 8405 4620 60  0001 C CNN
F 3 "" H 8405 4620 60  0000 C CNN
	1    7250 4550
	1    0    0    -1  
$EndComp
Text GLabel 950  4600 0    50   Input ~ 0
SDA34
Text GLabel 950  4800 0    50   Input ~ 0
SCL34
Text GLabel 6700 4250 0    50   Input ~ 0
MCLK_ISO
Text GLabel 6700 4350 0    50   Input ~ 0
BCLK_ISO
Text GLabel 6700 4450 0    50   Input ~ 0
LRCLK_ISO
Text GLabel 6700 4550 0    50   Input ~ 0
I2S_DIN1
Text GLabel 6700 4750 0    50   Input ~ 0
I2S_DOUT1
$Comp
L Touch_Drum_V1-rescue:+1V8- #PWR?
U 1 1 569EE133
P 9350 2550
AR Path="/569EE133" Ref="#PWR?"  Part="1" 
AR Path="/569EDAE2/569EE133" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 9350 2400 50  0001 C CNN
F 1 "+1V8" H 9350 2690 50  0000 C CNN
F 2 "" H 9350 2550 50  0000 C CNN
F 3 "" H 9350 2550 50  0000 C CNN
	1    9350 2550
	1    0    0    -1  
$EndComp
$Comp
L Touch_Drum_V1-rescue:+3V3- #PWR?
U 1 1 569EE139
P 9700 2550
F 0 "#PWR?" H 9700 2400 50  0001 C CNN
F 1 "+3V3" H 9700 2690 50  0000 C CNN
F 2 "" H 9700 2550 50  0000 C CNN
F 3 "" H 9700 2550 50  0000 C CNN
	1    9700 2550
	1    0    0    -1  
$EndComp
$Comp
L Touch_Drum_V1-rescue:+3V3- #PWR?
U 1 1 569EE13F
P 9900 2550
F 0 "#PWR?" H 9900 2400 50  0001 C CNN
F 1 "+3V3" H 9900 2690 50  0000 C CNN
F 2 "" H 9900 2550 50  0000 C CNN
F 3 "" H 9900 2550 50  0000 C CNN
	1    9900 2550
	1    0    0    -1  
$EndComp
$Comp
L Touch_Drum_V1-rescue:+3V3- #PWR?
U 1 1 569EE145
P 8200 5050
F 0 "#PWR?" H 8200 4900 50  0001 C CNN
F 1 "+3V3" H 8200 5190 50  0000 C CNN
F 2 "" H 8200 5050 50  0000 C CNN
F 3 "" H 8200 5050 50  0000 C CNN
	1    8200 5050
	1    0    0    -1  
$EndComp
$Comp
L Touch_Drum_V1-rescue:R- R?
U 1 1 569EE14B
P 9900 2800
F 0 "R?" V 9980 2800 50  0000 C CNN
F 1 "1" V 9900 2800 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 9830 2800 50  0001 C CNN
F 3 "" H 9900 2800 50  0000 C CNN
	1    9900 2800
	1    0    0    -1  
$EndComp
$Comp
L Touch_Drum_V1-rescue:C- C?
U 1 1 569EE151
P 8600 5450
F 0 "C?" H 8625 5550 50  0000 L CNN
F 1 "0.1uF" H 8625 5350 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 8638 5300 50  0001 C CNN
F 3 "" H 8600 5450 50  0000 C CNN
	1    8600 5450
	1    0    0    -1  
$EndComp
$Comp
L Touch_Drum_V1-rescue:C- C?
U 1 1 569EE157
P 10150 3200
F 0 "C?" H 10175 3300 50  0000 L CNN
F 1 "0.1uF" H 10175 3100 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 10188 3050 50  0001 C CNN
F 3 "" H 10150 3200 50  0000 C CNN
	1    10150 3200
	1    0    0    -1  
$EndComp
$Comp
L Touch_Drum_V1-rescue:C- C?
U 1 1 569EE15D
P 10400 3200
F 0 "C?" H 10425 3300 50  0000 L CNN
F 1 "0.1uF" H 10425 3100 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 10438 3050 50  0001 C CNN
F 3 "" H 10400 3200 50  0000 C CNN
	1    10400 3200
	1    0    0    -1  
$EndComp
$Comp
L Touch_Drum_V1-rescue:C- C?
U 1 1 569EE163
P 9150 3100
F 0 "C?" H 9175 3200 50  0000 L CNN
F 1 "0.1uF" H 9175 3000 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 9188 2950 50  0001 C CNN
F 3 "" H 9150 3100 50  0000 C CNN
	1    9150 3100
	1    0    0    -1  
$EndComp
$Comp
L Touch_Drum_V1-rescue:C- C?
U 1 1 569EE169
P 9550 3000
F 0 "C?" H 9575 3100 50  0000 L CNN
F 1 "0.1uF" H 9575 2900 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 9588 2850 50  0001 C CNN
F 3 "" H 9550 3000 50  0000 C CNN
	1    9550 3000
	1    0    0    -1  
$EndComp
$Comp
L Touch_Drum_V1-rescue:CONN_01X03- P?
U 1 1 569EE18D
P 10650 4650
F 0 "P?" H 10650 4850 50  0000 C CNN
F 1 "CONN_01X03" V 10750 4650 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03" H 10650 4650 50  0001 C CNN
F 3 "" H 10650 4650 50  0000 C CNN
	1    10650 4650
	1    0    0    -1  
$EndComp
Text Notes 4600 6900 0    60   ~ 0
Ports 1/2
Text Notes 9450 5950 0    60   ~ 0
Ports 3/4
$Comp
L Touch_Drum_V1-rescue:R- R?
U 1 1 56A3DC3F
P 3150 2350
F 0 "R?" V 3230 2350 50  0000 C CNN
F 1 "100k" V 3150 2350 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 3080 2350 50  0001 C CNN
F 3 "" H 3150 2350 50  0000 C CNN
	1    3150 2350
	1    0    0    -1  
$EndComp
$Comp
L Touch_Drum_V1-rescue:C- C?
U 1 1 56A3E10A
P 2800 2100
F 0 "C?" H 2825 2200 50  0000 L CNN
F 1 "2.2u" H 2825 2000 50  0000 L CNN
F 2 "Capacitors_Tantalum_SMD:TantalC_SizeB_EIA-3528_Reflow" H 2838 1950 50  0001 C CNN
F 3 "" H 2800 2100 50  0000 C CNN
	1    2800 2100
	0    1    1    0   
$EndComp
$Comp
L Touch_Drum_V1-rescue:R- R?
U 1 1 56A3EE31
P 3450 2350
F 0 "R?" V 3530 2350 50  0000 C CNN
F 1 "100k" V 3450 2350 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 3380 2350 50  0001 C CNN
F 3 "" H 3450 2350 50  0000 C CNN
	1    3450 2350
	1    0    0    -1  
$EndComp
$Comp
L Touch_Drum_V1-rescue:C- C?
U 1 1 56A3EE38
P 3100 1750
F 0 "C?" H 3125 1850 50  0000 L CNN
F 1 "2.2u" H 3125 1650 50  0000 L CNN
F 2 "Capacitors_Tantalum_SMD:TantalC_SizeB_EIA-3528_Reflow" H 3138 1600 50  0001 C CNN
F 3 "" H 3100 1750 50  0000 C CNN
	1    3100 1750
	0    1    1    0   
$EndComp
$Comp
L Touch_Drum_V1-rescue:R- R?
U 1 1 56A3EF29
P 3750 2350
F 0 "R?" V 3830 2350 50  0000 C CNN
F 1 "100k" V 3750 2350 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 3680 2350 50  0001 C CNN
F 3 "" H 3750 2350 50  0000 C CNN
	1    3750 2350
	1    0    0    -1  
$EndComp
$Comp
L Touch_Drum_V1-rescue:C- C?
U 1 1 56A3EF30
P 3400 1400
F 0 "C?" H 3425 1500 50  0000 L CNN
F 1 "2.2u" H 3425 1300 50  0000 L CNN
F 2 "Capacitors_Tantalum_SMD:TantalC_SizeB_EIA-3528_Reflow" H 3438 1250 50  0001 C CNN
F 3 "" H 3400 1400 50  0000 C CNN
	1    3400 1400
	0    1    1    0   
$EndComp
$Comp
L Touch_Drum_V1-rescue:R- R?
U 1 1 56A3EFFF
P 4050 2350
F 0 "R?" V 4130 2350 50  0000 C CNN
F 1 "100k" V 4050 2350 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 3980 2350 50  0001 C CNN
F 3 "" H 4050 2350 50  0000 C CNN
	1    4050 2350
	1    0    0    -1  
$EndComp
$Comp
L Touch_Drum_V1-rescue:C- C?
U 1 1 56A3F006
P 3700 1050
F 0 "C?" H 3725 1150 50  0000 L CNN
F 1 "2.2u" H 3725 950 50  0000 L CNN
F 2 "Capacitors_Tantalum_SMD:TantalC_SizeB_EIA-3528_Reflow" H 3738 900 50  0001 C CNN
F 3 "" H 3700 1050 50  0000 C CNN
	1    3700 1050
	0    1    1    0   
$EndComp
$Comp
L Touch_Drum_V1-rescue:R- R?
U 1 1 56A4050A
P 6750 2300
F 0 "R?" V 6830 2300 50  0000 C CNN
F 1 "100k" V 6750 2300 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 6680 2300 50  0001 C CNN
F 3 "" H 6750 2300 50  0000 C CNN
	1    6750 2300
	1    0    0    -1  
$EndComp
$Comp
L Touch_Drum_V1-rescue:C- C?
U 1 1 56A40510
P 6400 2050
F 0 "C?" H 6425 2150 50  0000 L CNN
F 1 "2.2u" H 6425 1950 50  0000 L CNN
F 2 "Capacitors_Tantalum_SMD:TantalC_SizeB_EIA-3528_Reflow" H 6438 1900 50  0001 C CNN
F 3 "" H 6400 2050 50  0000 C CNN
	1    6400 2050
	0    1    1    0   
$EndComp
$Comp
L Touch_Drum_V1-rescue:R- R?
U 1 1 56A40527
P 7050 2300
F 0 "R?" V 7130 2300 50  0000 C CNN
F 1 "100k" V 7050 2300 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 6980 2300 50  0001 C CNN
F 3 "" H 7050 2300 50  0000 C CNN
	1    7050 2300
	1    0    0    -1  
$EndComp
$Comp
L Touch_Drum_V1-rescue:C- C?
U 1 1 56A4052D
P 6700 1700
F 0 "C?" H 6725 1800 50  0000 L CNN
F 1 "2.2u" H 6725 1600 50  0000 L CNN
F 2 "Capacitors_Tantalum_SMD:TantalC_SizeB_EIA-3528_Reflow" H 6738 1550 50  0001 C CNN
F 3 "" H 6700 1700 50  0000 C CNN
	1    6700 1700
	0    1    1    0   
$EndComp
$Comp
L Touch_Drum_V1-rescue:R- R?
U 1 1 56A4053E
P 7350 2300
F 0 "R?" V 7430 2300 50  0000 C CNN
F 1 "100k" V 7350 2300 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 7280 2300 50  0001 C CNN
F 3 "" H 7350 2300 50  0000 C CNN
	1    7350 2300
	1    0    0    -1  
$EndComp
$Comp
L Touch_Drum_V1-rescue:C- C?
U 1 1 56A40544
P 7000 1350
F 0 "C?" H 7025 1450 50  0000 L CNN
F 1 "2.2u" H 7025 1250 50  0000 L CNN
F 2 "Capacitors_Tantalum_SMD:TantalC_SizeB_EIA-3528_Reflow" H 7038 1200 50  0001 C CNN
F 3 "" H 7000 1350 50  0000 C CNN
	1    7000 1350
	0    1    1    0   
$EndComp
$Comp
L Touch_Drum_V1-rescue:R- R?
U 1 1 56A40555
P 7650 2300
F 0 "R?" V 7730 2300 50  0000 C CNN
F 1 "100k" V 7650 2300 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 7580 2300 50  0001 C CNN
F 3 "" H 7650 2300 50  0000 C CNN
	1    7650 2300
	1    0    0    -1  
$EndComp
$Comp
L Touch_Drum_V1-rescue:C- C?
U 1 1 56A4055B
P 7300 1000
F 0 "C?" H 7325 1100 50  0000 L CNN
F 1 "2.2u" H 7325 900 50  0000 L CNN
F 2 "Capacitors_Tantalum_SMD:TantalC_SizeB_EIA-3528_Reflow" H 7338 850 50  0001 C CNN
F 3 "" H 7300 1000 50  0000 C CNN
	1    7300 1000
	0    1    1    0   
$EndComp
$Comp
L Touch_Drum_V1-rescue:CONN_01X06- P?
U 1 1 56A3E36A
P 4950 1850
F 0 "P?" H 4950 2200 50  0000 C CNN
F 1 "CONN_01X06" V 5050 1850 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x06" H 4950 1850 50  0001 C CNN
F 3 "" H 4950 1850 50  0000 C CNN
	1    4950 1850
	1    0    0    -1  
$EndComp
$Comp
L Touch_Drum_V1-rescue:CONN_01X06- P?
U 1 1 56A4051C
P 8550 1800
F 0 "P?" H 8550 2150 50  0000 C CNN
F 1 "CONN_01X06" V 8650 1800 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x06" H 8550 1800 50  0001 C CNN
F 3 "" H 8550 1800 50  0000 C CNN
	1    8550 1800
	1    0    0    -1  
$EndComp
$Comp
L Touch_Drum_V1-rescue:CONN_01X03- P?
U 1 1 56A40BA6
P 5800 5650
F 0 "P?" H 5800 5850 50  0000 C CNN
F 1 "CONN_01X03" V 5900 5650 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03" H 5800 5650 50  0001 C CNN
F 3 "" H 5800 5650 50  0000 C CNN
	1    5800 5650
	1    0    0    -1  
$EndComp
Text GLabel 5650 4950 2    50   Input ~ 0
1/2AINL
Text GLabel 5650 5050 2    50   Input ~ 0
1/2AINR
Text GLabel 5650 5150 2    50   Input ~ 0
1/2AOUTR
Text GLabel 5650 5250 2    50   Input ~ 0
1/2AOUTL
Text GLabel 2450 1050 0    50   Input ~ 0
1/2AINL
Text GLabel 2450 1400 0    50   Input ~ 0
1/2AINR
Text GLabel 2450 2100 0    50   Input ~ 0
1/2AOUTR
Text GLabel 2450 1750 0    50   Input ~ 0
1/2AOUTL
Text GLabel 10500 3950 2    50   Input ~ 0
3/4AINL
Text GLabel 10500 4050 2    50   Input ~ 0
3/4AINR
Text GLabel 10500 4150 2    50   Input ~ 0
3/4AOUTR
Text GLabel 10500 4250 2    50   Input ~ 0
3/4AOUTL
Text GLabel 6050 1000 0    50   Input ~ 0
3/4AINL
Text GLabel 6050 1350 0    50   Input ~ 0
3/4AINR
Text GLabel 6050 2050 0    50   Input ~ 0
3/4AOUTR
Text GLabel 6050 1700 0    50   Input ~ 0
3/4AOUTL
$Comp
L Touch_Drum_V1-rescue:CONN_01X01- P?
U 1 1 56A4747C
P 1250 4350
F 0 "P?" H 1250 4450 50  0000 C CNN
F 1 "DOUT0" H 1350 4350 50  0000 L CNN
F 2 "SparkFun-Footprints:TestHole" H 1250 4350 50  0001 C CNN
F 3 "" H 1250 4350 50  0000 C CNN
	1    1250 4350
	0    -1   -1   0   
$EndComp
$Comp
L Touch_Drum_V1-rescue:CONN_01X01- P?
U 1 1 56A47876
P 1050 4350
F 0 "P?" H 1050 4450 50  0000 C CNN
F 1 "DIN0" H 1150 4350 50  0000 L CNN
F 2 "SparkFun-Footprints:TestHole" H 1050 4350 50  0001 C CNN
F 3 "" H 1050 4350 50  0000 C CNN
	1    1050 4350
	0    -1   -1   0   
$EndComp
$Comp
L Touch_Drum_V1-rescue:CONN_01X01- P?
U 1 1 56A47910
P 4100 4350
F 0 "P?" H 4100 4450 50  0000 C CNN
F 1 "LRCLK_ISO" H 4200 4350 50  0000 L CNN
F 2 "SparkFun-Footprints:TestHole" H 4100 4350 50  0001 C CNN
F 3 "" H 4100 4350 50  0000 C CNN
	1    4100 4350
	0    -1   -1   0   
$EndComp
$Comp
L Touch_Drum_V1-rescue:CONN_01X01- P?
U 1 1 56A479A5
P 3900 4350
F 0 "P?" H 3900 4450 50  0000 C CNN
F 1 "BCLK_ISO" H 4000 4350 50  0000 L CNN
F 2 "SparkFun-Footprints:TestHole" H 3900 4350 50  0001 C CNN
F 3 "" H 3900 4350 50  0000 C CNN
	1    3900 4350
	0    -1   -1   0   
$EndComp
$Comp
L Touch_Drum_V1-rescue:CONN_01X01- P?
U 1 1 56A47A41
P 3700 4350
F 0 "P?" H 3700 4450 50  0000 C CNN
F 1 "MCLK_ISO" H 3800 4350 50  0000 L CNN
F 2 "SparkFun-Footprints:TestHole" H 3700 4350 50  0001 C CNN
F 3 "" H 3700 4350 50  0000 C CNN
	1    3700 4350
	0    -1   -1   0   
$EndComp
$Comp
L Touch_Drum_V1-rescue:CONN_01X01- P?
U 1 1 56A47ADC
P 3500 4350
F 0 "P?" H 3500 4450 50  0000 C CNN
F 1 "SCL0_ISO" H 3600 4350 50  0000 L CNN
F 2 "SparkFun-Footprints:TestHole" H 3500 4350 50  0001 C CNN
F 3 "" H 3500 4350 50  0000 C CNN
	1    3500 4350
	0    -1   -1   0   
$EndComp
$Comp
L Touch_Drum_V1-rescue:CONN_01X01- P?
U 1 1 56A47B7C
P 3300 4350
F 0 "P?" H 3300 4450 50  0000 C CNN
F 1 "SDA0_ISO" H 3400 4350 50  0000 L CNN
F 2 "SparkFun-Footprints:TestHole" H 3300 4350 50  0001 C CNN
F 3 "" H 3300 4350 50  0000 C CNN
	1    3300 4350
	0    -1   -1   0   
$EndComp
$Comp
L Touch_Drum_V1-rescue:CONN_01X01- P?
U 1 1 56A48D54
P 7000 3350
F 0 "P?" H 7000 3450 50  0000 C CNN
F 1 "DOUT1" H 7100 3350 50  0000 L CNN
F 2 "SparkFun-Footprints:TestHole" H 7000 3350 50  0001 C CNN
F 3 "" H 7000 3350 50  0000 C CNN
	1    7000 3350
	0    -1   -1   0   
$EndComp
$Comp
L Touch_Drum_V1-rescue:CONN_01X01- P?
U 1 1 56A48D5A
P 6800 3350
F 0 "P?" H 6800 3450 50  0000 C CNN
F 1 "DIN1" H 6900 3350 50  0000 L CNN
F 2 "SparkFun-Footprints:TestHole" H 6800 3350 50  0001 C CNN
F 3 "" H 6800 3350 50  0000 C CNN
	1    6800 3350
	0    -1   -1   0   
$EndComp
$Comp
L Touch_Drum_V1-rescue:2Jumper- JMP?
U 1 1 56A4A223
P 3400 1250
F 0 "JMP?" H 3400 1345 60  0001 C CNN
F 1 "2Jumper" H 3400 1435 60  0001 C CNN
F 2 "SparkFun-Footprints:SF-2way-open" H 4555 1320 60  0001 C CNN
F 3 "" H 4555 1320 60  0000 C CNN
	1    3400 1250
	1    0    0    -1  
$EndComp
$Comp
L Touch_Drum_V1-rescue:2Jumper- JMP?
U 1 1 56A4AB46
P 3700 900
F 0 "JMP?" H 3700 995 60  0001 C CNN
F 1 "2Jumper" H 3700 1085 60  0001 C CNN
F 2 "SparkFun-Footprints:SF-2way-open" H 4855 970 60  0001 C CNN
F 3 "" H 4855 970 60  0000 C CNN
	1    3700 900 
	1    0    0    -1  
$EndComp
$Comp
L Touch_Drum_V1-rescue:2Jumper- JMP?
U 1 1 56A4B1C0
P 3100 1600
F 0 "JMP?" H 3100 1695 60  0001 C CNN
F 1 "2Jumper" H 3100 1785 60  0001 C CNN
F 2 "SparkFun-Footprints:SF-2way-open" H 4255 1670 60  0001 C CNN
F 3 "" H 4255 1670 60  0000 C CNN
	1    3100 1600
	1    0    0    -1  
$EndComp
$Comp
L Touch_Drum_V1-rescue:2Jumper- JMP?
U 1 1 56A4B25E
P 2800 1950
F 0 "JMP?" H 2800 2045 60  0001 C CNN
F 1 "2Jumper" H 2800 2135 60  0001 C CNN
F 2 "SparkFun-Footprints:SF-2way-open" H 3955 2020 60  0001 C CNN
F 3 "" H 3955 2020 60  0000 C CNN
	1    2800 1950
	1    0    0    -1  
$EndComp
$Comp
L Touch_Drum_V1-rescue:2Jumper- JMP?
U 1 1 56A4EC53
P 7300 850
F 0 "JMP?" H 7300 945 60  0001 C CNN
F 1 "2Jumper" H 7300 1035 60  0001 C CNN
F 2 "SparkFun-Footprints:SF-2way-open" H 8455 920 60  0001 C CNN
F 3 "" H 8455 920 60  0000 C CNN
	1    7300 850 
	1    0    0    -1  
$EndComp
$Comp
L Touch_Drum_V1-rescue:2Jumper- JMP?
U 1 1 56A4EE7D
P 7000 1200
F 0 "JMP?" H 7000 1295 60  0001 C CNN
F 1 "2Jumper" H 7000 1385 60  0001 C CNN
F 2 "SparkFun-Footprints:SF-2way-open" H 8155 1270 60  0001 C CNN
F 3 "" H 8155 1270 60  0000 C CNN
	1    7000 1200
	1    0    0    -1  
$EndComp
$Comp
L Touch_Drum_V1-rescue:2Jumper- JMP?
U 1 1 56A4EF4C
P 6700 1550
F 0 "JMP?" H 6700 1645 60  0001 C CNN
F 1 "2Jumper" H 6700 1735 60  0001 C CNN
F 2 "SparkFun-Footprints:SF-2way-open" H 7855 1620 60  0001 C CNN
F 3 "" H 7855 1620 60  0000 C CNN
	1    6700 1550
	1    0    0    -1  
$EndComp
$Comp
L Touch_Drum_V1-rescue:2Jumper- JMP?
U 1 1 56A4EFEA
P 6400 1900
F 0 "JMP?" H 6400 1995 60  0001 C CNN
F 1 "2Jumper" H 6400 2085 60  0001 C CNN
F 2 "SparkFun-Footprints:SF-2way-open" H 7555 1970 60  0001 C CNN
F 3 "" H 7555 1970 60  0000 C CNN
	1    6400 1900
	1    0    0    -1  
$EndComp
$Comp
L Touch_Drum_V1-rescue:CONN_01X01- P?
U 1 1 56AC3942
P 7700 3350
F 0 "P?" H 7700 3450 50  0000 C CNN
F 1 "DOUT1_ISO" H 7800 3350 50  0000 L CNN
F 2 "SparkFun-Footprints:TestHole" H 7700 3350 50  0001 C CNN
F 3 "" H 7700 3350 50  0000 C CNN
	1    7700 3350
	0    -1   -1   0   
$EndComp
$Comp
L Touch_Drum_V1-rescue:CONN_01X01- P?
U 1 1 56AC3948
P 7500 3350
F 0 "P?" H 7500 3450 50  0000 C CNN
F 1 "DIN1_ISO" H 7600 3350 50  0000 L CNN
F 2 "SparkFun-Footprints:TestHole" H 7500 3350 50  0001 C CNN
F 3 "" H 7500 3350 50  0000 C CNN
	1    7500 3350
	0    -1   -1   0   
$EndComp
$Comp
L Touch_Drum_V1-rescue:CONN_01X01- P?
U 1 1 56AC54EC
P 1650 4350
F 0 "P?" H 1650 4450 50  0000 C CNN
F 1 "DOUT0_ISO" H 1750 4350 50  0000 L CNN
F 2 "SparkFun-Footprints:TestHole" H 1650 4350 50  0001 C CNN
F 3 "" H 1650 4350 50  0000 C CNN
	1    1650 4350
	0    -1   -1   0   
$EndComp
$Comp
L Touch_Drum_V1-rescue:CONN_01X01- P?
U 1 1 56AC54F2
P 1450 4350
F 0 "P?" H 1450 4450 50  0000 C CNN
F 1 "DIN0_ISO" H 1550 4350 50  0000 L CNN
F 2 "SparkFun-Footprints:TestHole" H 1450 4350 50  0001 C CNN
F 3 "" H 1450 4350 50  0000 C CNN
	1    1450 4350
	0    -1   -1   0   
$EndComp
$Comp
L Touch_Drum_V1-rescue:2Jumper- JMP?
U 1 1 56AC7FAA
P 2800 4600
F 0 "JMP?" H 2800 4695 60  0000 C CNN
F 1 "2Jumper" H 2800 4785 60  0001 C CNN
F 2 "SparkFun-Footprints:SF-2way-open" H 3955 4670 60  0001 C CNN
F 3 "" H 3955 4670 60  0000 C CNN
	1    2800 4600
	1    0    0    -1  
$EndComp
$Comp
L Touch_Drum_V1-rescue:2Jumper- JMP?
U 1 1 56AC8094
P 2800 4800
F 0 "JMP?" H 2800 4895 60  0000 C CNN
F 1 "2Jumper" H 2800 4985 60  0001 C CNN
F 2 "SparkFun-Footprints:SF-2way-open" H 3955 4870 60  0001 C CNN
F 3 "" H 3955 4870 60  0000 C CNN
	1    2800 4800
	1    0    0    -1  
$EndComp
$Comp
L Touch_Drum_V1-rescue:2Jumper- JMP?
U 1 1 56AC904C
P 2800 5000
F 0 "JMP?" H 2800 5095 60  0000 C CNN
F 1 "2Jumper" H 2800 5185 60  0001 C CNN
F 2 "SparkFun-Footprints:SF-2way-open" H 3955 5070 60  0001 C CNN
F 3 "" H 3955 5070 60  0000 C CNN
	1    2800 5000
	1    0    0    -1  
$EndComp
$Comp
L Touch_Drum_V1-rescue:2Jumper- JMP?
U 1 1 56AC9120
P 2800 5200
F 0 "JMP?" H 2800 5295 60  0000 C CNN
F 1 "2Jumper" H 2800 5385 60  0001 C CNN
F 2 "SparkFun-Footprints:SF-2way-open" H 3955 5270 60  0001 C CNN
F 3 "" H 3955 5270 60  0000 C CNN
	1    2800 5200
	1    0    0    -1  
$EndComp
$Comp
L Touch_Drum_V1-rescue:2Jumper- JMP?
U 1 1 56AC91E3
P 2800 5400
F 0 "JMP?" H 2800 5495 60  0000 C CNN
F 1 "2Jumper" H 2800 5585 60  0001 C CNN
F 2 "SparkFun-Footprints:SF-2way-open" H 3955 5470 60  0001 C CNN
F 3 "" H 3955 5470 60  0000 C CNN
	1    2800 5400
	1    0    0    -1  
$EndComp
$Comp
L Touch_Drum_V1-rescue:CONN_01X01- P?
U 1 1 56ACB88F
P 2550 3550
F 0 "P?" H 2550 3650 50  0000 C CNN
F 1 "LRCLK" H 2650 3550 50  0000 L CNN
F 2 "SparkFun-Footprints:TestHole" H 2550 3550 50  0001 C CNN
F 3 "" H 2550 3550 50  0000 C CNN
	1    2550 3550
	0    -1   -1   0   
$EndComp
$Comp
L Touch_Drum_V1-rescue:CONN_01X01- P?
U 1 1 56ACB895
P 2350 3550
F 0 "P?" H 2350 3650 50  0000 C CNN
F 1 "BCLK" H 2450 3550 50  0000 L CNN
F 2 "SparkFun-Footprints:TestHole" H 2350 3550 50  0001 C CNN
F 3 "" H 2350 3550 50  0000 C CNN
	1    2350 3550
	0    -1   -1   0   
$EndComp
$Comp
L Touch_Drum_V1-rescue:CONN_01X01- P?
U 1 1 56ACB89B
P 2150 3550
F 0 "P?" H 2150 3650 50  0000 C CNN
F 1 "MCLK" H 2250 3550 50  0000 L CNN
F 2 "SparkFun-Footprints:TestHole" H 2150 3550 50  0001 C CNN
F 3 "" H 2150 3550 50  0000 C CNN
	1    2150 3550
	0    -1   -1   0   
$EndComp
$Comp
L Touch_Drum_V1-rescue:CONN_01X01- P?
U 1 1 56ACB8A1
P 1950 3550
F 0 "P?" H 1950 3650 50  0000 C CNN
F 1 "SCL0" H 2050 3550 50  0000 L CNN
F 2 "SparkFun-Footprints:TestHole" H 1950 3550 50  0001 C CNN
F 3 "" H 1950 3550 50  0000 C CNN
	1    1950 3550
	0    -1   -1   0   
$EndComp
$Comp
L Touch_Drum_V1-rescue:CONN_01X01- P?
U 1 1 56ACB8A7
P 1750 3550
F 0 "P?" H 1750 3650 50  0000 C CNN
F 1 "SDA0" H 1850 3550 50  0000 L CNN
F 2 "SparkFun-Footprints:TestHole" H 1750 3550 50  0001 C CNN
F 3 "" H 1750 3550 50  0000 C CNN
	1    1750 3550
	0    -1   -1   0   
$EndComp
Text GLabel 3800 4950 1    20   Input ~ 0
SDA12
Text GLabel 4000 5050 1    20   Input ~ 0
SCL12
Text GLabel 3600 5250 1    20   Input ~ 0
MCLK_ISO
Text GLabel 3800 5350 1    20   Input ~ 0
BCLK_ISO
Text GLabel 4000 5450 1    20   Input ~ 0
LRCLK_ISO
Text GLabel 2200 5600 1    20   Input ~ 0
I2S_DIN0_ISO
Text GLabel 2350 5800 1    20   Input ~ 0
I2S_DOUT0_ISO
Text GLabel 8150 4550 1    20   Input ~ 0
I2S_DIN1_ISO
Text GLabel 8350 4750 1    20   Input ~ 0
I2S_DOUT1_ISO
$Comp
L Touch_Drum_V1-rescue:2Jumper- JMP?
U 1 1 56AEF716
P 5050 7400
F 0 "JMP?" H 5050 7495 60  0000 C CNN
F 1 "2Jumper" H 5050 7585 60  0001 C CNN
F 2 "SparkFun-Footprints:SF-2way-open" H 6205 7470 60  0001 C CNN
F 3 "" H 6205 7470 60  0000 C CNN
	1    5050 7400
	1    0    0    -1  
$EndComp
$Comp
L Touch_Drum_V1-rescue:2Jumper- JMP?
U 1 1 56AEF83A
P 8350 6050
F 0 "JMP?" H 8350 6145 60  0000 C CNN
F 1 "2Jumper" H 8350 6235 60  0001 C CNN
F 2 "SparkFun-Footprints:SF-2way-open" H 9505 6120 60  0001 C CNN
F 3 "" H 9505 6120 60  0000 C CNN
	1    8350 6050
	1    0    0    -1  
$EndComp
$Comp
L Touch_Drum_V1-rescue:GND- #PWR?
U 1 1 56AEF939
P 4800 7500
F 0 "#PWR?" H 4800 7250 50  0001 C CNN
F 1 "GND" H 4800 7350 50  0000 C CNN
F 2 "" H 4800 7500 50  0000 C CNN
F 3 "" H 4800 7500 50  0000 C CNN
	1    4800 7500
	1    0    0    -1  
$EndComp
$Comp
L Touch_Drum_V1-rescue:GND- #PWR?
U 1 1 56AEFA07
P 8100 6200
F 0 "#PWR?" H 8100 5950 50  0001 C CNN
F 1 "GND" H 8100 6050 50  0000 C CNN
F 2 "" H 8100 6200 50  0000 C CNN
F 3 "" H 8100 6200 50  0000 C CNN
	1    8100 6200
	1    0    0    -1  
$EndComp
Text GLabel 8600 6050 2    60   Input ~ 0
ISOGND34
Text GLabel 5300 7400 2    60   Input ~ 0
ISOGND12
Text GLabel 5400 6750 2    60   Input ~ 0
ISOGND12
Text GLabel 5850 4250 1    60   Input ~ 0
ISOGND12
$Comp
L Touch_Drum_V1-rescue:SGTL5000- U?
U 1 1 569EE187
P 9700 4550
F 0 "U?" V 9750 4600 60  0000 C CNN
F 1 "SGTL5000" V 9650 4600 60  0000 C CNN
F 2 "SparkFun-Footprints:SF-QFN-32-NXP-SGTL5000" H 9700 4600 60  0001 C CNN
F 3 "" H 9700 4600 60  0000 C CNN
	1    9700 4550
	1    0    0    -1  
$EndComp
Text GLabel 10150 5750 2    60   Input ~ 0
ISOGND34
Text GLabel 10500 3400 2    60   Input ~ 0
ISOGND34
Text GLabel 4800 2600 2    60   Input ~ 0
ISOGND12
Text GLabel 8400 2550 2    60   Input ~ 0
ISOGND34
$Comp
L Touch_Drum_V1-rescue:2Jumper- JMP?
U 1 1 56B14DDA
P 8500 3950
F 0 "JMP?" H 8500 4045 60  0000 C CNN
F 1 "2Jumper" H 8500 4135 60  0001 C CNN
F 2 "SparkFun-Footprints:SF-2way-open" H 9655 4020 60  0001 C CNN
F 3 "" H 9655 4020 60  0000 C CNN
	1    8500 3950
	1    0    0    -1  
$EndComp
$Comp
L Touch_Drum_V1-rescue:2Jumper- JMP?
U 1 1 56B14EF4
P 8500 4150
F 0 "JMP?" H 8500 4245 60  0000 C CNN
F 1 "2Jumper" H 8500 4335 60  0001 C CNN
F 2 "SparkFun-Footprints:SF-2way-open" H 9655 4220 60  0001 C CNN
F 3 "" H 9655 4220 60  0000 C CNN
	1    8500 4150
	1    0    0    -1  
$EndComp
$Comp
L Touch_Drum_V1-rescue:CONN_01X01- P?
U 1 1 56B15624
P 8050 3350
F 0 "P?" H 8050 3450 50  0000 C CNN
F 1 "SCL_ISO" H 8150 3350 50  0000 L CNN
F 2 "SparkFun-Footprints:TestHole" H 8050 3350 50  0001 C CNN
F 3 "" H 8050 3350 50  0000 C CNN
	1    8050 3350
	0    -1   -1   0   
$EndComp
$Comp
L Touch_Drum_V1-rescue:CONN_01X01- P?
U 1 1 56B1571A
P 8250 3350
F 0 "P?" H 8250 3450 50  0000 C CNN
F 1 "SDA_ISO" H 8350 3350 50  0000 L CNN
F 2 "SparkFun-Footprints:TestHole" H 8250 3350 50  0001 C CNN
F 3 "" H 8250 3350 50  0000 C CNN
	1    8250 3350
	0    -1   -1   0   
$EndComp
$Comp
L Touch_Drum_V1-rescue:CONN_01X01- P?
U 1 1 56B15805
P 8750 3350
F 0 "P?" H 8750 3450 50  0000 C CNN
F 1 "SCL_ISO2" H 8850 3350 50  0000 L CNN
F 2 "SparkFun-Footprints:TestHole" H 8750 3350 50  0001 C CNN
F 3 "" H 8750 3350 50  0000 C CNN
	1    8750 3350
	0    -1   -1   0   
$EndComp
$Comp
L Touch_Drum_V1-rescue:CONN_01X01- P?
U 1 1 56B158F5
P 8950 3350
F 0 "P?" H 8950 3450 50  0000 C CNN
F 1 "SDA_ISO2" H 9050 3350 50  0000 L CNN
F 2 "SparkFun-Footprints:TestHole" H 8950 3350 50  0001 C CNN
F 3 "" H 8950 3350 50  0000 C CNN
	1    8950 3350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3950 5800 3950 5650
Wire Wire Line
	3950 5650 4150 5650
Wire Wire Line
	3050 5450 4100 5450
Wire Wire Line
	3100 5350 3900 5350
Wire Wire Line
	1000 5600 1050 5600
Wire Wire Line
	1000 5800 1250 5800
Wire Wire Line
	4850 3550 4850 3750
Wire Wire Line
	5050 3950 5050 4000
Wire Wire Line
	5550 5550 5600 5550
Wire Wire Line
	5550 5650 5600 5650
Wire Wire Line
	5550 5750 5600 5750
Wire Wire Line
	4650 6750 4650 6650
Wire Wire Line
	4850 6750 4850 6650
Wire Wire Line
	5050 6750 5050 6650
Wire Wire Line
	4150 6200 3950 6200
Wire Wire Line
	3950 6200 3950 6750
Wire Wire Line
	3500 6400 3600 6400
Wire Wire Line
	3600 6400 3600 6100
Wire Wire Line
	3600 6100 4150 6100
Wire Wire Line
	3350 6750 3350 6600
Wire Wire Line
	3350 6200 3350 6050
Wire Wire Line
	5050 3550 5050 3650
Wire Wire Line
	3750 6750 3750 6600
Wire Wire Line
	3750 6300 3750 5900
Wire Wire Line
	3750 5900 4150 5900
Wire Wire Line
	5050 4000 5300 4000
Wire Wire Line
	5300 4000 5300 4050
Connection ~ 5050 4000
Wire Wire Line
	4500 3550 4500 3850
Wire Wire Line
	4500 4300 4650 4300
Wire Wire Line
	4650 4300 4650 4500
Wire Wire Line
	4500 3850 4300 3850
Wire Wire Line
	4300 3850 4300 3950
Connection ~ 4500 3850
Wire Wire Line
	5300 4400 5300 4350
Wire Wire Line
	5550 4000 5550 4050
Connection ~ 5300 4000
Wire Wire Line
	5550 4400 5550 4350
Wire Wire Line
	4300 4250 4300 4400
Wire Wire Line
	4700 4400 4700 4150
Wire Wire Line
	4700 3850 4700 3750
Wire Wire Line
	4700 3750 4850 3750
Connection ~ 4850 3750
Wire Wire Line
	7450 4550 7500 4550
Wire Wire Line
	7450 4750 7700 4750
Wire Wire Line
	8800 4750 8800 4650
Wire Wire Line
	8800 4650 9000 4650
Wire Wire Line
	6700 4450 9000 4450
Wire Wire Line
	6700 4350 9000 4350
Wire Wire Line
	6700 4250 9000 4250
Wire Wire Line
	6700 4550 6800 4550
Wire Wire Line
	6700 4750 7000 4750
Wire Wire Line
	9700 2550 9700 2750
Wire Wire Line
	9900 2950 9900 3000
Wire Wire Line
	10400 4550 10450 4550
Wire Wire Line
	10400 4650 10450 4650
Wire Wire Line
	10400 4750 10450 4750
Wire Wire Line
	9500 5750 9500 5650
Wire Wire Line
	9700 5750 9700 5650
Wire Wire Line
	9900 5750 9900 5650
Wire Wire Line
	9000 5200 8800 5200
Wire Wire Line
	8800 5200 8800 5750
Wire Wire Line
	8350 5400 8450 5400
Wire Wire Line
	8450 5400 8450 5100
Wire Wire Line
	8450 5100 9000 5100
Wire Wire Line
	8200 5750 8200 5600
Wire Wire Line
	8200 5200 8200 5050
Wire Wire Line
	9900 2550 9900 2650
Wire Wire Line
	8600 5750 8600 5600
Wire Wire Line
	8600 5300 8600 4900
Wire Wire Line
	8600 4900 9000 4900
Wire Wire Line
	9900 3000 10150 3000
Wire Wire Line
	10150 3000 10150 3050
Connection ~ 9900 3000
Wire Wire Line
	9350 2550 9350 2850
Wire Wire Line
	9350 3150 9500 3150
Wire Wire Line
	9500 3150 9500 3500
Wire Wire Line
	9350 2850 9150 2850
Wire Wire Line
	9150 2850 9150 2950
Connection ~ 9350 2850
Wire Wire Line
	10150 3400 10150 3350
Wire Wire Line
	10400 3000 10400 3050
Connection ~ 10150 3000
Wire Wire Line
	10400 3400 10400 3350
Wire Wire Line
	9150 3250 9150 3400
Wire Wire Line
	9550 3400 9550 3150
Wire Wire Line
	9550 2850 9550 2750
Wire Wire Line
	9550 2750 9700 2750
Connection ~ 9700 2750
Wire Wire Line
	5250 6750 5250 6650
Wire Wire Line
	10100 5750 10100 5650
Wire Wire Line
	2450 2100 2550 2100
Wire Wire Line
	2950 2100 3050 2100
Wire Wire Line
	3150 2100 3150 2200
Wire Wire Line
	3150 2500 3150 2600
Wire Wire Line
	2450 1750 2850 1750
Wire Wire Line
	3250 1750 3350 1750
Wire Wire Line
	3450 1750 3450 1900
Wire Wire Line
	3450 2500 3450 2600
Wire Wire Line
	2450 1400 3150 1400
Wire Wire Line
	3550 1400 3650 1400
Wire Wire Line
	3750 1400 3750 1800
Wire Wire Line
	3750 2600 3750 2500
Wire Wire Line
	2450 1050 3450 1050
Wire Wire Line
	3850 1050 3950 1050
Wire Wire Line
	4050 1050 4050 1600
Wire Wire Line
	4050 2600 4050 2500
Wire Wire Line
	4650 2600 4650 2000
Wire Wire Line
	4650 2000 4750 2000
Wire Wire Line
	4650 1700 4750 1700
Connection ~ 4650 2000
Wire Wire Line
	4750 1600 4050 1600
Connection ~ 4050 1600
Wire Wire Line
	4750 1800 3750 1800
Connection ~ 3750 1800
Wire Wire Line
	4750 1900 3450 1900
Connection ~ 3450 1900
Connection ~ 3150 2100
Wire Wire Line
	6050 2050 6150 2050
Wire Wire Line
	6550 2050 6650 2050
Wire Wire Line
	6750 2050 6750 2150
Wire Wire Line
	6750 2450 6750 2550
Wire Wire Line
	6050 1700 6450 1700
Wire Wire Line
	6850 1700 6950 1700
Wire Wire Line
	7050 1700 7050 1850
Wire Wire Line
	7050 2450 7050 2550
Wire Wire Line
	6050 1350 6750 1350
Wire Wire Line
	7150 1350 7250 1350
Wire Wire Line
	7350 1350 7350 1750
Wire Wire Line
	7350 2550 7350 2450
Wire Wire Line
	6050 1000 7050 1000
Wire Wire Line
	7450 1000 7550 1000
Wire Wire Line
	7650 1000 7650 1550
Wire Wire Line
	7650 2550 7650 2450
Wire Wire Line
	8250 2550 8250 1950
Wire Wire Line
	8250 1950 8350 1950
Wire Wire Line
	8250 1650 8350 1650
Connection ~ 8250 1950
Wire Wire Line
	8350 1550 7650 1550
Connection ~ 7650 1550
Wire Wire Line
	8350 1750 7350 1750
Connection ~ 7350 1750
Wire Wire Line
	8350 1850 7050 1850
Connection ~ 7050 1850
Connection ~ 6750 2050
Wire Wire Line
	5550 4950 5650 4950
Wire Wire Line
	5650 5050 5550 5050
Wire Wire Line
	5650 5150 5550 5150
Wire Wire Line
	5650 5250 5550 5250
Wire Wire Line
	10400 3950 10500 3950
Wire Wire Line
	10500 4050 10400 4050
Wire Wire Line
	10500 4150 10400 4150
Wire Wire Line
	10500 4250 10400 4250
Wire Wire Line
	1700 5600 1800 5600
Wire Wire Line
	3800 5600 3800 5550
Wire Wire Line
	3800 5550 4150 5550
Wire Wire Line
	1700 5800 2000 5800
Wire Wire Line
	3300 4950 3300 4550
Connection ~ 3300 4950
Wire Wire Line
	3500 4550 3500 5050
Connection ~ 3500 5050
Wire Wire Line
	3700 4550 3700 5250
Connection ~ 3700 5250
Wire Wire Line
	3900 4550 3900 5350
Connection ~ 3900 5350
Wire Wire Line
	4100 4550 4100 5450
Connection ~ 4100 5450
Wire Wire Line
	1050 4550 1050 5600
Wire Wire Line
	1250 4550 1250 5800
Wire Wire Line
	6800 3550 6800 4550
Wire Wire Line
	7000 3550 7000 4750
Wire Wire Line
	3000 1950 3050 1950
Wire Wire Line
	3050 1950 3050 2100
Connection ~ 3050 2100
Wire Wire Line
	2600 1950 2550 1950
Wire Wire Line
	2550 1950 2550 2100
Connection ~ 2550 2100
Wire Wire Line
	3300 1600 3350 1600
Wire Wire Line
	3350 1600 3350 1750
Connection ~ 3350 1750
Wire Wire Line
	2900 1600 2850 1600
Wire Wire Line
	2850 1600 2850 1750
Connection ~ 2850 1750
Wire Wire Line
	3200 1250 3150 1250
Wire Wire Line
	3150 1250 3150 1400
Connection ~ 3150 1400
Wire Wire Line
	3650 1400 3650 1250
Wire Wire Line
	3650 1250 3600 1250
Connection ~ 3650 1400
Wire Wire Line
	3950 1050 3950 900 
Wire Wire Line
	3950 900  3900 900 
Connection ~ 3950 1050
Wire Wire Line
	3500 900  3450 900 
Wire Wire Line
	3450 900  3450 1050
Connection ~ 3450 1050
Wire Wire Line
	6150 2050 6150 1900
Wire Wire Line
	6150 1900 6200 1900
Connection ~ 6150 2050
Wire Wire Line
	6450 1700 6450 1550
Wire Wire Line
	6450 1550 6500 1550
Connection ~ 6450 1700
Wire Wire Line
	6750 1350 6750 1200
Wire Wire Line
	6750 1200 6800 1200
Connection ~ 6750 1350
Wire Wire Line
	7050 1000 7050 850 
Wire Wire Line
	7050 850  7100 850 
Connection ~ 7050 1000
Wire Wire Line
	7550 1000 7550 850 
Wire Wire Line
	7550 850  7500 850 
Connection ~ 7550 1000
Wire Wire Line
	7250 1350 7250 1200
Wire Wire Line
	7250 1200 7200 1200
Connection ~ 7250 1350
Wire Wire Line
	6950 1700 6950 1550
Wire Wire Line
	6950 1550 6900 1550
Connection ~ 6950 1700
Wire Wire Line
	6650 2050 6650 1900
Wire Wire Line
	6650 1900 6600 1900
Connection ~ 6650 2050
Connection ~ 1050 5600
Connection ~ 1250 5800
Connection ~ 6800 4550
Connection ~ 7000 4750
Wire Wire Line
	7500 3550 7500 4550
Wire Wire Line
	7700 3550 7700 4750
Connection ~ 7500 4550
Connection ~ 7700 4750
Connection ~ 1800 5600
Connection ~ 2000 5800
Wire Wire Line
	950  4600 2350 4600
Wire Wire Line
	950  4800 2400 4800
Wire Wire Line
	3250 4950 3300 4950
Wire Wire Line
	3200 5050 3500 5050
Wire Wire Line
	3150 5250 3700 5250
Wire Wire Line
	1000 5000 2450 5000
Wire Wire Line
	1000 5200 2500 5200
Wire Wire Line
	1000 5400 2550 5400
Wire Wire Line
	3050 5450 3050 5400
Wire Wire Line
	3050 5400 3000 5400
Wire Wire Line
	3100 5350 3100 5200
Wire Wire Line
	3100 5200 3000 5200
Wire Wire Line
	3150 5250 3150 5000
Wire Wire Line
	3150 5000 3000 5000
Wire Wire Line
	3200 5050 3200 4800
Wire Wire Line
	3200 4800 3000 4800
Wire Wire Line
	3250 4950 3250 4600
Wire Wire Line
	3250 4600 3000 4600
Wire Wire Line
	1800 5600 1800 5300
Wire Wire Line
	1800 5300 1450 5300
Wire Wire Line
	1450 5300 1450 4550
Wire Wire Line
	2000 5800 2000 5100
Wire Wire Line
	2000 5100 1650 5100
Wire Wire Line
	1650 5100 1650 4550
Wire Wire Line
	2550 3750 2550 5400
Connection ~ 2550 5400
Wire Wire Line
	2350 3750 2350 4050
Wire Wire Line
	2350 4050 2500 4050
Wire Wire Line
	2500 4050 2500 5200
Connection ~ 2500 5200
Wire Wire Line
	2150 3750 2150 4150
Wire Wire Line
	2150 4150 2450 4150
Wire Wire Line
	2450 4150 2450 5000
Connection ~ 2450 5000
Wire Wire Line
	1950 3750 1950 4250
Wire Wire Line
	1950 4250 2400 4250
Wire Wire Line
	2400 4250 2400 4800
Connection ~ 2400 4800
Wire Wire Line
	1750 3750 1750 4350
Wire Wire Line
	1750 4350 2350 4350
Wire Wire Line
	2350 4350 2350 4600
Connection ~ 2350 4600
Wire Wire Line
	4800 7500 4800 7400
Wire Wire Line
	4800 7400 4850 7400
Wire Wire Line
	5250 7400 5300 7400
Wire Wire Line
	8100 6200 8100 6050
Wire Wire Line
	8100 6050 8150 6050
Wire Wire Line
	8550 6050 8600 6050
Wire Wire Line
	3350 6750 3750 6750
Connection ~ 3750 6750
Connection ~ 3950 6750
Connection ~ 4650 6750
Connection ~ 4850 6750
Connection ~ 5050 6750
Connection ~ 5250 6750
Wire Wire Line
	5850 4400 5850 4250
Wire Wire Line
	4300 4400 4700 4400
Connection ~ 5550 4400
Connection ~ 5300 4400
Connection ~ 4700 4400
Wire Wire Line
	9150 3400 9550 3400
Connection ~ 10400 3400
Connection ~ 10150 3400
Connection ~ 9550 3400
Wire Wire Line
	8200 5750 8600 5750
Connection ~ 8600 5750
Connection ~ 8800 5750
Connection ~ 9500 5750
Connection ~ 9700 5750
Connection ~ 9900 5750
Connection ~ 10100 5750
Wire Wire Line
	6750 2550 7050 2550
Connection ~ 7050 2550
Connection ~ 7350 2550
Connection ~ 7650 2550
Connection ~ 8250 2550
Wire Wire Line
	3150 2600 3450 2600
Connection ~ 3450 2600
Connection ~ 3750 2600
Connection ~ 4050 2600
Connection ~ 4650 2600
Wire Wire Line
	6700 4050 8050 4050
Wire Wire Line
	6700 3950 8250 3950
Wire Wire Line
	8700 3950 8950 3950
Wire Wire Line
	8750 4150 8700 4150
Wire Wire Line
	8750 3550 8750 4050
Wire Wire Line
	8750 4050 9000 4050
Wire Wire Line
	8250 4050 8250 4150
Wire Wire Line
	8250 4150 8300 4150
Connection ~ 8750 4050
Wire Wire Line
	8950 3550 8950 3950
Connection ~ 8950 3950
Wire Wire Line
	8250 3550 8250 3950
Connection ~ 8250 3950
Wire Wire Line
	8050 3550 8050 4050
Connection ~ 8050 4050
Text GLabel 1000 6400 0    50   Input ~ 0
MCLK_ISO
Text GLabel 1000 6600 0    50   Input ~ 0
BCLK_ISO
Text GLabel 1000 6800 0    50   Input ~ 0
LRCLK_ISO
$Comp
L Touch_Drum_V1-rescue:C- C?
U 1 1 56B1C565
P 1150 7050
F 0 "C?" H 1175 7150 50  0000 L CNN
F 1 "22p" H 1175 6950 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 1188 6900 50  0001 C CNN
F 3 "" H 1150 7050 50  0000 C CNN
	1    1150 7050
	1    0    0    -1  
$EndComp
$Comp
L Touch_Drum_V1-rescue:C- C?
U 1 1 56B1C6B1
P 1500 7050
F 0 "C?" H 1525 7150 50  0000 L CNN
F 1 "22p" H 1525 6950 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 1538 6900 50  0001 C CNN
F 3 "" H 1500 7050 50  0000 C CNN
	1    1500 7050
	1    0    0    -1  
$EndComp
$Comp
L Touch_Drum_V1-rescue:C- C?
U 1 1 56B1C7A8
P 1850 7050
F 0 "C?" H 1875 7150 50  0000 L CNN
F 1 "22p" H 1875 6950 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 1888 6900 50  0001 C CNN
F 3 "" H 1850 7050 50  0000 C CNN
	1    1850 7050
	1    0    0    -1  
$EndComp
$Comp
L Touch_Drum_V1-rescue:GND- #PWR?
U 1 1 56B1CDC7
P 1150 7250
F 0 "#PWR?" H 1150 7000 50  0001 C CNN
F 1 "GND" H 1150 7100 50  0000 C CNN
F 2 "" H 1150 7250 50  0000 C CNN
F 3 "" H 1150 7250 50  0000 C CNN
	1    1150 7250
	1    0    0    -1  
$EndComp
$Comp
L Touch_Drum_V1-rescue:GND- #PWR?
U 1 1 56B1CEB0
P 1500 7250
F 0 "#PWR?" H 1500 7000 50  0001 C CNN
F 1 "GND" H 1500 7100 50  0000 C CNN
F 2 "" H 1500 7250 50  0000 C CNN
F 3 "" H 1500 7250 50  0000 C CNN
	1    1500 7250
	1    0    0    -1  
$EndComp
$Comp
L Touch_Drum_V1-rescue:GND- #PWR?
U 1 1 56B1CF99
P 1850 7250
F 0 "#PWR?" H 1850 7000 50  0001 C CNN
F 1 "GND" H 1850 7100 50  0000 C CNN
F 2 "" H 1850 7250 50  0000 C CNN
F 3 "" H 1850 7250 50  0000 C CNN
	1    1850 7250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 6800 1150 6800
Wire Wire Line
	1150 6800 1150 6900
Wire Wire Line
	1000 6600 1500 6600
Wire Wire Line
	1500 6600 1500 6900
Wire Wire Line
	1000 6400 1850 6400
Wire Wire Line
	1850 6400 1850 6900
Wire Wire Line
	1850 7200 1850 7250
Wire Wire Line
	1500 7200 1500 7250
Wire Wire Line
	1150 7200 1150 7250
Text GLabel 2500 7000 2    50   Input ~ 0
I2S_DOUT0
$Comp
L Touch_Drum_V1-rescue:C- C?
U 1 1 56B1DEC2
P 2300 7250
F 0 "C?" H 2325 7350 50  0000 L CNN
F 1 "22p" H 2325 7150 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 2338 7100 50  0001 C CNN
F 3 "" H 2300 7250 50  0000 C CNN
	1    2300 7250
	1    0    0    -1  
$EndComp
$Comp
L Touch_Drum_V1-rescue:GND- #PWR?
U 1 1 56B1DFF3
P 2300 7500
F 0 "#PWR?" H 2300 7250 50  0001 C CNN
F 1 "GND" H 2300 7350 50  0000 C CNN
F 2 "" H 2300 7500 50  0000 C CNN
F 3 "" H 2300 7500 50  0000 C CNN
	1    2300 7500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 7500 2300 7400
Wire Wire Line
	2300 7100 2300 7000
Wire Wire Line
	2300 7000 2500 7000
Text GLabel 3700 7000 0    50   Input ~ 0
I2S_DIN0_ISO
$Comp
L Touch_Drum_V1-rescue:C- C?
U 1 1 56B1E8B2
P 3900 7250
F 0 "C?" H 3925 7350 50  0000 L CNN
F 1 "22p" H 3925 7150 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 3938 7100 50  0001 C CNN
F 3 "" H 3900 7250 50  0000 C CNN
	1    3900 7250
	1    0    0    -1  
$EndComp
$Comp
L Touch_Drum_V1-rescue:GND- #PWR?
U 1 1 56B1E9D4
P 3900 7500
F 0 "#PWR?" H 3900 7250 50  0001 C CNN
F 1 "GND" H 3900 7350 50  0000 C CNN
F 2 "" H 3900 7500 50  0000 C CNN
F 3 "" H 3900 7500 50  0000 C CNN
	1    3900 7500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 7500 3900 7400
Wire Wire Line
	3700 7000 3900 7000
Wire Wire Line
	3900 7000 3900 7100
Text GLabel 6750 5600 2    50   Input ~ 0
I2S_DOUT1
$Comp
L Touch_Drum_V1-rescue:C- C?
U 1 1 56B1F4B3
P 6550 5850
F 0 "C?" H 6575 5950 50  0000 L CNN
F 1 "22p" H 6575 5750 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 6588 5700 50  0001 C CNN
F 3 "" H 6550 5850 50  0000 C CNN
	1    6550 5850
	1    0    0    -1  
$EndComp
$Comp
L Touch_Drum_V1-rescue:GND- #PWR?
U 1 1 56B1F4B9
P 6550 6100
F 0 "#PWR?" H 6550 5850 50  0001 C CNN
F 1 "GND" H 6550 5950 50  0000 C CNN
F 2 "" H 6550 6100 50  0000 C CNN
F 3 "" H 6550 6100 50  0000 C CNN
	1    6550 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 6100 6550 6000
Wire Wire Line
	6550 5700 6550 5600
Wire Wire Line
	6550 5600 6750 5600
Text GLabel 7450 5200 0    50   Input ~ 0
I2S_DIN1_ISO
$Comp
L Touch_Drum_V1-rescue:C- C?
U 1 1 56B1F4C3
P 7650 5450
F 0 "C?" H 7675 5550 50  0000 L CNN
F 1 "22p" H 7675 5350 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 7688 5300 50  0001 C CNN
F 3 "" H 7650 5450 50  0000 C CNN
	1    7650 5450
	1    0    0    -1  
$EndComp
$Comp
L Touch_Drum_V1-rescue:GND- #PWR?
U 1 1 56B1F4C9
P 7650 5700
F 0 "#PWR?" H 7650 5450 50  0001 C CNN
F 1 "GND" H 7650 5550 50  0000 C CNN
F 2 "" H 7650 5700 50  0000 C CNN
F 3 "" H 7650 5700 50  0000 C CNN
	1    7650 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 5700 7650 5600
Wire Wire Line
	7450 5200 7650 5200
Wire Wire Line
	7650 5200 7650 5300
Text GLabel 8900 3950 1    20   Input ~ 0
SDA34
Text GLabel 8800 4050 1    20   Input ~ 0
SCL34
Wire Wire Line
	5050 4000 5050 4500
Wire Wire Line
	4500 3850 4500 4300
Wire Wire Line
	5300 4000 5550 4000
Wire Wire Line
	4850 3750 4850 4500
Wire Wire Line
	9900 3000 9900 3500
Wire Wire Line
	9350 2850 9350 3150
Wire Wire Line
	10150 3000 10400 3000
Wire Wire Line
	9700 2750 9700 3500
Wire Wire Line
	4650 2000 4650 1700
Wire Wire Line
	4050 1600 4050 2200
Wire Wire Line
	3750 1800 3750 2200
Wire Wire Line
	3450 1900 3450 2200
Wire Wire Line
	3150 2100 4750 2100
Wire Wire Line
	8250 1950 8250 1650
Wire Wire Line
	7650 1550 7650 2150
Wire Wire Line
	7350 1750 7350 2150
Wire Wire Line
	7050 1850 7050 2150
Wire Wire Line
	6750 2050 8350 2050
Wire Wire Line
	3300 4950 4150 4950
Wire Wire Line
	3500 5050 4150 5050
Wire Wire Line
	3700 5250 4150 5250
Wire Wire Line
	3900 5350 4150 5350
Wire Wire Line
	4100 5450 4150 5450
Wire Wire Line
	3050 2100 3150 2100
Wire Wire Line
	2550 2100 2650 2100
Wire Wire Line
	3350 1750 3450 1750
Wire Wire Line
	2850 1750 2950 1750
Wire Wire Line
	3150 1400 3250 1400
Wire Wire Line
	3650 1400 3750 1400
Wire Wire Line
	3950 1050 4050 1050
Wire Wire Line
	3450 1050 3550 1050
Wire Wire Line
	6150 2050 6250 2050
Wire Wire Line
	6450 1700 6550 1700
Wire Wire Line
	6750 1350 6850 1350
Wire Wire Line
	7050 1000 7150 1000
Wire Wire Line
	7550 1000 7650 1000
Wire Wire Line
	7250 1350 7350 1350
Wire Wire Line
	6950 1700 7050 1700
Wire Wire Line
	6650 2050 6750 2050
Wire Wire Line
	1050 5600 1300 5600
Wire Wire Line
	1250 5800 1300 5800
Wire Wire Line
	6800 4550 7050 4550
Wire Wire Line
	7000 4750 7050 4750
Wire Wire Line
	7500 4550 9000 4550
Wire Wire Line
	7700 4750 8800 4750
Wire Wire Line
	1800 5600 3800 5600
Wire Wire Line
	2000 5800 3950 5800
Wire Wire Line
	2550 5400 2600 5400
Wire Wire Line
	2500 5200 2600 5200
Wire Wire Line
	2450 5000 2600 5000
Wire Wire Line
	2400 4800 2600 4800
Wire Wire Line
	2350 4600 2600 4600
Wire Wire Line
	3750 6750 3950 6750
Wire Wire Line
	3950 6750 4650 6750
Wire Wire Line
	4650 6750 4850 6750
Wire Wire Line
	4850 6750 5050 6750
Wire Wire Line
	5050 6750 5250 6750
Wire Wire Line
	5250 6750 5400 6750
Wire Wire Line
	5550 4400 5850 4400
Wire Wire Line
	5300 4400 5550 4400
Wire Wire Line
	4700 4400 5300 4400
Wire Wire Line
	10400 3400 10500 3400
Wire Wire Line
	10150 3400 10400 3400
Wire Wire Line
	9550 3400 10150 3400
Wire Wire Line
	8600 5750 8800 5750
Wire Wire Line
	8800 5750 9500 5750
Wire Wire Line
	9500 5750 9700 5750
Wire Wire Line
	9700 5750 9900 5750
Wire Wire Line
	9900 5750 10100 5750
Wire Wire Line
	10100 5750 10150 5750
Wire Wire Line
	7050 2550 7350 2550
Wire Wire Line
	7350 2550 7650 2550
Wire Wire Line
	7650 2550 8250 2550
Wire Wire Line
	8250 2550 8400 2550
Wire Wire Line
	3450 2600 3750 2600
Wire Wire Line
	3750 2600 4050 2600
Wire Wire Line
	4050 2600 4650 2600
Wire Wire Line
	4650 2600 4800 2600
Wire Wire Line
	8750 4050 8750 4150
Wire Wire Line
	8950 3950 9000 3950
Wire Wire Line
	8250 3950 8300 3950
Wire Wire Line
	8050 4050 8250 4050
$EndSCHEMATC
