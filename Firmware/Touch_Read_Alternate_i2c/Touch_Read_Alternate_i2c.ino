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
#include <Audio2.h>
//#include <SPI.h>
#include <SerialFlash.h>

#include "note_frequency.h"
#include "TeensyAudioDesignTool.h"

int pinTouch[] = {0,1,15,16,17,18,19,25,32,33}; //25 = white, 32 = yellow, 33 = blue

int scale_index = 0;//var to keep track fo which scale is being used
int note_index = 57;
int octave_index = 0;

int dcVal = 50;//value to control the decay of each note 
int padNumber = 0;//debug for printing pad values to OLED

////////////////////CHANGE THIS WHEN ADDING MORE SCALES
int numOfScales = 10 ;//indexed at zero (subtract 1) 
///////////////////////////////////////////////////////


int scale[8];

////////////////////////////////////////////////////////
void setup() 
{
  Serial.begin(115200);
  
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
  
  dc1.amplitude(0);
  dc2.amplitude(0);
  dc3.amplitude(0);
  dc4.amplitude(0);
  dc5.amplitude(0);
  dc6.amplitude(0);
  dc7.amplitude(0);
  dc8.amplitude(0);

  //initialize volume
  sgtl5000_1.enable();
  sgtl5000_1.volume(0.8);
  sgtl5000_1.lineOutLevel(5);

  changeScale();//start off at middle C
}
//////////////////////////////////////////////
void loop() 
{    
  //volumeCheck();//check the volume knob 

  touchCheck();//check if any of the capacitive pads have been touched

  for(int i =0; i<=9; i++)
  {
    Serial.print("Pin");
    Serial.print(i);
    Serial.print(" : ");
    Serial.print(touchRead(pinTouch[i]));  
    Serial.print(" ");
  }
  Serial.println();

  //dcValCheck();//check the decay knob

  //buttonCheck();//check for button presses to change the scale 
}
/////////////////////////////////////////////////////
void touchCheck()
{
  //Each capacitive touch pad will vary based on the size and material it is made of
  //The value necessary to trigger each note will require some trial and error to get the
  //sensitivity just right. Try adjusting these values to get the best response. 
    
    if (touchRead(pinTouch[0]) > 1800)
    {
      //once a pad is touched, a value from the note frquency froma table is looked up via a 2D table
      //with x corresponding to a scale and y corresponding to one of the eight notes on the drum. 
      
      if(octave_index == 1)
        sine1.frequency(note_frequency[scale[0]+12]);
      else if(octave_index == -1)
        sine1.frequency(note_frequency[scale[0]-12]);
      else if(octave_index == 2)
        sine1.frequency(note_frequency[scale[0]+24]);
      else if(octave_index == -2)
        sine1.frequency(note_frequency[scale[0]-24]);
      else 
        sine1.frequency(note_frequency[scale[0]]);
      dc1.amplitude(1.0, 5);
    }
    if (touchRead(pinTouch[0]) <= 1800) 
    {
      //once the pad is released, the note fades out with a decay val set by the dcVal knob
      dc1.amplitude(0, dcVal);
    }
      

    if (touchRead(pinTouch[1]) > 1800) 
    {
      if(octave_index == 1)
        sine2.frequency(note_frequency[scale[1]+12]);
      else if(octave_index == -1)
        sine2.frequency(note_frequency[scale[1]-12]);
      else if(octave_index == 2)
        sine2.frequency(note_frequency[scale[1]+24]);
      else if(octave_index == -2)
        sine2.frequency(note_frequency[scale[1]-24]);
      else 
        sine2.frequency(note_frequency[scale[1]]);
      dc2.amplitude(1.0, 5);
    }
    if (touchRead(pinTouch[1]) <= 1800) 
    {
      dc2.amplitude(0, dcVal);
    }

    
    if (touchRead(pinTouch[2]) > 1900)
    {
      if(octave_index == 1)
        sine3.frequency(note_frequency[scale[2]+12]);
      else if(octave_index == -1)
        sine3.frequency(note_frequency[scale[2]-12]);
      else if(octave_index == 2)
        sine3.frequency(note_frequency[scale[2]+24]);
      else if(octave_index == -2)
        sine3.frequency(note_frequency[scale[2]-24]);
      else 
        sine3.frequency(note_frequency[scale[2]]);
      dc3.amplitude(1.0, 5);
    }
    if (touchRead(pinTouch[2]) <= 1900) 
    {
      dc3.amplitude(0, dcVal);
    }
    

    if (touchRead(pinTouch[3]) > 1800)
    {
      if(octave_index == 1)
        sine4.frequency(note_frequency[scale[3]+12]);
      else if(octave_index == -1)
        sine4.frequency(note_frequency[scale[3]-12]);
      else if(octave_index == 2)
        sine4.frequency(note_frequency[scale[3]+24]);
      else if(octave_index == -2)
        sine4.frequency(note_frequency[scale[3]-24]);
      else 
        sine4.frequency(note_frequency[scale[3]]);
      dc4.amplitude(1.0, 5);
    }
    if (touchRead(pinTouch[3]) <= 1800)
    {
      dc4.amplitude(0, dcVal);
    }
       
    if (touchRead(pinTouch[4]) > 1800) 
    {
      if(octave_index == 1)
        sine5.frequency(note_frequency[scale[4]+12]);
      else if(octave_index == -1)
        sine5.frequency(note_frequency[scale[4]-12]);
      else if(octave_index == 2)
        sine5.frequency(note_frequency[scale[4]+24]);
      else if(octave_index == -2)
        sine5.frequency(note_frequency[scale[4]-24]);
      else 
        sine5.frequency(note_frequency[scale[4]]);
      dc5.amplitude(1.0, 5);
    }
    if (touchRead(pinTouch[4]) <= 1800)
    {
      dc5.amplitude(0, dcVal);
    }
    
    if (touchRead(pinTouch[5]) > 1800)
    {
      if(octave_index == 1)
        sine6.frequency(note_frequency[scale[5]+12]);
      else if(octave_index == -1)
        sine6.frequency(note_frequency[scale[5]-12]);
      else if(octave_index == 2)
        sine6.frequency(note_frequency[scale[5]+24]);
      else if(octave_index == -2)
        sine6.frequency(note_frequency[scale[5]-24]);
      else 
        sine6.frequency(note_frequency[scale[5]]);
      dc6.amplitude(1.0, 5);
    }
    if (touchRead(pinTouch[5]) <= 1800) 
    {
      dc6.amplitude(0, dcVal);
    }
    

   
    if (touchRead(pinTouch[6]) > 1800)
    {
      if(octave_index == 1)
        sine7.frequency(note_frequency[scale[6]+12]);
      else if(octave_index == -1)
        sine7.frequency(note_frequency[scale[6]-12]);
      else if(octave_index == 2)
        sine7.frequency(note_frequency[scale[6]+24]);
      else if(octave_index == -2)
        sine7.frequency(note_frequency[scale[6]-24]);
      else 
        sine7.frequency(note_frequency[scale[6]]);
      dc7.amplitude(1.0, 5);
    }
    if (touchRead(pinTouch[6]) <= 1800) 
    {
      dc7.amplitude(0, dcVal);
    }
    
   
    if (touchRead(pinTouch[7]) > 1700) 
    {
      if(octave_index == 1)
        sine8.frequency(note_frequency[scale[7]+12]);
      else if(octave_index == -1)
        sine8.frequency(note_frequency[scale[7]-12]);
      else if(octave_index == 2)
        sine8.frequency(note_frequency[scale[7]+24]);
      else if(octave_index == -2)
        sine8.frequency(note_frequency[scale[7]-24]);
      else 
        sine8.frequency(note_frequency[scale[7]]);
      dc8.amplitude(1.0, 5);
    }
    if (touchRead(pinTouch[7]) <= 1700) 
    {
      dc8.amplitude(0, dcVal);
    }


  
}
/*
//////////////////////////////////////////////////
void buttonCheck()
{
  button0.update();
  button1.update();
  foot0.update();
  foot1.update();

  //if button 0 is pressed, increment the scale being used
  if (button0.fallingEdge() && button1.fallingEdge())
  {
     debug = !debug;
  }
  if (button0.fallingEdge())
  { 
    
    note_index++;
    padNumber++;
    //check for overflow
    if(note_index > 68)
    {
      note_index = 57; 
    }
    if(padNumber > 7)
    {
      padNumber = 0;
    }
    octave_index = 0;
    changeScale();
  }

  //if button 1 is pressed, decrement the scale being used
  if (button1.fallingEdge())
  { 
    scale_index++;
    padNumber--;
    //check for overflow
    if(scale_index > numOfScales)
    {
      scale_index = 0;
    }
    if(padNumber < 0)
    {
      padNumber = 7;
    } 

    octave_index = 0;
    changeScale();
  }

  //if foot pedal 0 is pressed, increment the octave 
  if (foot0.risingEdge())
  { 
    octave_index++;

    if(octave_index > 2)
    octave_index = 2;
  }

  //if button 1 is pressed, decrement the scale being used
  if (foot1.risingEdge())
  { 
    octave_index--;

    if(octave_index < -2)
    octave_index = -2;
  }
  

}

*/
void changeScale()
{
  //Change numOfScales variable at top if adding new scale!!
  
  int root = note_index;
  
  if(scale_index == 0)//Major Scale  2,2,3,2,3,2,2  (WholeStep, WS, WS+HalfStep, WS, WS+HS, WS, WS)
  {         
      scale[0] = root;
      scale[1] = root+2;
      scale[2] = root+4;
      scale[3] = root+7;
      scale[4] = root+9;
      scale[5] = root+12;
      scale[6] = root+14;
      scale[7] = root+16;
  }
  if(scale_index == 1)//Minor Scale  3,2,2,3,2,3,2
  {
      scale[0] = root;
      scale[1] = root+3;
      scale[2] = root+5;
      scale[3] = root+7;
      scale[4] = root+10;
      scale[5] = root+12;
      scale[6] = root+15;
      scale[7] = root+17;
  }
  if(scale_index == 2)//Akebono Scale  2,1,4,1,4,2,1
  {
      scale[0] = root;
      scale[1] = root+2;
      scale[2] = root+3;
      scale[3] = root+7;
      scale[4] = root+8;
      scale[5] = root+12;
      scale[6] = root+14;
      scale[7] = root+15;
  }
  if(scale_index == 3)//Pygmy Scale  2,1,4,3,2,2,1
  {
      scale[0] = root;
      scale[1] = root+2;
      scale[2] = root+3;
      scale[3] = root+7;
      scale[4] = root+10;
      scale[5] = root+12;
      scale[6] = root+14;
      scale[7] = root+15;
  }
  if(scale_index == 4)//Equinox Scale  4,1,2,2,2,1,4
  {
      scale[0] = root;
      scale[1] = root+4;
      scale[2] = root+5;
      scale[3] = root+7;
      scale[4] = root+9;
      scale[5] = root+11;
      scale[6] = root+12;
      scale[7] = root+16;
  }
  if(scale_index == 5)//Sapphire    3,2,4,1,2,3,2
  {
      scale[0] = root;
      scale[1] = root+3;
      scale[2] = root+5;
      scale[3] = root+9;
      scale[4] = root+10;
      scale[5] = root+12;
      scale[6] = root+15;
      scale[7] = root+17;
  }
  if(scale_index == 6)//Gypsy    1,3,1,2,1,2,2
  {
      scale[0] = root;
      scale[1] = root+1;
      scale[2] = root+4;
      scale[3] = root+5;
      scale[4] = root+7;
      scale[5] = root+8;
      scale[6] = root+10;
      scale[7] = root+12;
  }
  if(scale_index == 7)//Silver Spring  4,1,2,2,3,4,1
  {
      scale[0] = root;
      scale[1] = root+4;
      scale[2] = root+5;
      scale[3] = root+7;
      scale[4] = root+9;
      scale[5] = root+12;
      scale[6] = root+16;
      scale[7] = root+17;
  }  
  if(scale_index == 8)//Integral  2,1,4,1,2,2,2
  {
      scale[0] = root;
      scale[1] = root+2;
      scale[2] = root+3;
      scale[3] = root+7;
      scale[4] = root+8;
      scale[5] = root+10;
      scale[6] = root+12;
      scale[7] = root+14;
  }  
  if(scale_index == 9)//Dorian  2,1,2,2,2,3,2
  {
      scale[0] = root;
      scale[1] = root+2;
      scale[2] = root+3;
      scale[3] = root+5;
      scale[4] = root+7;
      scale[5] = root+9;
      scale[6] = root+12;
      scale[7] = root+14;
  }  
  if(scale_index == 10)//Golden Arcadia  4,3,4,1,2,4,1
  {
      scale[0] = root;
      scale[1] = root+4;
      scale[2] = root+7;
      scale[3] = root+11;
      scale[4] = root+12;
      scale[5] = root+14;
      scale[6] = root+18;
      scale[7] = root+19;
  }  
}
