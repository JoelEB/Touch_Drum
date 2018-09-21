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
#include <Audio.h>
#include <Wire.h>
#include <SPI.h>
#include <SerialFlash.h>
#include <Bounce.h>
#include <TeensyView.h>
#include <Wire.h>
#include <MAX17043GU.h>

#define MAX17043_ADDRESS 0x36

#include "note_frequency.h"
#include "scales.h"
#include "TeensyAudioDesignTool.h"


//Alternate (Audio)
#define PIN_RESET 2
#define PIN_DC    21
#define PIN_CS    20
#define PIN_SCK   14
#define PIN_MOSI  7


#define volKnob A13 //grey wire 
#define decayKnob A12 //black wire 
#define ding A16

TeensyView oled(PIN_RESET, PIN_DC, PIN_CS, PIN_SCK, PIN_MOSI);

//an array to define each of the eight touch sense pins, 
//all other touch sense pins are used by the Teensy Audio Shield (16,17,18,19)
//int pinTouch[] = {33,32,25,17,16,15,1,0}; //25 = white, 32 = yellow, 33 = blue

int pinTouch[] = {0,1,15,16,17,25,32,33}; //25 = white, 32 = yellow, 33 = blue

int scale_index = 0;//var to keep track of which scale is being used
int padIndex = 0;//var to keep track of pad debug data
int dcVal = 0;//value to control the decay of each note 

//buttons for incrementing or decrementing through each scale
Bounce button0 = Bounce(4, 15);
Bounce button1 = Bounce(3, 15);    
Bounce foot0 = Bounce(5, 15);
Bounce foot1 = Bounce(8, 15);
//Bounce ding = Bounce(27, 15);

float vol = 0;
bool debug = 0;//Set to 1 for Serial debugging 

float voltage;
float percentage;
int counter = 0;
  
MAX17043GU battery;
////////////////////////////////////////////////////////
void setup() 
{
  //initialize buttons
  pinMode(4, INPUT_PULLUP);
  pinMode(3, INPUT_PULLUP);
  pinMode(5, INPUT_PULLUP);
  pinMode(8, INPUT_PULLUP);
  //pinMode(27, INPUT);
  
  button0.update();
  button1.update();
  foot0.update();
  foot1.update();
  //ding.update();
  
  //initialize Serial
  Serial.begin(115200);

  // Start I2C
  Wire.begin();
  delay(100);
  battery.restart();
  
  //set aside audio memory 
  AudioMemory(64);

  //initialize audio settings
  sine1.amplitude(0.125);
  sine1.frequency(440);
  sine2.amplitude(0.125);
  sine2.frequency(440);
  sine3.amplitude(0.125);
  sine3.frequency(440);
  sine4.amplitude(0.125);
  sine4.frequency(440);
  sine5.amplitude(0.125);
  sine5.frequency(440);
  sine6.amplitude(0.125);
  sine6.frequency(440);
  sine7.amplitude(0.125);
  sine7.frequency(440);
  sine8.amplitude(0.125);
  sine8.frequency(440);
  sine9.amplitude(0.125);
  sine9.frequency(440);
  
  dc1.amplitude(0);
  dc2.amplitude(0);
  dc3.amplitude(0);
  dc4.amplitude(0);
  dc5.amplitude(0);
  dc6.amplitude(0);
  dc7.amplitude(0);
  dc8.amplitude(0);
  dc9.amplitude(0);


  //initialize volume
  sgtl5000_1.enable();
  sgtl5000_1.volume(0.8);
  //enable line out for troubleshooting on O-scope
  //sgtl5000_1.unmuteLineout();
  sgtl5000_1.lineOutLevel(5);

    //Initialize the OLED
  oled.begin();
  // clear(ALL) will clear out the OLED's graphic memory.
  // clear(PAGE) will clear the Arduino's display buffer.
  oled.clear(ALL);  // Clear the display's memory (gets rid of artifacts)
  // To actually draw anything on the display, you must call the
  // display() function.
  oled.display();
  // Give the splash screen some time to shine
  delay(2000);

}
//////////////////////////////////////////////
void loop() 
{    
  volumeCheck();//check the volume knob 

  touchCheck();//check if any of the capacitive pads have been touched

  dcValCheck();//check the decay knob

  buttonCheck();//check for button presses to change the scale 

  counter++;
  if(counter == 10000);
  {
    getBattery();
    counter = 0;
  }
  
  oledPrint();//print to TeensyView

}
void getBattery()
{
  // Get the values
  voltage = battery.voltageLevel();
  percentage = battery.fuelLevel();  
}
void oledPrint()
{
  oled.clear(PAGE);
  
  oled.setCursor(0, 8);
  oled.print("5:");
  oled.print(digitalRead(5));
  oled.print(" 8:");
  oled.print(digitalRead(8));
  /*oled.print("Volume = ");
  int newVol = map(vol, 0.0, 0.8, 0, 100);
  oled.print(newVol);
  oled.print("%");
  */
  oled.setCursor(0, 16);
  oled.print("Pad ");  
  oled.print(padIndex);
  oled.print(" = ");  
  oled.print(touchRead(pinTouch[padIndex])); 
  /*oled.print("Decay = ");
  oled.print((int)dcVal/10);
  oled.print("%");
  */
  
  oled.setCursor(0, 0);
  oled.print("Scale = ");  
  //oled.print(scale_index);

  if(scale_index == 0)
  oled.print("A3 Major");
  if(scale_index == 1)
  oled.print("A4 Major");
  if(scale_index == 2)
  oled.print("A3 Minor");
  if(scale_index == 3)
  oled.print("A4 Minor");
  if(scale_index == 4)
  oled.print("A3 Akebono");
  if(scale_index == 5)
  oled.print("A4 Akebono");

  if(scale_index == 6)
  oled.print("C4 Major");
  if(scale_index == 7)
  oled.print("C5 Major");
  if(scale_index == 8)
  oled.print("C4 Minor");
  if(scale_index == 9)
  oled.print("C5 Minor");
   
  if(scale_index == 10)
  oled.print("G3 Major");
  if(scale_index == 11)
  oled.print("G4 Major");
  if(scale_index == 12)
  oled.print("G3 Minor");
  if(scale_index == 13)
  oled.print("G4 Minor");

  if(scale_index == 14)
  oled.print("D4 Major");
  if(scale_index == 15)
  oled.print("D5 Major");
  if(scale_index == 16)
  oled.print("D4 Minor");
  if(scale_index == 17)
  oled.print("D5 Minor");
  if(scale_index == 18)
  oled.print("D3 Akebono");
  if(scale_index == 19)
  oled.print("D4 Akebono");
  if(scale_index == 20)
  oled.print("D5 Akebono");

  if(scale_index == 21)
  oled.print("E3 Major");
  if(scale_index == 22)
  oled.print("E4 Major");
  if(scale_index == 23)
  oled.print("E5 Major");
  if(scale_index == 24)
  oled.print("E3 Minor");
  if(scale_index == 25)
  oled.print("E4 Minor");
  if(scale_index == 26)
  oled.print("E5 Minor");
  if(scale_index == 27)
  oled.print("E3 Akebono");
  if(scale_index == 28)
  oled.print("E4 Akebono");
  if(scale_index == 29)
  oled.print("E5 Akebono");
  
  if(scale_index == 30)
  oled.print("A3 Equinox");
  if(scale_index == 31)
  oled.print("C4 Equinox");
  if(scale_index == 32)
  oled.print("D4 Equinox");
  if(scale_index == 33)
  oled.print("E4 Equinox");
  if(scale_index == 34)
  oled.print("F4 Equinox");
  if(scale_index == 35)
  oled.print("G4 Equinox");

  if(scale_index == 36)
  oled.print("C4 Pygmy");
  if(scale_index == 37)
  oled.print("D4 Pygmy");
  if(scale_index == 38)
  oled.print("E4 Pygmy");

  if(scale_index == 39)
  oled.print("Schumann");
  if(scale_index == 40)
  oled.print("Divine Order");
  
  //oled.print(touchRead(pinTouch[7]));
  oled.setCursor(0, 24);
  oled.print("Batt = ");  
  oled.print(percentage);
  oled.print("% ");
  oled.print(voltage);
  oled.print("V");

  oled.display();

  delay(10);
}
/////////////////////////////////////////////////////
void volumeCheck()
{
  //check knob value for volume   
  vol = (float)analogRead(volKnob) / 1280.0;
  //vol = (float)analogRead(volKnob) / 128.0;
  //sgtl5000_1.volume(vol);

  mixerMain.gain(0, vol);//channel 0
  mixerMain.gain(1, vol);//channel 1
  mixerMain.gain(2, vol);//channel 2

  if(debug == 1)
  {  
  Serial.print("VolKnob = ");  
  Serial.println(vol);
  }
}
/////////////////////////////////////////////////////
void dcValCheck()
{
  //check knob and set value as delay on dc constant for sine wave decay
  dcVal = map(analogRead(decayKnob), 0, 1023, 1, 1000);

  if(debug == 1)
  {  
  Serial.print("DecayKnob = ");  
  Serial.println(dcVal);
  }

}
/////////////////////////////////////////////////////
void touchCheck()
{
  //Each capacitive touch pad will vary based on the size and material it is made of
  //The value necessary to trigger each note will require some trial and error to get the
  //sensitivity just right. Try adjusting these values to get the best response. 
    
    if (touchRead(pinTouch[0]) > 2400)
    {
      //once a pad is touched, a value from the note frquency froma table is looked up via a 2D table
      //with x corresponding to a scale and y corresponding to one of the eight notes on the drum. 
      
      sine1.frequency(note_frequency[scale[scale_index][0]]);
      dc1.amplitude(1.0, 5);
    }
    if (touchRead(pinTouch[0]) <= 2400) 
    {
      //one the pad is released, the note fades out with a decay val set by the dcVal knob
      dc1.amplitude(0, dcVal);
    }
      

    if (touchRead(pinTouch[1]) > 2400) 
    {
      sine2.frequency(note_frequency[scale[scale_index][1]]);
      dc2.amplitude(1.0, 5);
    }
    if (touchRead(pinTouch[1]) <= 2400) 
    {
      dc2.amplitude(0, dcVal);
    }

    
    if (touchRead(pinTouch[2]) > 2400)
    {
      sine3.frequency(note_frequency[scale[scale_index][2]]);
      dc3.amplitude(1.0, 5);
    }
    if (touchRead(pinTouch[2]) <= 2400) 
    {
      dc3.amplitude(0, dcVal);
    }
    

    if (touchRead(pinTouch[3]) > 2400)
    {
      sine4.frequency(note_frequency[scale[scale_index][3]]);
      dc4.amplitude(1.0, 5);
    }
    if (touchRead(pinTouch[3]) <= 2400)
    {
      dc4.amplitude(0, dcVal);
    }
       
    if (touchRead(pinTouch[4]) > 2400) 
    {
      sine5.frequency(note_frequency[scale[scale_index][4]]);
      dc5.amplitude(1.0, 5);
    }
    if (touchRead(pinTouch[4]) <= 2400)
    {
      dc5.amplitude(0, dcVal);
    }
    
    if (touchRead(pinTouch[5]) > 2400)
    {
      sine6.frequency(note_frequency[scale[scale_index][5]]);
      dc6.amplitude(1.0, 5);
    }
    if (touchRead(pinTouch[5]) <= 2400) 
    {
      dc6.amplitude(0, dcVal);
    }
    

   
    if (touchRead(pinTouch[6]) > 2400)
    {
      sine7.frequency(note_frequency[scale[scale_index][6]]);
      dc7.amplitude(1.0, 5);
    }
    if (touchRead(pinTouch[6]) <= 2400) 
    {
      dc7.amplitude(0, dcVal);
    }
    
   
    if (touchRead(pinTouch[7]) > 2000) 
    {
      sine8.frequency(note_frequency[scale[scale_index][7]]);
      dc8.amplitude(1.0, 5);
    }
    if (touchRead(pinTouch[7]) <= 2000) 
    {
      dc8.amplitude(0, dcVal);
    }

     if (analogRead(ding) > 500) 
    {
      sine9.frequency(note_frequency[scale[scale_index][8]]);
      dc9.amplitude(0.80, 5);
    }
    if (analogRead(ding) < 500) 
    {
      //one the pad is released, the note fades out with a decay val set by the dcVal knob
      dc9.amplitude(0, dcVal);
    }  

    /*ding.update();
    if (ding.risingEdge())
    { 
      sine9.frequency(note_frequency[scale[scale_index][8]]);
      dc9.amplitude(0.80, 5);
    }
    if (ding.fallingEdge()) 
    {
      //one the pad is released, the note fades out with a decay val set by the dcVal knob
      dc9.amplitude(0, dcVal);
    }
    */
  
}
//////////////////////////////////////////////////
void buttonCheck()
{
  button0.update();
  button1.update();
  foot0.update();
  foot1.update();
  
  //if button 0 is pressed, increment the scale being used
  if (button0.risingEdge())
  { 
    scale_index++;
    //check for overflow
    if(scale_index > numOfScales)//numOfScales variable found in the scales.h file
    scale_index = 0;

    padIndex++;
    //check for overflow
    if(padIndex > 7)//numOfScales variable found in the scales.h file
    padIndex = 0;
  }

  //if button 1 is pressed, decrement the scale being used
  if (button1.risingEdge())
  { 
    scale_index--;
    //check for negative numbers
    if(scale_index < 0)
    scale_index = numOfScales;//numOfScales variable found in the scales.h file

    padIndex--;
    //check for negative numbers
    if(padIndex < 0)
    padIndex = 7;//numOfScales variable found in the scales.h file
  }

  if(debug == 1)
  {  
  Serial.print("Scale = ");  
  Serial.println(scale_index);
  }
}
