/******************************************************************************
  Digital Handpan Code for Teesny 
  Joel Bartlett @ SparkFun Electronics
  Original Creation Date: October 16, 2016
  
  This sketch produces polyphonic notes when any number of eight capacitive touch pads are 
  touched, thus replicating a Handpan (or Hang) steel drum. This sketch 
  makes use of the Teensy Audio Shield (https://www.sparkfun.com/products/12767)
  as well as the Teensy Audio System Design Tool (http://www.pjrc.com/teensy/gui/).
  All capactive touch sensing is handled by the Teensy's built in Touch Sense Pins. 
  
  Hardware:
    Teensy 3.2 Dev Board (https://www.sparkfun.com/products/13736)
    Teensy Audio Board (https://www.sparkfun.com/products/12767)
    Various buttons and potentiometers 

  Development environment specifics:
    IDE: Arduino IDE V 1.6.11 with the Teensyduino Add-on installed V Teensy Loader V1.30

  This code is beerware; if you see me (or any other SparkFun
  employee) at the local, and you've found our code helpful,
  please buy us a round!
  Distributed as-is; no warranty is given.
*******************************************************************************/
//These libraries are included by the Teensy Audio System Design Tool 
//#include <Audio.h>
//#include <Wire.h>
#include <SPI.h>
//#include <SerialFlash.h>
#include <Bounce.h>
#include <TeensyView.h>

//Alternate (Audio)
#define PIN_RESET 2
#define PIN_DC    21
#define PIN_CS    20
#define PIN_SCK   14
#define PIN_MOSI  7

TeensyView oled(PIN_RESET, PIN_DC, PIN_CS, PIN_SCK, PIN_MOSI);

//an array to define each of the eight touch sense pins, 
//all other touch sense pins are used by the Teensy Audio Shield (16,17,18,19)
int pinTouch[] = {0,1,15,16,17,25,32,33}; //25 = white, 32 = yellow, 33 = blue

int padIndex = 0;//var to keep track fo which scale is being used

//buttons for incrementing or decrementing through each scale
Bounce button0 = Bounce(4, 15);
Bounce button1 = Bounce(3, 15);    

////////////////////////////////////////////////////////
void setup() 
{
  //initialize buttons
  pinMode(4, INPUT_PULLUP);
  pinMode(3, INPUT_PULLUP);
  button0.update();
  button1.update();
  
    //Initialize the OLED
  oled.begin();
  // clear(ALL) will clear out the OLED's graphic memory.
  // clear(PAGE) will clear the Arduino's display buffer.
  oled.clear(ALL);  // Clear the display's memory (gets rid of artifacts)
  // To actually draw anything on the display, you must call the
  // display() function.
  oled.display();
  // Give the splash screen some time to shine
  delay(200);

}
//////////////////////////////////////////////
void loop() 
{     
  buttonCheck();//check for button presses to change the scale 

  oledPrint();//print to TeensyView

}

void oledPrint()
{
  oled.clear(PAGE);
  
  oled.setCursor(0, 0);
  oled.print("Pad ");  
  oled.print(padIndex);
  oled.print(" = ");  
  oled.print(touchRead(pinTouch[padIndex])); 
      
  oled.display();

  delay(10);
}
//////////////////////////////////////////////////
void buttonCheck()
{
  button0.update();
  button1.update();

  //if button 0 is pressed, increment the scale being used
  if (button0.risingEdge())
  { 
    padIndex++;
    //check for overflow
    if(padIndex > 7)//numOfScales variable found in the scales.h file
    padIndex = 0;
  }

  //if button 1 is pressed, decrement the scale being used
  if (button1.risingEdge())
  { 
    padIndex--;
    //check for negative numbers
    if(padIndex < 0)
    padIndex = 7;//numOfScales variable found in the scales.h file
  }
}

