EESchema Schematic File Version 2
LIBS:supervisor-rescue
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
LIBS:pro4
LIBS:gsm
LIBS:supervisor-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 4
Title "powerline sensor"
Date "10 mar 2016"
Rev "1"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L CD74HC4046 U7
U 1 1 5733B6EA
P 3225 3625
AR Path="/5733B22E/5733B6EA" Ref="U7"  Part="1" 
AR Path="/573435AB/5733B6EA" Ref="U10"  Part="1" 
AR Path="/57344B95/5733B6EA" Ref="U13"  Part="1" 
F 0 "U10" H 2925 4325 60  0000 C CNN
F 1 "CD74HC4046" H 3175 2725 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-16_7.5x10.3mm_Pitch1.27mm" H 4025 2625 60  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd74hc4046a.pdf" H 4075 2725 60  0001 C CNN
	1    3225 3625
	1    0    0    -1  
$EndComp
NoConn ~ 3775 3475
NoConn ~ 3775 3175
NoConn ~ 3775 3275
NoConn ~ 3775 3375
$Comp
L C_Small C17
U 1 1 5733B6EB
P 3775 4275
AR Path="/5733B22E/5733B6EB" Ref="C17"  Part="1" 
AR Path="/573435AB/5733B6EB" Ref="C28"  Part="1" 
AR Path="/57344B95/5733B6EB" Ref="C39"  Part="1" 
F 0 "C28" H 3785 4345 50  0000 L CNN
F 1 "C_Small" H 3785 4195 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 3775 4275 50  0001 C CNN
F 3 "" H 3775 4275 50  0000 C CNN
	1    3775 4275
	1    0    0    -1  
$EndComp
NoConn ~ 3775 3925
$Comp
L C_Small C9
U 1 1 57356CDE
P 1550 4050
AR Path="/5733B22E/57356CDE" Ref="C9"  Part="1" 
AR Path="/573435AB/57356CDE" Ref="C20"  Part="1" 
AR Path="/57344B95/57356CDE" Ref="C31"  Part="1" 
F 0 "C20" H 1560 4120 50  0000 L CNN
F 1 "C_Small" H 1560 3970 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 1550 4050 50  0001 C CNN
F 3 "" H 1550 4050 50  0000 C CNN
	1    1550 4050
	1    0    0    -1  
$EndComp
$Comp
L R_Small R8
U 1 1 5733B6ED
P 1350 3875
AR Path="/5733B22E/5733B6ED" Ref="R8"  Part="1" 
AR Path="/573435AB/5733B6ED" Ref="R22"  Part="1" 
AR Path="/57344B95/5733B6ED" Ref="R36"  Part="1" 
F 0 "R22" V 1425 3800 50  0000 L CNN
F 1 "10k" V 1275 3800 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 1350 3875 50  0001 C CNN
F 3 "" H 1350 3875 50  0000 C CNN
	1    1350 3875
	0    1    1    0   
$EndComp
$Comp
L R_Small R13
U 1 1 5733B6EE
P 2475 4025
AR Path="/5733B22E/5733B6EE" Ref="R13"  Part="1" 
AR Path="/573435AB/5733B6EE" Ref="R27"  Part="1" 
AR Path="/57344B95/5733B6EE" Ref="R41"  Part="1" 
F 0 "R27" V 2550 3950 50  0000 L CNN
F 1 "R_Small" V 2400 3950 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 2475 4025 50  0001 C CNN
F 3 "" H 2475 4025 50  0000 C CNN
	1    2475 4025
	0    1    1    0   
$EndComp
$Comp
L R_Small R14
U 1 1 5733B6EF
P 2475 4225
AR Path="/5733B22E/5733B6EF" Ref="R14"  Part="1" 
AR Path="/573435AB/5733B6EF" Ref="R28"  Part="1" 
AR Path="/57344B95/5733B6EF" Ref="R42"  Part="1" 
F 0 "R28" V 2550 4150 50  0000 L CNN
F 1 "R_Small" V 2400 4150 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 2475 4225 50  0001 C CNN
F 3 "" H 2475 4225 50  0000 C CNN
	1    2475 4225
	0    1    1    0   
$EndComp
$Comp
L R_Small R15
U 1 1 57356CE5
P 2575 3775
AR Path="/5733B22E/57356CE5" Ref="R15"  Part="1" 
AR Path="/573435AB/57356CE5" Ref="R29"  Part="1" 
AR Path="/57344B95/57356CE5" Ref="R43"  Part="1" 
F 0 "R29" H 2625 3725 50  0000 L CNN
F 1 "10k" H 2625 3800 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 2575 3775 50  0001 C CNN
F 3 "" H 2575 3775 50  0000 C CNN
	1    2575 3775
	0    -1   -1   0   
$EndComp
$Comp
L +3V3 #PWR062
U 1 1 57356CE7
P 2550 3000
AR Path="/5733B22E/57356CE7" Ref="#PWR062"  Part="1" 
AR Path="/573435AB/57356CE7" Ref="#PWR0106"  Part="1" 
AR Path="/57344B95/57356CE7" Ref="#PWR0106"  Part="1" 
F 0 "#PWR0106" H 2550 2850 50  0001 C CNN
F 1 "+3V3" H 2550 3140 50  0000 C CNN
F 2 "" H 2550 3000 50  0000 C CNN
F 3 "" H 2550 3000 50  0000 C CNN
	1    2550 3000
	1    0    0    -1  
$EndComp
$Comp
L R_Small R21
U 1 1 57356CE9
P 5600 7000
AR Path="/5733B22E/57356CE9" Ref="R21"  Part="1" 
AR Path="/573435AB/57356CE9" Ref="R35"  Part="1" 
AR Path="/57344B95/57356CE9" Ref="R49"  Part="1" 
F 0 "R35" H 5630 7020 50  0000 L CNN
F 1 "50k" H 5630 6960 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 5600 7000 50  0001 C CNN
F 3 "" H 5600 7000 50  0000 C CNN
	1    5600 7000
	-1   0    0    1   
$EndComp
$Comp
L R_Small JP3.2
U 1 1 5733B6F3
P 5375 5600
AR Path="/5733B22E/5733B6F3" Ref="JP3.2"  Part="1" 
AR Path="/573435AB/5733B6F3" Ref="JP3.6"  Part="1" 
AR Path="/57344B95/5733B6F3" Ref="JP3.10"  Part="1" 
F 0 "JP3.6" H 5125 5650 50  0000 L CNN
F 1 "R_Small" H 5025 5575 50  0001 L CNN
F 2 "Resistors_SMD:R_0603" H 5375 5600 50  0001 C CNN
F 3 "" H 5375 5600 50  0000 C CNN
	1    5375 5600
	-1   0    0    1   
$EndComp
$Comp
L R_Small R18
U 1 1 5733B6F4
P 3350 6425
AR Path="/5733B22E/5733B6F4" Ref="R18"  Part="1" 
AR Path="/573435AB/5733B6F4" Ref="R32"  Part="1" 
AR Path="/57344B95/5733B6F4" Ref="R46"  Part="1" 
F 0 "R32" H 3380 6445 50  0000 L CNN
F 1 "10k" H 3380 6385 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 3350 6425 50  0001 C CNN
F 3 "" H 3350 6425 50  0000 C CNN
	1    3350 6425
	0    -1   -1   0   
$EndComp
$Comp
L R_Small R19
U 1 1 5733B6F5
P 3700 6675
AR Path="/5733B22E/5733B6F5" Ref="R19"  Part="1" 
AR Path="/573435AB/5733B6F5" Ref="R33"  Part="1" 
AR Path="/57344B95/5733B6F5" Ref="R47"  Part="1" 
F 0 "R33" V 3775 6600 50  0000 L CNN
F 1 "R_Small" V 3625 6600 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 3700 6675 50  0001 C CNN
F 3 "" H 3700 6675 50  0000 C CNN
	1    3700 6675
	0    1    1    0   
$EndComp
$Comp
L R_Small R20
U 1 1 5733B6F6
P 3700 6875
AR Path="/5733B22E/5733B6F6" Ref="R20"  Part="1" 
AR Path="/573435AB/5733B6F6" Ref="R34"  Part="1" 
AR Path="/57344B95/5733B6F6" Ref="R48"  Part="1" 
F 0 "R34" V 3775 6800 50  0000 L CNN
F 1 "R_Small" V 3625 6800 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 3700 6875 50  0001 C CNN
F 3 "" H 3700 6875 50  0000 C CNN
	1    3700 6875
	0    1    1    0   
$EndComp
$Comp
L C_Small C18
U 1 1 5733B6F7
P 5000 6925
AR Path="/5733B22E/5733B6F7" Ref="C18"  Part="1" 
AR Path="/573435AB/5733B6F7" Ref="C29"  Part="1" 
AR Path="/57344B95/5733B6F7" Ref="C40"  Part="1" 
F 0 "C29" H 5025 6850 50  0000 L CNN
F 1 "C_Small" H 5025 7000 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 5000 6925 50  0001 C CNN
F 3 "" H 5000 6925 50  0000 C CNN
	1    5000 6925
	1    0    0    -1  
$EndComp
$Comp
L R_Small R16
U 1 1 5733B6F8
P 2600 6525
AR Path="/5733B22E/5733B6F8" Ref="R16"  Part="1" 
AR Path="/573435AB/5733B6F8" Ref="R30"  Part="1" 
AR Path="/57344B95/5733B6F8" Ref="R44"  Part="1" 
F 0 "R30" V 2525 6375 50  0000 L CNN
F 1 "R_Small" V 2675 6300 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 2600 6525 50  0001 C CNN
F 3 "" H 2600 6525 50  0000 C CNN
	1    2600 6525
	0    -1   -1   0   
$EndComp
Text Label 2500 6525 2    60   ~ 0
VCOin2
Text Label 5375 5350 2    60   ~ 0
VCOin2
Text Label 5775 6425 2    60   ~ 0
JP2
Text Label 3900 6025 2    60   ~ 0
JP2
$Comp
L R_Small JP3.3
U 1 1 5733B6F9
P 5750 5600
AR Path="/5733B22E/5733B6F9" Ref="JP3.3"  Part="1" 
AR Path="/573435AB/5733B6F9" Ref="JP3.7"  Part="1" 
AR Path="/57344B95/5733B6F9" Ref="JP3.11"  Part="1" 
F 0 "JP3.7" H 5800 5550 50  0000 L CNN
F 1 "R_Small" H 5800 5625 50  0001 L CNN
F 2 "Resistors_SMD:R_0603" H 5750 5600 50  0001 C CNN
F 3 "" H 5750 5600 50  0000 C CNN
	1    5750 5600
	1    0    0    -1  
$EndComp
$Comp
L R_Small JP3.4
U 1 1 5733B6FA
P 6125 5600
AR Path="/5733B22E/5733B6FA" Ref="JP3.4"  Part="1" 
AR Path="/573435AB/5733B6FA" Ref="JP3.8"  Part="1" 
AR Path="/57344B95/5733B6FA" Ref="JP3.12"  Part="1" 
F 0 "JP3.8" H 6175 5550 50  0000 L CNN
F 1 "R_Small" H 6175 5625 50  0001 L CNN
F 2 "Resistors_SMD:R_0603" H 6125 5600 50  0001 C CNN
F 3 "" H 6125 5600 50  0000 C CNN
	1    6125 5600
	1    0    0    -1  
$EndComp
NoConn ~ 5000 6125
$Comp
L C_Small C14
U 1 1 5733B6FB
P 2800 6775
AR Path="/5733B22E/5733B6FB" Ref="C14"  Part="1" 
AR Path="/573435AB/5733B6FB" Ref="C25"  Part="1" 
AR Path="/57344B95/5733B6FB" Ref="C36"  Part="1" 
F 0 "C25" H 2825 6700 50  0000 L CNN
F 1 "C_Small" H 2825 6850 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 2800 6775 50  0001 C CNN
F 3 "" H 2800 6775 50  0000 C CNN
	1    2800 6775
	1    0    0    -1  
$EndComp
Text Notes 4775 4750 0    60   ~ 0
Transmitter
Text Notes 6550 7775 0    60   ~ 0
Reciever
Text Label 950  3875 0    60   ~ 0
TX2_in
Text Label 1150 6150 0    60   ~ 0
coupling2
Text Label 3775 3775 0    60   ~ 0
coupling2
$Comp
L POT RV1
U 1 1 57356CFD
P 2025 4475
AR Path="/5733B22E/57356CFD" Ref="RV1"  Part="1" 
AR Path="/573435AB/57356CFD" Ref="RV3"  Part="1" 
AR Path="/57344B95/57356CFD" Ref="RV5"  Part="1" 
F 0 "RV3" H 2025 4375 50  0000 C CNN
F 1 "POT" H 2025 4475 50  0000 C CNN
F 2 "pro4:EVM-1USX30B14_poti" H 2025 4475 50  0001 C CNN
F 3 "" H 2025 4475 50  0000 C CNN
	1    2025 4475
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR063
U 1 1 57356CFF
P 1875 4475
AR Path="/5733B22E/57356CFF" Ref="#PWR063"  Part="1" 
AR Path="/573435AB/57356CFF" Ref="#PWR0107"  Part="1" 
AR Path="/57344B95/57356CFF" Ref="#PWR0107"  Part="1" 
F 0 "#PWR0107" H 1875 4225 50  0001 C CNN
F 1 "GND" H 1875 4325 50  0000 C CNN
F 2 "" H 1875 4475 50  0000 C CNN
F 3 "" H 1875 4475 50  0000 C CNN
	1    1875 4475
	1    0    0    -1  
$EndComp
NoConn ~ 2025 4725
$Comp
L POT RV2
U 1 1 57356D02
P 3200 7125
AR Path="/5733B22E/57356D02" Ref="RV2"  Part="1" 
AR Path="/573435AB/57356D02" Ref="RV4"  Part="1" 
AR Path="/57344B95/57356D02" Ref="RV6"  Part="1" 
F 0 "RV4" H 3200 7025 50  0000 C CNN
F 1 "POT" H 3200 7125 50  0000 C CNN
F 2 "pro4:EVM-1USX30B14_poti" H 3200 7125 50  0001 C CNN
F 3 "" H 3200 7125 50  0000 C CNN
	1    3200 7125
	0    -1   1    0   
$EndComp
Text Label 5450 6575 0    60   ~ 0
RX2_out
Text Notes 4650 2375 0    60   ~ 0
Interface
$Comp
L OPA376AIDCK U6
U 1 1 5733B6FF
P 2475 5625
AR Path="/5733B22E/5733B6FF" Ref="U6"  Part="1" 
AR Path="/573435AB/5733B6FF" Ref="U9"  Part="1" 
AR Path="/57344B95/5733B6FF" Ref="U12"  Part="1" 
F 0 "U9" H 2475 5825 50  0000 C CNN
F 1 "OPA376AIDCK" H 2675 5425 50  0001 C CNN
F 2 "TO_SOT_Packages_SMD:SC-70-6" H 2425 5325 50  0001 L CNN
F 3 "" H 2525 5825 50  0000 C CNN
	1    2475 5625
	1    0    0    -1  
$EndComp
$Comp
L C_Small C11
U 1 1 5733B700
P 2200 5150
AR Path="/5733B22E/5733B700" Ref="C11"  Part="1" 
AR Path="/573435AB/5733B700" Ref="C22"  Part="1" 
AR Path="/57344B95/5733B700" Ref="C33"  Part="1" 
F 0 "C22" V 2325 5125 50  0000 L CNN
F 1 "0.1u" V 2100 5050 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 2200 5150 50  0001 C CNN
F 3 "" H 2200 5150 50  0000 C CNN
	1    2200 5150
	0    1    1    0   
$EndComp
$Comp
L C_Small C13
U 1 1 57356D07
P 2550 5150
AR Path="/5733B22E/57356D07" Ref="C13"  Part="1" 
AR Path="/573435AB/57356D07" Ref="C24"  Part="1" 
AR Path="/57344B95/57356D07" Ref="C35"  Part="1" 
F 0 "C24" V 2675 5125 50  0000 L CNN
F 1 "1u" V 2450 5100 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 2550 5150 50  0001 C CNN
F 3 "" H 2550 5150 50  0000 C CNN
	1    2550 5150
	0    1    1    0   
$EndComp
$Comp
L C_Small C8
U 1 1 57356D0A
P 1450 5525
AR Path="/5733B22E/57356D0A" Ref="C8"  Part="1" 
AR Path="/573435AB/57356D0A" Ref="C19"  Part="1" 
AR Path="/57344B95/57356D0A" Ref="C30"  Part="1" 
F 0 "C19" V 1400 5550 50  0000 L CNN
F 1 "C_Small" V 1500 5200 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 1450 5525 50  0001 C CNN
F 3 "" H 1450 5525 50  0000 C CNN
	1    1450 5525
	0    1    1    0   
$EndComp
$Comp
L GND #PWR064
U 1 1 57356D0C
P 2100 5275
AR Path="/5733B22E/57356D0C" Ref="#PWR064"  Part="1" 
AR Path="/573435AB/57356D0C" Ref="#PWR0108"  Part="1" 
AR Path="/57344B95/57356D0C" Ref="#PWR0108"  Part="1" 
F 0 "#PWR0108" H 2100 5025 50  0001 C CNN
F 1 "GND" H 2100 5125 50  0000 C CNN
F 2 "" H 2100 5275 50  0000 C CNN
F 3 "" H 2100 5275 50  0000 C CNN
	1    2100 5275
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR065
U 1 1 5733B704
P 2650 5275
AR Path="/5733B22E/5733B704" Ref="#PWR065"  Part="1" 
AR Path="/573435AB/5733B704" Ref="#PWR0109"  Part="1" 
AR Path="/57344B95/5733B704" Ref="#PWR0109"  Part="1" 
F 0 "#PWR0109" H 2650 5025 50  0001 C CNN
F 1 "GND" H 2650 5125 50  0000 C CNN
F 2 "" H 2650 5275 50  0000 C CNN
F 3 "" H 2650 5275 50  0000 C CNN
	1    2650 5275
	1    0    0    -1  
$EndComp
$Comp
L R_Small R10
U 1 1 57356D10
P 1675 5225
AR Path="/5733B22E/57356D10" Ref="R10"  Part="1" 
AR Path="/573435AB/57356D10" Ref="R24"  Part="1" 
AR Path="/57344B95/57356D10" Ref="R38"  Part="1" 
F 0 "R24" H 1550 5250 50  0000 L CNN
F 1 "100k" H 1450 5175 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 1675 5225 50  0001 C CNN
F 3 "" H 1675 5225 50  0000 C CNN
	1    1675 5225
	1    0    0    -1  
$EndComp
$Comp
L R_Small R11
U 1 1 57356D11
P 1675 5825
AR Path="/5733B22E/57356D11" Ref="R11"  Part="1" 
AR Path="/573435AB/57356D11" Ref="R25"  Part="1" 
AR Path="/57344B95/57356D11" Ref="R39"  Part="1" 
F 0 "R25" H 1550 5850 50  0000 L CNN
F 1 "100k" H 1450 5775 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 1675 5825 50  0001 C CNN
F 3 "" H 1675 5825 50  0000 C CNN
	1    1675 5825
	1    0    0    -1  
$EndComp
$Comp
L C_Small C15
U 1 1 57356D13
P 3225 5625
AR Path="/5733B22E/57356D13" Ref="C15"  Part="1" 
AR Path="/573435AB/57356D13" Ref="C26"  Part="1" 
AR Path="/57344B95/57356D13" Ref="C37"  Part="1" 
F 0 "C26" V 3175 5675 50  0000 L CNN
F 1 "C_Small" V 3175 5300 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 3225 5625 50  0001 C CNN
F 3 "" H 3225 5625 50  0000 C CNN
	1    3225 5625
	0    1    1    0   
$EndComp
$Comp
L R_Small R17
U 1 1 57356D15
P 2750 6125
AR Path="/5733B22E/57356D15" Ref="R17"  Part="1" 
AR Path="/573435AB/57356D15" Ref="R31"  Part="1" 
AR Path="/57344B95/57356D15" Ref="R45"  Part="1" 
F 0 "R31" V 2825 6050 50  0000 L CNN
F 1 "R_Small" V 2675 6050 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 2750 6125 50  0001 C CNN
F 3 "" H 2750 6125 50  0000 C CNN
	1    2750 6125
	0    1    1    0   
$EndComp
$Comp
L R_Small R12
U 1 1 5733B709
P 2000 6250
AR Path="/5733B22E/5733B709" Ref="R12"  Part="1" 
AR Path="/573435AB/5733B709" Ref="R26"  Part="1" 
AR Path="/57344B95/5733B709" Ref="R40"  Part="1" 
F 0 "R26" H 2030 6270 50  0000 L CNN
F 1 "R_Small" H 2030 6210 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 2000 6250 50  0001 C CNN
F 3 "" H 2000 6250 50  0000 C CNN
	1    2000 6250
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR066
U 1 1 57356D1A
P 1675 5925
AR Path="/5733B22E/57356D1A" Ref="#PWR066"  Part="1" 
AR Path="/573435AB/57356D1A" Ref="#PWR0110"  Part="1" 
AR Path="/57344B95/57356D1A" Ref="#PWR0110"  Part="1" 
F 0 "#PWR0110" H 1675 5675 50  0001 C CNN
F 1 "GND" H 1675 5775 50  0000 C CNN
F 2 "" H 1675 5925 50  0000 C CNN
F 3 "" H 1675 5925 50  0000 C CNN
	1    1675 5925
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR067
U 1 1 57356D1C
P 2375 5000
AR Path="/5733B22E/57356D1C" Ref="#PWR067"  Part="1" 
AR Path="/573435AB/57356D1C" Ref="#PWR0111"  Part="1" 
AR Path="/57344B95/57356D1C" Ref="#PWR0111"  Part="1" 
F 0 "#PWR0111" H 2375 4850 50  0001 C CNN
F 1 "+3V3" H 2375 5140 50  0000 C CNN
F 2 "" H 2375 5000 50  0000 C CNN
F 3 "" H 2375 5000 50  0000 C CNN
	1    2375 5000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR068
U 1 1 5733B70C
P 2375 5925
AR Path="/5733B22E/5733B70C" Ref="#PWR068"  Part="1" 
AR Path="/573435AB/5733B70C" Ref="#PWR0112"  Part="1" 
AR Path="/57344B95/5733B70C" Ref="#PWR0112"  Part="1" 
F 0 "#PWR0112" H 2375 5675 50  0001 C CNN
F 1 "GND" H 2375 5775 50  0000 C CNN
F 2 "" H 2375 5925 50  0000 C CNN
F 3 "" H 2375 5925 50  0000 C CNN
	1    2375 5925
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR069
U 1 1 57356D20
P 2000 6750
AR Path="/5733B22E/57356D20" Ref="#PWR069"  Part="1" 
AR Path="/573435AB/57356D20" Ref="#PWR0113"  Part="1" 
AR Path="/57344B95/57356D20" Ref="#PWR0113"  Part="1" 
F 0 "#PWR0113" H 2000 6500 50  0001 C CNN
F 1 "GND" H 2000 6600 50  0000 C CNN
F 2 "" H 2000 6750 50  0000 C CNN
F 3 "" H 2000 6750 50  0000 C CNN
	1    2000 6750
	1    0    0    -1  
$EndComp
$Comp
L C_Small C10
U 1 1 57356D22
P 2000 6550
AR Path="/5733B22E/57356D22" Ref="C10"  Part="1" 
AR Path="/573435AB/57356D22" Ref="C21"  Part="1" 
AR Path="/57344B95/57356D22" Ref="C32"  Part="1" 
F 0 "C21" H 2010 6620 50  0000 L CNN
F 1 "C_Small" H 2010 6470 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 2000 6550 50  0001 C CNN
F 3 "" H 2000 6550 50  0000 C CNN
	1    2000 6550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR070
U 1 1 5733B70F
P 1050 5525
AR Path="/5733B22E/5733B70F" Ref="#PWR070"  Part="1" 
AR Path="/573435AB/5733B70F" Ref="#PWR0114"  Part="1" 
AR Path="/57344B95/5733B70F" Ref="#PWR0114"  Part="1" 
F 0 "#PWR0114" H 1050 5275 50  0001 C CNN
F 1 "GND" H 1050 5375 50  0000 C CNN
F 2 "" H 1050 5525 50  0000 C CNN
F 3 "" H 1050 5525 50  0000 C CNN
	1    1050 5525
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR071
U 1 1 5733B710
P 5600 7325
AR Path="/5733B22E/5733B710" Ref="#PWR071"  Part="1" 
AR Path="/573435AB/5733B710" Ref="#PWR0115"  Part="1" 
AR Path="/57344B95/5733B710" Ref="#PWR0115"  Part="1" 
F 0 "#PWR0115" H 5600 7075 50  0001 C CNN
F 1 "GND" H 5600 7175 50  0000 C CNN
F 2 "" H 5600 7325 50  0000 C CNN
F 3 "" H 5600 7325 50  0000 C CNN
	1    5600 7325
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR072
U 1 1 57356D27
P 2800 7125
AR Path="/5733B22E/57356D27" Ref="#PWR072"  Part="1" 
AR Path="/573435AB/57356D27" Ref="#PWR0116"  Part="1" 
AR Path="/57344B95/57356D27" Ref="#PWR0116"  Part="1" 
F 0 "#PWR0116" H 2800 6875 50  0001 C CNN
F 1 "GND" H 2800 6975 50  0000 C CNN
F 2 "" H 2800 7125 50  0000 C CNN
F 3 "" H 2800 7125 50  0000 C CNN
	1    2800 7125
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR073
U 1 1 57356D29
P 1550 4150
AR Path="/5733B22E/57356D29" Ref="#PWR073"  Part="1" 
AR Path="/573435AB/57356D29" Ref="#PWR0117"  Part="1" 
AR Path="/57344B95/57356D29" Ref="#PWR0117"  Part="1" 
F 0 "#PWR0117" H 1550 3900 50  0001 C CNN
F 1 "GND" H 1550 4000 50  0000 C CNN
F 2 "" H 1550 4150 50  0000 C CNN
F 3 "" H 1550 4150 50  0000 C CNN
	1    1550 4150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR074
U 1 1 5733B713
P 2025 4025
AR Path="/5733B22E/5733B713" Ref="#PWR074"  Part="1" 
AR Path="/573435AB/5733B713" Ref="#PWR0118"  Part="1" 
AR Path="/57344B95/5733B713" Ref="#PWR0118"  Part="1" 
F 0 "#PWR0118" H 2025 3775 50  0001 C CNN
F 1 "GND" H 2025 3875 50  0000 C CNN
F 2 "" H 2025 4025 50  0000 C CNN
F 3 "" H 2025 4025 50  0000 C CNN
	1    2025 4025
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR075
U 1 1 5733B714
P 2675 3475
AR Path="/5733B22E/5733B714" Ref="#PWR075"  Part="1" 
AR Path="/573435AB/5733B714" Ref="#PWR0119"  Part="1" 
AR Path="/57344B95/5733B714" Ref="#PWR0119"  Part="1" 
F 0 "#PWR0119" H 2675 3225 50  0001 C CNN
F 1 "GND" H 2675 3325 50  0000 C CNN
F 2 "" H 2675 3475 50  0000 C CNN
F 3 "" H 2675 3475 50  0000 C CNN
	1    2675 3475
	1    0    0    -1  
$EndComp
$Comp
L C_Small C12
U 1 1 5733B715
P 2550 3175
AR Path="/5733B22E/5733B715" Ref="C12"  Part="1" 
AR Path="/573435AB/5733B715" Ref="C23"  Part="1" 
AR Path="/57344B95/5733B715" Ref="C34"  Part="1" 
F 0 "C23" H 2560 3245 50  0000 L CNN
F 1 "100n" H 2560 3095 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 2550 3175 60  0001 C CNN
F 3 "" H 2550 3175 60  0000 C CNN
	1    2550 3175
	1    0    0    -1  
$EndComp
$Comp
L C_Small C16
U 1 1 5733B716
P 3700 5725
AR Path="/5733B22E/5733B716" Ref="C16"  Part="1" 
AR Path="/573435AB/5733B716" Ref="C27"  Part="1" 
AR Path="/57344B95/5733B716" Ref="C38"  Part="1" 
F 0 "C27" H 3710 5795 50  0000 L CNN
F 1 "100n" H 3710 5645 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 3700 5725 60  0001 C CNN
F 3 "" H 3700 5725 60  0000 C CNN
	1    3700 5725
	0    1    1    0   
$EndComp
$Comp
L GND #PWR076
U 1 1 57356D33
P 3600 5725
AR Path="/5733B22E/57356D33" Ref="#PWR076"  Part="1" 
AR Path="/573435AB/57356D33" Ref="#PWR0120"  Part="1" 
AR Path="/57344B95/57356D33" Ref="#PWR0120"  Part="1" 
F 0 "#PWR0120" H 3600 5475 50  0001 C CNN
F 1 "GND" H 3600 5575 50  0000 C CNN
F 2 "" H 3600 5725 60  0000 C CNN
F 3 "" H 3600 5725 60  0000 C CNN
	1    3600 5725
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR077
U 1 1 57356D36
P 2275 4375
AR Path="/5733B22E/57356D36" Ref="#PWR077"  Part="1" 
AR Path="/573435AB/57356D36" Ref="#PWR0121"  Part="1" 
AR Path="/57344B95/57356D36" Ref="#PWR0121"  Part="1" 
F 0 "#PWR0121" H 2275 4125 50  0001 C CNN
F 1 "GND" H 2275 4225 50  0000 C CNN
F 2 "" H 2275 4375 50  0000 C CNN
F 3 "" H 2275 4375 50  0000 C CNN
	1    2275 4375
	1    0    0    -1  
$EndComp
$Comp
L R_Small R9
U 1 1 57356D37
P 1550 3575
AR Path="/5733B22E/57356D37" Ref="R9"  Part="1" 
AR Path="/573435AB/57356D37" Ref="R23"  Part="1" 
AR Path="/57344B95/57356D37" Ref="R37"  Part="1" 
F 0 "R23" H 1580 3595 50  0000 L CNN
F 1 "100k" H 1580 3535 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 1550 3575 50  0001 C CNN
F 3 "" H 1550 3575 50  0000 C CNN
	1    1550 3575
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR078
U 1 1 57356D39
P 1550 3475
AR Path="/5733B22E/57356D39" Ref="#PWR078"  Part="1" 
AR Path="/573435AB/57356D39" Ref="#PWR0122"  Part="1" 
AR Path="/57344B95/57356D39" Ref="#PWR0122"  Part="1" 
F 0 "#PWR0122" H 1550 3325 50  0001 C CNN
F 1 "+3.3V" H 1550 3615 50  0000 C CNN
F 2 "" H 1550 3475 50  0000 C CNN
F 3 "" H 1550 3475 50  0000 C CNN
	1    1550 3475
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR079
U 1 1 57356D3C
P 3525 7025
AR Path="/5733B22E/57356D3C" Ref="#PWR079"  Part="1" 
AR Path="/573435AB/57356D3C" Ref="#PWR0123"  Part="1" 
AR Path="/57344B95/57356D3C" Ref="#PWR0123"  Part="1" 
F 0 "#PWR0123" H 3525 6775 50  0001 C CNN
F 1 "GND" H 3525 6875 50  0000 C CNN
F 2 "" H 3525 7025 50  0000 C CNN
F 3 "" H 3525 7025 50  0000 C CNN
	1    3525 7025
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR080
U 1 1 57356D3D
P 3250 6700
AR Path="/5733B22E/57356D3D" Ref="#PWR080"  Part="1" 
AR Path="/573435AB/57356D3D" Ref="#PWR0124"  Part="1" 
AR Path="/57344B95/57356D3D" Ref="#PWR0124"  Part="1" 
F 0 "#PWR0124" H 3250 6450 50  0001 C CNN
F 1 "GND" H 3250 6550 50  0000 C CNN
F 2 "" H 3250 6700 50  0000 C CNN
F 3 "" H 3250 6700 50  0000 C CNN
	1    3250 6700
	1    0    0    -1  
$EndComp
NoConn ~ 3200 7375
$Comp
L +3V3 #PWR081
U 1 1 57356D3F
P 3850 5650
AR Path="/5733B22E/57356D3F" Ref="#PWR081"  Part="1" 
AR Path="/573435AB/57356D3F" Ref="#PWR0125"  Part="1" 
AR Path="/57344B95/57356D3F" Ref="#PWR0125"  Part="1" 
F 0 "#PWR0125" H 3850 5500 50  0001 C CNN
F 1 "+3V3" H 3850 5790 50  0000 C CNN
F 2 "" H 3850 5650 50  0000 C CNN
F 3 "" H 3850 5650 50  0000 C CNN
	1    3850 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2775 5625 3125 5625
Connection ~ 1675 5525
Wire Wire Line
	1675 5325 1675 5725
Wire Wire Line
	2650 5150 2650 5275
Connection ~ 2375 5150
Wire Wire Line
	2300 5150 2450 5150
Wire Wire Line
	2100 5150 2100 5275
Wire Wire Line
	1350 5525 1050 5525
Wire Wire Line
	3375 5625 3375 6125
Wire Wire Line
	3375 6125 3900 6125
Wire Wire Line
	3775 3775 4125 3775
Wire Wire Line
	1450 3875 2675 3875
Wire Wire Line
	2025 4025 2375 4025
Wire Wire Line
	2025 4225 2375 4225
Wire Wire Line
	2275 4375 2675 4375
Wire Wire Line
	1550 3675 1550 3950
Connection ~ 1550 3875
Wire Wire Line
	950  3875 1250 3875
Wire Wire Line
	2675 4025 2575 4025
Wire Wire Line
	2575 4225 2675 4225
Wire Wire Line
	5600 7100 5600 7325
Wire Wire Line
	3900 6425 3450 6425
Wire Wire Line
	5000 6575 5750 6575
Wire Wire Line
	5600 6575 5600 6900
Connection ~ 5600 6575
Wire Wire Line
	3900 6675 3800 6675
Wire Wire Line
	3800 6875 3900 6875
Wire Wire Line
	3250 6675 3600 6675
Wire Wire Line
	3200 6875 3600 6875
Wire Wire Line
	5200 6425 5775 6425
Wire Wire Line
	5375 5350 5375 5500
Wire Wire Line
	5375 5700 5375 5825
Wire Wire Line
	5375 5825 5000 5825
Wire Wire Line
	5750 5700 5750 6025
Wire Wire Line
	5750 6025 5000 6025
Wire Wire Line
	6125 5700 6125 5925
Wire Wire Line
	6125 5925 5000 5925
Wire Wire Line
	2700 6525 3900 6525
Wire Wire Line
	5375 5425 6125 5425
Wire Wire Line
	6125 5425 6125 5500
Connection ~ 5375 5425
Wire Wire Line
	5750 5500 5750 5425
Connection ~ 5750 5425
Wire Wire Line
	2800 6675 2800 6525
Connection ~ 2800 6525
Wire Wire Line
	3375 5625 3325 5625
Wire Wire Line
	2850 6125 3050 6125
Wire Wire Line
	3050 6125 3050 5625
Connection ~ 3050 5625
Wire Wire Line
	2650 6125 2000 6125
Wire Wire Line
	2000 5725 2000 6150
Wire Wire Line
	2175 5725 2000 5725
Connection ~ 2000 6125
Wire Wire Line
	1850 6150 1150 6150
Wire Wire Line
	1550 5525 2175 5525
Connection ~ 1850 5525
Wire Wire Line
	1850 5525 1850 6150
Wire Wire Line
	2000 6350 2000 6450
Wire Wire Line
	2000 6650 2000 6750
Wire Wire Line
	2375 5000 2375 5325
Wire Wire Line
	1675 5000 1675 5125
Connection ~ 2375 5000
Wire Wire Line
	2550 3000 2550 3075
Wire Wire Line
	2550 3075 2675 3075
Wire Wire Line
	2550 3275 2550 3475
Wire Wire Line
	2550 3475 2675 3475
Connection ~ 2550 3075
Connection ~ 2675 3475
Wire Wire Line
	2675 3475 2675 3375
Wire Wire Line
	2475 3775 2025 3775
Wire Wire Line
	2025 3775 2025 4025
Connection ~ 2025 4025
Wire Wire Line
	3800 5725 3900 5725
Wire Wire Line
	2375 5000 1675 5000
Wire Wire Line
	3900 7025 3525 7025
Wire Wire Line
	3050 7125 2800 7125
Wire Wire Line
	2800 7125 2800 6875
Wire Wire Line
	3250 6425 3250 6700
Connection ~ 3250 6675
Wire Wire Line
	3850 5650 3850 5725
Connection ~ 3850 5725
Connection ~ 2800 7125
$Comp
L CD74HC4046 U8
U 1 1 57356D41
P 4450 6275
AR Path="/5733B22E/57356D41" Ref="U8"  Part="1" 
AR Path="/573435AB/57356D41" Ref="U11"  Part="1" 
AR Path="/57344B95/57356D41" Ref="U14"  Part="1" 
F 0 "U11" H 4150 6975 60  0000 C CNN
F 1 "CD74HC4046" H 4400 5375 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-16_7.5x10.3mm_Pitch1.27mm" H 5250 5275 60  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd74hc4046a.pdf" H 5300 5375 60  0001 C CNN
	1    4450 6275
	1    0    0    -1  
$EndComp
$Comp
L R_Small JP3.1
U 1 1 57356D43
P 5100 6425
AR Path="/5733B22E/57356D43" Ref="JP3.1"  Part="1" 
AR Path="/573435AB/57356D43" Ref="JP3.5"  Part="1" 
AR Path="/57344B95/57356D43" Ref="JP3.9"  Part="1" 
F 0 "JP3.5" H 4850 6475 50  0000 L CNN
F 1 "R_Small" H 4750 6400 50  0001 L CNN
F 2 "Resistors_SMD:R_0603" H 5100 6425 50  0001 C CNN
F 3 "" H 5100 6425 50  0000 C CNN
	1    5100 6425
	0    -1   -1   0   
$EndComp
Text HLabel 3400 800  2    60   Input ~ 0
coupling2
Text HLabel 3450 1500 2    60   Input ~ 0
GND
Text HLabel 3450 1350 2    60   Input ~ 0
+3.3V
Text HLabel 3400 1000 2    60   Input ~ 0
outgoing2
Text HLabel 3400 1100 2    60   Input ~ 0
incoming2
Wire Notes Line
	475  4800 11225 4800
Wire Notes Line
	475  2475 11225 2475
Text Label 2925 1000 0    60   ~ 0
TX2_in
Text Label 2925 1100 0    60   ~ 0
RX2_out
Text Label 2925 800  0    60   ~ 0
coupling2
Wire Wire Line
	2925 800  3400 800 
Wire Wire Line
	2925 1000 3400 1000
Wire Wire Line
	3400 1100 2925 1100
$Comp
L +3V3 #PWR082
U 1 1 57356D46
P 3300 1300
AR Path="/5733B22E/57356D46" Ref="#PWR082"  Part="1" 
AR Path="/573435AB/57356D46" Ref="#PWR0126"  Part="1" 
AR Path="/57344B95/57356D46" Ref="#PWR0126"  Part="1" 
F 0 "#PWR0126" H 3300 1150 50  0001 C CNN
F 1 "+3V3" H 3300 1440 50  0000 C CNN
F 2 "" H 3300 1300 50  0000 C CNN
F 3 "" H 3300 1300 50  0000 C CNN
	1    3300 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 1350 3300 1350
Wire Wire Line
	3300 1350 3300 1300
$Comp
L GND #PWR083
U 1 1 57356D47
P 3300 1550
AR Path="/5733B22E/57356D47" Ref="#PWR083"  Part="1" 
AR Path="/573435AB/57356D47" Ref="#PWR0127"  Part="1" 
AR Path="/57344B95/57356D47" Ref="#PWR0127"  Part="1" 
F 0 "#PWR0127" H 3300 1300 50  0001 C CNN
F 1 "GND" H 3300 1400 50  0000 C CNN
F 2 "" H 3300 1550 50  0000 C CNN
F 3 "" H 3300 1550 50  0000 C CNN
	1    3300 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 1500 3300 1500
Wire Wire Line
	3300 1500 3300 1550
Wire Wire Line
	3200 6975 3200 6875
Wire Wire Line
	2025 4225 2025 4325
$EndSCHEMATC
