# A simple add-on board for Raspberry Pi to run a downstream verion of APM (https://github.com/VladimirP1/ardupilot) (waf configure --board=hrpi)

This board has been designed considering this technology: http://cxem.net/master/45.php

The APM port requires servod form ServoBlaster (https://github.com/richardghirst/PiBits/tree/master/ServoBlaster/user) to be in PATH.

Only one hardware UART is available on the Pi, so either GPS or telemetry should be connected over USB.

![scheme](https://raw.githubusercontent.com/VladimirP1/hardware-hrpi/master/doc/scheme.png "Diagram")

# RT-preempt
- I have built my RT kernel from official Rasberry Pi Foundation's kernel patched with corresponding RT version.
- If your pi does not boot with RT-patched kernel try adding sdhci_bcm2708.enable_llm=0 to cmdline. If you expirince hangs with RT kernel try to add dwc_otg.fiq_enable=0 to cmdline.

# WARNING
-This board uses 10k resistors to protect Raspberry pi's inputs from 5v and relies on its internal protection diodes.
Earlier revision of the board with external diodes work OK, but the current revision is UNTESTED.

-ALWAYS FLASH FIRMWARE BEFORE PLUGGING IN ARDUINO NANO OR YOU RISK TO BURN YOUR PI (It can happen if either of A4 and A5 is driven HIGH) !!!

-Only tested on RPI 2

# Repo structure
- doc: documentation
- src/kicad/hrpi: KICAD sources
- src/arduino/i2c-adc-rc: Arduino sources

# Important notes
- MPU6000 uses MOSI, MISO, SCLK, NSS2, GND, 3V3 form the SPI connector.

# Details
- RC input is recieved by arduino nano, then it is read out by RPI over i2c.
- RC output is done over RPI's gpio using ServoBlaster (https://github.com/richardghirst/PiBits/tree/master/ServoBlaster/user).
- Sensors must be connected externally by SPI and I2C. Madarnatory sensors: MPU6000(SPI), HMC5883L(I2C), MS5611(I2C, except rover).
Examples of breakout boards: GY-63, GY-273 and Mikroe MPU imu click.
- Power must be provided either over the RC rail with P9 closed or the P3 connector


# Serial pinout
![serial](https://raw.githubusercontent.com/VladimirP1/hardware-hrpi/master/doc/SERIAL.png)

# Connecting 3DR radio

If you have two ground modules you can plug one into your PC, one into RPI. They will communicate.
If they do not, make sure that the have same net id.
You can also connect to RPI without 3DR radio, over wifi.

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
- fix default accel orientation

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

