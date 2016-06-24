# A simple add-on board for Raspberry Pi to run a downstream verion of APM (https://github.com/VladimirP1/ardupilot) (waf configure --board=hrpi)

The APM port requires servod form ServoBlaster to be in PATH.
This board has been designed considering this technology: http://cxem.net/master/45.php

![scheme](https://raw.githubusercontent.com/VladimirP1/hardware-hrpi/master/doc/scheme.png "Diagram")

# WARNING
This board uses 10k resistors to protect Raspberry pi's inputs from 5v and relies on its internal protection diodes.
Earlier revision of the board with external diodes work OK, but the current revision is UNTESTED.

ALWAYS FLASH FIRMWARE BEFORE PLUGGING IN ARDUINO NANO OR YOU RISK TO BURN YOUR PI (It can happen if either of A4 and A5 is configured as output) !!!

#Repo structure
- doc: documentation
- src/kicad/hrpi: KICAD sources
- src/arduino/i2c-adc-rc: Arduino sources

#Important notes
- If P9 and P10 are connected, then rc rail connects to 5V electonics power.
- MPU6000 uses only MOSI, MISO, SCLK, NSS2, GND, 3V3 form the SPI connector.

# Serial pinout
![serial](https://raw.githubusercontent.com/VladimirP1/hardware-hrpi/master/doc/SERIAL.png)

# I2C pinout
![i2c](https://raw.githubusercontent.com/VladimirP1/hardware-hrpi/master/doc/I2C.png)

# SPI pinout
![spi](https://raw.githubusercontent.com/VladimirP1/hardware-hrpi/master/doc/SPI.png)

# How to connect ACC/GYRO
![gyroaccel](https://raw.githubusercontent.com/VladimirP1/hardware-hrpi/master/doc/mpu_imu_click.png)

# ADC pinout
![adc](https://raw.githubusercontent.com/VladimirP1/hardware-hrpi/master/doc/ADC.png)

# RC main pinout
![rcm](https://raw.githubusercontent.com/VladimirP1/hardware-hrpi/master/doc/RCm.png)

# RC aux pinout
AUX0-AUX4=RC8-RC13

![rca](https://raw.githubusercontent.com/VladimirP1/hardware-hrpi/master/doc/RCa.png)

# Todo
- handle RC OK led by software
- maybe upstream APM

# Render
![top view](https://raw.githubusercontent.com/VladimirP1/hardware-hrpi/master/doc/top1.png "HRPI top view")
![bottom view](https://raw.githubusercontent.com/VladimirP1/hardware-hrpi/master/doc/bottom1.png "HRPI bottom view")

# License
The repo contents are licensed under the MIT license

Copyright (c) 2016 Vladimir Pinchuk

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal 
in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of 
the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS 
FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN 
AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

