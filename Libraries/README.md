# Alternate i2c_t3 Library Installation

In order to get the maximum number of touch pins avaibale on the Teensy 3.2, the alternate I2C ports (SDA1, SCL1 - D30, D329) must be implemented as oppose to the defualt I2C port (SDA0, SCL0 - D18, D19). This frees up pins 18 and 19 to be used as touch pins instead of being the I2C connection to the Teensy audio shield. 

This requires modification to both the way the hardware connects and to the Libraries used to communicate to the audio shield. 

## Hardware

## Software

The alternate i2c library **i2c_t3** is needed to specify if Wire0 (SDA0, SCL0) or if Wire1 (SDA1, SCL1) is used