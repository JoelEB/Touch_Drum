# Alternate i2c_t3 Library Installation

In order to get the maximum number of touch pins available on the Teensy 3.2, the alternate I2C ports (SDA1, SCL1 - D30, D329) must be implemented as oppose to the default I2C port (SDA0, SCL0 - D18, D19). This frees up pins 18 and 19 to be used as touch pins instead of being the I2C connection to the Teensy audio shield. 

This requires modification to both the way the hardware connects and to the Libraries used to communicate to the audio shield. 

## Hardware

## Software

The alternate i2c library **i2c_t3** is needed to specify if Wire0 (SDA0, SCL0) or if Wire1 (SDA1, SCL1) is used. 

It can be found in this folder. 

Install it in your library directory. 

---

Next, the **Audio** library needs to be altered. This is included when you download Teensyduino and can be found in the Java->hardware->teensy->libraries folder inside Arduino Contents.

There are four files specifically that need altered. They are:

*      ./hardware/teensy/avr/libraries/Audio/control_sgtl5000.cpp
*      ./hardware/teensy/avr/libraries/Audio/control_wm8731.cpp
*    ./hardware/teensy/avr/libraries/Audio/control_cs4272.cpp
*    ./hardware/teensy/avr/libraries/Audio/control_ak4558.cpp

This info was in this [forum thread](https://forum.pjrc.com/threads/33993-Audio-library-adaptor-compatible-w-i2c_t3).

In each of these files, comment out `#include <Wire.h>` and replace with `#include i2c_t3.h`.

Last, all instance of Wire0 need to be replaced with Wire1.

---

To implement this, an alternate Audio library was created, **Audio2**, found in this folder. Install it and include it instead of Audio. `#include <Audio2.h>`

All instances of `#include <Wire.h>` must be commented out. This includes any extra libraries included that use I2C (The `#include <MAX17043GU.h>` library has been a culprit of this). 

TODO 

Find all files in which Wire0 needed to be changed to Wire1. 
