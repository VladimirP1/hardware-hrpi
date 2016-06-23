# A simple add-on board for Raspberry Pi to run a downstream verion of APM (https://github.com/VladimirP1/ardupilot)
This board has been designed considering this technology: http://cxem.net/master/45.php

![scheme](https://raw.githubusercontent.com/VladimirP1/hardware-hrpi/master/doc/scheme.png "Diagram")
#Repo structure
- doc: documentation
- src/kicad/hrpi: KICAD sources
- src/arduino/i2c-adc-rc: Arduino sources

#Pinouts
- Serial:  https://raw.githubusercontent.com/VladimirP1/hardware-hrpi/master/doc/SERIAL.png
- I2C:     https://raw.githubusercontent.com/VladimirP1/hardware-hrpi/master/doc/I2C.png
- SPI:     https://raw.githubusercontent.com/VladimirP1/hardware-hrpi/master/doc/SPI.png
- ADC:     https://raw.githubusercontent.com/VladimirP1/hardware-hrpi/master/doc/ADC.png
- RC main: https://raw.githubusercontent.com/VladimirP1/hardware-hrpi/master/doc/RCm.png
- RC aux:  https://raw.githubusercontent.com/VladimirP1/hardware-hrpi/master/doc/RCa.png

- If P9 and P10 are connected, then rc rail connects to 5V electonics power.

# Todo
- Modify firmware to recieve 12 PWM channels instead of 8.
- Add pinout charts 
- add RC OK led
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

