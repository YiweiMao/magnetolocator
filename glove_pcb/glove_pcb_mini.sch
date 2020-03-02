EESchema Schematic File Version 4
LIBS:glove_pcb_mini-cache
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
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
L MCU_Module:Arduino_Nano_v3.x A1
U 1 1 5DD184DB
P 8850 4900
F 0 "A1" V 8896 3856 50  0000 R CNN
F 1 "Arduino_Nano_v3.x" V 8805 3856 50  0000 R CNN
F 2 "Module:Arduino_Nano" H 9000 3950 50  0001 L CNN
F 3 "http://www.mouser.com/pdfdocs/Gravitech_Arduino_Nano3_0.pdf" H 8850 3900 50  0001 C CNN
	1    8850 4900
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR040
U 1 1 5DD2759B
P 10300 4800
F 0 "#PWR040" H 10300 4550 50  0001 C CNN
F 1 "GND" H 10305 4627 50  0000 C CNN
F 2 "" H 10300 4800 50  0001 C CNN
F 3 "" H 10300 4800 50  0001 C CNN
	1    10300 4800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR018
U 1 1 5DD283F4
P 6400 6300
F 0 "#PWR018" H 6400 6050 50  0001 C CNN
F 1 "GND" V 6405 6172 50  0000 R CNN
F 2 "" H 6400 6300 50  0001 C CNN
F 3 "" H 6400 6300 50  0001 C CNN
	1    6400 6300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6400 6300 6100 6300
Wire Wire Line
	7850 4700 7250 4700
Wire Wire Line
	10300 4800 9850 4800
$Comp
L power:VCC #PWR029
U 1 1 5E125B11
P 7850 5200
F 0 "#PWR029" H 7850 5050 50  0001 C CNN
F 1 "VCC" H 7868 5373 50  0000 C CNN
F 2 "" H 7850 5200 50  0001 C CNN
F 3 "" H 7850 5200 50  0001 C CNN
	1    7850 5200
	-1   0    0    1   
$EndComp
Wire Wire Line
	7850 5000 7850 5200
$Comp
L Connector:Barrel_Jack J1
U 1 1 5E134734
P 8550 9400
F 0 "J1" H 8607 9725 50  0000 C CNN
F 1 "Barrel_Jack" H 8607 9634 50  0000 C CNN
F 2 "Connector_BarrelJack:BarrelJack_CUI_PJ-102AH_Horizontal" H 8600 9360 50  0001 C CNN
F 3 "~" H 8600 9360 50  0001 C CNN
	1    8550 9400
	0    -1   -1   0   
$EndComp
$Comp
L power:VCC #PWR053
U 1 1 5E13676F
P 8450 8900
F 0 "#PWR053" H 8450 8750 50  0001 C CNN
F 1 "VCC" V 8467 9028 50  0000 L CNN
F 2 "" H 8450 8900 50  0001 C CNN
F 3 "" H 8450 8900 50  0001 C CNN
	1    8450 8900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR054
U 1 1 5E137B13
P 8650 8900
F 0 "#PWR054" H 8650 8650 50  0001 C CNN
F 1 "GND" V 8655 8772 50  0000 R CNN
F 2 "" H 8650 8900 50  0001 C CNN
F 3 "" H 8650 8900 50  0001 C CNN
	1    8650 8900
	-1   0    0    1   
$EndComp
Wire Wire Line
	8450 9100 8450 8900
Wire Wire Line
	8650 9100 8650 8900
$Comp
L Transistor_BJT:PN2222A Q4
U 1 1 5E2D8DEE
P 8450 7000
F 0 "Q4" H 8640 7046 50  0000 L CNN
F 1 "PN2222A" H 8640 6955 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 8650 6925 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/PN/PN2222A.pdf" H 8450 7000 50  0001 L CNN
	1    8450 7000
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R4
U 1 1 5E361AA4
P 8450 6550
F 0 "R4" H 8518 6596 50  0000 L CNN
F 1 "220" H 8518 6505 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 8450 6550 50  0001 C CNN
F 3 "~" H 8450 6550 50  0001 C CNN
	1    8450 6550
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R8
U 1 1 5E3627E3
P 9100 6550
F 0 "R8" H 9168 6596 50  0000 L CNN
F 1 "220" H 9168 6505 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 9100 6550 50  0001 C CNN
F 3 "~" H 9100 6550 50  0001 C CNN
	1    9100 6550
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R10
U 1 1 5E36AE94
P 9700 6550
F 0 "R10" H 9768 6596 50  0000 L CNN
F 1 "220" H 9768 6505 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 9700 6550 50  0001 C CNN
F 3 "~" H 9700 6550 50  0001 C CNN
	1    9700 6550
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:PN2222A Q6
U 1 1 5E38F8F5
P 9100 7000
F 0 "Q6" H 9290 7046 50  0000 L CNN
F 1 "PN2222A" H 9290 6955 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 9300 6925 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/PN/PN2222A.pdf" H 9100 7000 50  0001 L CNN
	1    9100 7000
	0    1    1    0   
$EndComp
$Comp
L Transistor_BJT:PN2222A Q8
U 1 1 5E398381
P 9700 7000
F 0 "Q8" H 9890 7046 50  0000 L CNN
F 1 "PN2222A" H 9890 6955 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 9900 6925 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/PN/PN2222A.pdf" H 9700 7000 50  0001 L CNN
	1    9700 7000
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R11
U 1 1 5E3FEF6B
P 9900 7300
F 0 "R11" H 9968 7346 50  0000 L CNN
F 1 "10" H 9968 7255 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 9900 7300 50  0001 C CNN
F 3 "~" H 9900 7300 50  0001 C CNN
	1    9900 7300
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR031
U 1 1 5E409AF9
P 9900 7550
F 0 "#PWR031" H 9900 7400 50  0001 C CNN
F 1 "VCC" V 9917 7678 50  0000 L CNN
F 2 "" H 9900 7550 50  0001 C CNN
F 3 "" H 9900 7550 50  0001 C CNN
	1    9900 7550
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small_US R9
U 1 1 5E42431B
P 9300 7300
F 0 "R9" H 9368 7346 50  0000 L CNN
F 1 "10" H 9368 7255 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 9300 7300 50  0001 C CNN
F 3 "~" H 9300 7300 50  0001 C CNN
	1    9300 7300
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR025
U 1 1 5E424321
P 9300 7550
F 0 "#PWR025" H 9300 7400 50  0001 C CNN
F 1 "VCC" V 9317 7678 50  0000 L CNN
F 2 "" H 9300 7550 50  0001 C CNN
F 3 "" H 9300 7550 50  0001 C CNN
	1    9300 7550
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small_US R6
U 1 1 5E43DF14
P 8650 7300
F 0 "R6" H 8718 7346 50  0000 L CNN
F 1 "10" H 8718 7255 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 8650 7300 50  0001 C CNN
F 3 "~" H 8650 7300 50  0001 C CNN
	1    8650 7300
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR022
U 1 1 5E43DF1A
P 8650 7550
F 0 "#PWR022" H 8650 7400 50  0001 C CNN
F 1 "VCC" V 8667 7678 50  0000 L CNN
F 2 "" H 8650 7550 50  0001 C CNN
F 3 "" H 8650 7550 50  0001 C CNN
	1    8650 7550
	-1   0    0    1   
$EndComp
Wire Wire Line
	8700 6450 9100 6450
Wire Wire Line
	9700 6300 9700 6450
Wire Wire Line
	8450 6650 8450 6800
Wire Wire Line
	9100 6650 9100 6800
Wire Wire Line
	9700 6650 9700 6800
Wire Wire Line
	9900 7100 9900 7200
Wire Wire Line
	9900 7400 9900 7550
Wire Wire Line
	9300 7100 9300 7200
Wire Wire Line
	9300 7400 9300 7550
Wire Wire Line
	8650 7100 8650 7200
Wire Wire Line
	8650 7400 8650 7550
Wire Wire Line
	7250 6350 7250 4700
$Comp
L adafruitparts:TCA9548Amultiplex U6
U 1 1 5DD24E06
P 5850 6250
F 0 "U6" H 5850 5585 50  0000 C CNN
F 1 "TCA9548Amultiplex" H 5850 5676 50  0000 C CNN
F 2 "adafruitparts:TCA9548A_multiplex" H 5850 6450 50  0001 C CNN
F 3 "" H 5850 6450 50  0001 C CNN
	1    5850 6250
	-1   0    0    1   
$EndComp
$Comp
L glove:magnetometer_connect U2
U 1 1 5E5EBB75
P 4450 5800
F 0 "U2" H 4383 6065 50  0000 C CNN
F 1 "magnetometer_connect" H 4383 5974 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 4450 5950 50  0001 C CNN
F 3 "" H 4450 5950 50  0001 C CNN
	1    4450 5800
	1    0    0    -1  
$EndComp
$Comp
L glove:magnetometer_connect U1
U 1 1 5E5EEA58
P 4450 5350
F 0 "U1" H 4383 5615 50  0000 C CNN
F 1 "magnetometer_connect" H 4383 5524 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 4450 5500 50  0001 C CNN
F 3 "" H 4450 5500 50  0001 C CNN
	1    4450 5350
	1    0    0    -1  
$EndComp
$Comp
L glove:magnetometer_connect U3
U 1 1 5E5F0C9E
P 4450 6250
F 0 "U3" H 4383 6515 50  0000 C CNN
F 1 "magnetometer_connect" H 4383 6424 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 4450 6400 50  0001 C CNN
F 3 "" H 4450 6400 50  0001 C CNN
	1    4450 6250
	1    0    0    -1  
$EndComp
$Comp
L glove:magnetometer_connect U4
U 1 1 5E5F2D22
P 4450 6650
F 0 "U4" H 4383 6915 50  0000 C CNN
F 1 "magnetometer_connect" H 4383 6824 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 4450 6800 50  0001 C CNN
F 3 "" H 4450 6800 50  0001 C CNN
	1    4450 6650
	1    0    0    -1  
$EndComp
$Comp
L glove:magnetometer_connect U5
U 1 1 5E616951
P 4450 7150
F 0 "U5" H 4383 7415 50  0000 C CNN
F 1 "magnetometer_connect" H 4383 7324 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 4450 7300 50  0001 C CNN
F 3 "" H 4450 7300 50  0001 C CNN
	1    4450 7150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 7250 5600 7250
Wire Wire Line
	5600 7250 5600 6350
Wire Wire Line
	4500 7200 5500 7200
Wire Wire Line
	5500 7200 5500 6300
Wire Wire Line
	5500 6300 5600 6300
$Comp
L power:GND #PWR012
U 1 1 5E61FA64
P 4550 7150
F 0 "#PWR012" H 4550 6900 50  0001 C CNN
F 1 "GND" V 4555 7022 50  0000 R CNN
F 2 "" H 4550 7150 50  0001 C CNN
F 3 "" H 4550 7150 50  0001 C CNN
	1    4550 7150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4550 7150 4500 7150
$Comp
L power:GND #PWR011
U 1 1 5E626540
P 4550 6650
F 0 "#PWR011" H 4550 6400 50  0001 C CNN
F 1 "GND" V 4555 6522 50  0000 R CNN
F 2 "" H 4550 6650 50  0001 C CNN
F 3 "" H 4550 6650 50  0001 C CNN
	1    4550 6650
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR010
U 1 1 5E628E76
P 4550 6250
F 0 "#PWR010" H 4550 6000 50  0001 C CNN
F 1 "GND" V 4555 6122 50  0000 R CNN
F 2 "" H 4550 6250 50  0001 C CNN
F 3 "" H 4550 6250 50  0001 C CNN
	1    4550 6250
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR09
U 1 1 5E62E937
P 4550 5800
F 0 "#PWR09" H 4550 5550 50  0001 C CNN
F 1 "GND" V 4555 5672 50  0000 R CNN
F 2 "" H 4550 5800 50  0001 C CNN
F 3 "" H 4550 5800 50  0001 C CNN
	1    4550 5800
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR05
U 1 1 5E63121F
P 4550 5350
F 0 "#PWR05" H 4550 5100 50  0001 C CNN
F 1 "GND" V 4555 5222 50  0000 R CNN
F 2 "" H 4550 5350 50  0001 C CNN
F 3 "" H 4550 5350 50  0001 C CNN
	1    4550 5350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4500 5350 4550 5350
Wire Wire Line
	4500 5800 4550 5800
Wire Wire Line
	4500 6250 4550 6250
Wire Wire Line
	4500 6650 4550 6650
Wire Wire Line
	4500 6750 5450 6750
Wire Wire Line
	5450 6750 5450 6250
Wire Wire Line
	5450 6250 5600 6250
Wire Wire Line
	4500 6700 5350 6700
Wire Wire Line
	5350 6700 5350 6200
Wire Wire Line
	5350 6200 5600 6200
Wire Wire Line
	4500 6350 5250 6350
Wire Wire Line
	5250 6350 5250 6150
Wire Wire Line
	5250 6150 5600 6150
Wire Wire Line
	4500 6300 5150 6300
Wire Wire Line
	5150 6300 5150 6100
Wire Wire Line
	5150 6100 5600 6100
Wire Wire Line
	4500 5900 5350 5900
Wire Wire Line
	5350 5900 5350 6050
Wire Wire Line
	5350 6050 5600 6050
Wire Wire Line
	4500 5850 5400 5850
Wire Wire Line
	5400 5850 5400 6000
Wire Wire Line
	5400 6000 5600 6000
Wire Wire Line
	4500 5450 5450 5450
Wire Wire Line
	5450 5450 5450 5950
Wire Wire Line
	5450 5950 5600 5950
Wire Wire Line
	4500 5400 5500 5400
Wire Wire Line
	5500 5400 5500 5900
Wire Wire Line
	5500 5900 5600 5900
Wire Wire Line
	7250 6350 6100 6350
Wire Wire Line
	6100 6250 7150 6250
Wire Wire Line
	6100 6200 7050 6200
Wire Wire Line
	7250 6350 7250 7650
Wire Wire Line
	7250 7650 3850 7650
Wire Wire Line
	3850 4950 5000 4950
Wire Wire Line
	5000 4950 5000 5300
Wire Wire Line
	5000 5300 4500 5300
Wire Wire Line
	3850 4950 3850 5600
Connection ~ 7250 6350
Wire Wire Line
	4500 5750 4650 5750
Wire Wire Line
	4650 5750 4650 5600
Wire Wire Line
	4650 5600 3850 5600
Connection ~ 3850 5600
Wire Wire Line
	3850 5600 3850 6050
Wire Wire Line
	4500 6200 4600 6200
Wire Wire Line
	4600 6200 4600 6050
Wire Wire Line
	4600 6050 3850 6050
Connection ~ 3850 6050
Wire Wire Line
	3850 6050 3850 6450
Wire Wire Line
	4500 6600 4700 6600
Wire Wire Line
	4700 6600 4700 6450
Wire Wire Line
	4700 6450 3850 6450
Connection ~ 3850 6450
Wire Wire Line
	3850 6450 3850 6950
Wire Wire Line
	4500 7100 4650 7100
Wire Wire Line
	4650 7100 4650 6950
Wire Wire Line
	4650 6950 3850 6950
Connection ~ 3850 6950
Wire Wire Line
	3850 6950 3850 7650
Wire Wire Line
	8650 5400 8650 6300
Wire Wire Line
	8650 6300 9700 6300
Wire Wire Line
	8700 6400 8550 6400
Wire Wire Line
	8550 6400 8550 5400
Wire Wire Line
	8700 6450 8700 6400
Wire Wire Line
	8450 5400 8450 6450
$Comp
L Connector:Conn_01x02_Male J4
U 1 1 5E79B73E
P 8050 8050
F 0 "J4" H 8158 8231 50  0000 C CNN
F 1 "Conn_01x02_Male" H 8158 8140 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 8050 8050 50  0001 C CNN
F 3 "~" H 8050 8050 50  0001 C CNN
	1    8050 8050
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male J5
U 1 1 5E7A7CA5
P 8750 8000
F 0 "J5" H 8858 8181 50  0000 C CNN
F 1 "Conn_01x02_Male" H 8858 8090 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 8750 8000 50  0001 C CNN
F 3 "~" H 8750 8000 50  0001 C CNN
	1    8750 8000
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male J8
U 1 1 5E7ADCFE
P 9300 8050
F 0 "J8" H 9408 8231 50  0000 C CNN
F 1 "Conn_01x02_Male" H 9408 8140 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 9300 8050 50  0001 C CNN
F 3 "~" H 9300 8050 50  0001 C CNN
	1    9300 8050
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 7100 9500 8050
Wire Wire Line
	8900 7100 8900 7800
Wire Wire Line
	8900 7800 8950 7800
Wire Wire Line
	8950 7800 8950 8000
Wire Wire Line
	8250 7100 8250 8050
$Comp
L power:GND #PWR021
U 1 1 5E7D9F04
P 8250 8300
F 0 "#PWR021" H 8250 8050 50  0001 C CNN
F 1 "GND" H 8255 8127 50  0000 C CNN
F 2 "" H 8250 8300 50  0001 C CNN
F 3 "" H 8250 8300 50  0001 C CNN
	1    8250 8300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR024
U 1 1 5E7DA0F6
P 8950 8250
F 0 "#PWR024" H 8950 8000 50  0001 C CNN
F 1 "GND" H 8955 8077 50  0000 C CNN
F 2 "" H 8950 8250 50  0001 C CNN
F 3 "" H 8950 8250 50  0001 C CNN
	1    8950 8250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR028
U 1 1 5E7E060E
P 9500 8250
F 0 "#PWR028" H 9500 8000 50  0001 C CNN
F 1 "GND" H 9505 8077 50  0000 C CNN
F 2 "" H 9500 8250 50  0001 C CNN
F 3 "" H 9500 8250 50  0001 C CNN
	1    9500 8250
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 8250 9500 8150
Wire Wire Line
	8950 8100 8950 8250
Wire Wire Line
	8250 8150 8250 8300
Wire Wire Line
	9350 3300 9350 4400
Wire Wire Line
	9250 3500 9250 4400
Wire Wire Line
	7150 3500 7150 6250
Wire Wire Line
	7150 3500 9250 3500
Wire Wire Line
	7050 3300 7050 6200
Wire Wire Line
	7050 3300 9350 3300
Wire Wire Line
	8850 4400 8850 4250
Wire Wire Line
	8950 4400 8950 4250
Wire Wire Line
	9050 4400 9050 4250
Wire Wire Line
	9150 4400 9150 4250
$Comp
L Connector:Conn_01x02_Male J9
U 1 1 5EA2EC1A
P 9550 4050
F 0 "J9" H 9658 4231 50  0000 C CNN
F 1 "Conn_01x02_Male" H 9658 4140 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 9550 4050 50  0001 C CNN
F 3 "~" H 9550 4050 50  0001 C CNN
	1    9550 4050
	0    1    1    0   
$EndComp
Wire Wire Line
	9450 4400 9450 4250
Wire Wire Line
	9550 4400 9550 4250
$Comp
L Connector:Conn_01x04_Male J7
U 1 1 5EA594E2
P 9050 4050
F 0 "J7" H 9158 4331 50  0000 C CNN
F 1 "Conn_01x04_Male" H 9158 4240 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 9050 4050 50  0001 C CNN
F 3 "~" H 9050 4050 50  0001 C CNN
	1    9050 4050
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_01x04_Male J6
U 1 1 5EA6191C
P 8850 5750
F 0 "J6" H 8958 6031 50  0000 C CNN
F 1 "Conn_01x04_Male" H 8958 5940 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 8850 5750 50  0001 C CNN
F 3 "~" H 8850 5750 50  0001 C CNN
	1    8850 5750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9050 5550 9050 5400
Wire Wire Line
	8950 5550 8950 5400
Wire Wire Line
	8850 5550 8850 5400
Wire Wire Line
	8750 5550 8750 5400
$Comp
L Connector:Conn_01x02_Male J3
U 1 1 5EAAA0D6
P 6950 8850
F 0 "J3" V 7104 8662 50  0000 R CNN
F 1 "Alternate power ground inputs" V 7013 8662 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 6950 8850 50  0001 C CNN
F 3 "~" H 6950 8850 50  0001 C CNN
	1    6950 8850
	0    -1   -1   0   
$EndComp
$Comp
L power:VCC #PWR020
U 1 1 5EABC3A8
P 7050 8500
F 0 "#PWR020" H 7050 8350 50  0001 C CNN
F 1 "VCC" V 7067 8628 50  0000 L CNN
F 2 "" H 7050 8500 50  0001 C CNN
F 3 "" H 7050 8500 50  0001 C CNN
	1    7050 8500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 8650 7050 8500
$Comp
L power:GND #PWR019
U 1 1 5EAD61FF
P 6950 8550
F 0 "#PWR019" H 6950 8300 50  0001 C CNN
F 1 "GND" H 6955 8377 50  0000 C CNN
F 2 "" H 6950 8550 50  0001 C CNN
F 3 "" H 6950 8550 50  0001 C CNN
	1    6950 8550
	-1   0    0    1   
$EndComp
Wire Wire Line
	6950 8650 6950 8550
$Comp
L Connector:Conn_01x02_Male J2
U 1 1 5EAE9FAE
P 5500 8850
F 0 "J2" V 5654 8662 50  0000 R CNN
F 1 "Exposed power and ground" V 5563 8662 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 5500 8850 50  0001 C CNN
F 3 "~" H 5500 8850 50  0001 C CNN
	1    5500 8850
	0    -1   -1   0   
$EndComp
$Comp
L power:VCC #PWR014
U 1 1 5EAE9FB4
P 5600 8500
F 0 "#PWR014" H 5600 8350 50  0001 C CNN
F 1 "VCC" V 5617 8628 50  0000 L CNN
F 2 "" H 5600 8500 50  0001 C CNN
F 3 "" H 5600 8500 50  0001 C CNN
	1    5600 8500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 8650 5600 8500
$Comp
L power:GND #PWR013
U 1 1 5EAE9FBB
P 5500 8550
F 0 "#PWR013" H 5500 8300 50  0001 C CNN
F 1 "GND" H 5505 8377 50  0000 C CNN
F 2 "" H 5500 8550 50  0001 C CNN
F 3 "" H 5500 8550 50  0001 C CNN
	1    5500 8550
	-1   0    0    1   
$EndComp
Wire Wire Line
	5500 8650 5500 8550
$EndSCHEMATC
