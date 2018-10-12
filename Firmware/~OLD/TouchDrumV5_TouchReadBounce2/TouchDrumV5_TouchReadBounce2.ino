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
#include <SPI.h>
#include <TeensyView.h>
#include <SerialFlash.h>
//#include <TouchReadBounce.h>
#include "note_frequency.h"
#include "TeensyAudioDesignTool.h"

//Change this to 1 for serial.print data
#define serialDebug 0

//////////ARRAYS////////////////

//MIDI
// the MIDI channel number to send messages
const int channel = 1;
int midiNoteFlag[] = {0,0,0,0,0,0,0,0};

//CAP TOUCH PINS
//Milled proto pinout
int pinTouch[] = {17,32,19,33,1,15,18,16,0,25};
//Touch Drum pinout
//int pinTouch[] = {0,1,15,16,17,18,19,25,32,33};

int touchThreshold[] = {1300,1300,1300,1300,1300,1300,1300,1300,1300,1300};

int scale[8];//holds current scale frequency values 
int midiNote[8]; //holds curren scale's MIDI values 

////////////////OLED pins (Requires TeensyView mod)
#define PIN_RESET 2
#define PIN_DC    21
#define PIN_CS    20
#define PIN_SCK   14
#define PIN_MOSI  7

//Instantiate OLED object
TeensyView oled(PIN_RESET, PIN_DC, PIN_CS, PIN_SCK, PIN_MOSI);

///////////////Potentieometrs
#define volKnob A13 //grey wire 
#define decayKnob A12 //black wire 

///////////////Variables
int scale_index = 0;//var to keep track of which scale is being used
int note_index = 57;//picks a frequency from the table in note_frequecy.h; starts at 220H A index 57
int midi_index = 33;//picks MIDI note to play from table in note_frequency.h 
int octave_index = 0;//keeps track of which octave should be played

float vol = 0;
int dcVal = 0;//value to control the decay of each note 
int padNumber = 0;//debug for printing pad values to OLED

//////////////////CAP TOUCH BUTTONS/////////////
int buttonLeft = pinTouch[8];
int buttonRight = pinTouch[9];

int leftThreshold = touchThreshold[8];
int rightThreshold = touchThreshold[9];

//int buttonLeftState = 0; // the current state of the output pin  
//int buttonRightState = 0; // the current state of the output pin  

int touchReadingLeft; // the current reading from the input pin  
int previousTouchReadingLeft; // the previous reading from the input pin  

int touchReadingRight; // the current reading from the input pin  
int previousTouchReadingRight; // the previous reading from the input pin 

// the follow variables are long's because the time, measured in milliseconds  
// will quickly become a bigger number than can be stored in an int.  
long previousTimeLeft = 0;                   // the last time the output pin was toggled  
long previousTimeRight = 0; 
uint8_t debounce = 200; 

////////////////////CHANGE THIS WHEN ADDING MORE SCALES
int numOfScales = 10 ;//indexed at zero (subtract 1) 
////////////////////////////////////////////////////////
void setup() 
{
  if(serialDebug ==1)
  {
    Serial.begin(115200);
  }
  
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

  //Initilize Volaume
  vol = (float)analogRead(volKnob) / 1280.0;
  //Initialize Decay Knob
  dcVal = map(analogRead(decayKnob), 0, 1023, 2, 1000);

  previousTouchReadingLeft = touchRead(buttonLeft);
  previousTouchReadingRight = touchRead(buttonRight);
  
  //Initialize the OLED
  oled.begin();
  // clear(ALL) will clear out the OLED's graphic memory.
  // clear(PAGE) will clear the Arduino's display buffer.
  oled.clear(ALL);  // Clear the display's memory (gets rid of artifacts)
  //oled.clear(PAGE);
  // To actually draw anything on the display, you must call the display() function.
  oled.display();
  // Give the splash screen some time to shine (Splachscreen array lives inside the TeensyView.cpp file)
  delay(5000);

}
//////////////////////////////////////////////
void loop() 
{    
  volumeCheck();//check the volume knob
   
  dcValCheck();//check the decay knob

  touchCheck();//check if any of the capacitive pads have been touched

  oledPrint();//print to TeensyView

  if(serialDebug == 1)
  {
    serialDebugPrint();
  }
}
/////////////////////////////////////////////////////
void volumeCheck()
{
  //vol = (float)analogRead(volKnob) / 1280.0;
  
  float newReading = (float)analogRead(volKnob) / 1280.0;
  
  if( vol != newReading )
  {
    vol = newReading;
    mixerMain.gain(0, vol);
    mixerMain.gain(1, vol);
  }
}
/////////////////////////////////////////////////////
void dcValCheck()
{
  //check knob and set value as delay on dc constant for sine wave decay
  //dcVal = map(analogRead(decayKnob), 0, 1023, 2, 1000);

  float newReading = map(analogRead(decayKnob), 0, 1023, 2, 999);

  if( dcVal != newReading )
  {
    dcVal = newReading;
  }
}
/////////////////////////////////////////////////////
void oledPrint()
{
  oled.clear(PAGE);
  
  oled.setCursor(0, 0);
  oled.print("Scale = ");  

  if(note_index == 60)
  oled.print("C ");
  if(note_index == 61)
  oled.print("C# ");
  if(note_index == 62)
  oled.print("D ");
  if(note_index == 63)
  oled.print("D# ");
  if(note_index == 64)
  oled.print("E ");
  if(note_index == 65)
  oled.print("F ");
  if(note_index == 66)
  oled.print("F# ");
  if(note_index == 67)
  oled.print("G ");
  if(note_index == 68)
  oled.print("G# ");
  if(note_index == 57)
  oled.print("A ");
  if(note_index == 58)
  oled.print("A# ");
  if(note_index == 59)
  oled.print("B ");

  
  if(scale_index == 0)
  oled.print("Major");
  if(scale_index == 1)
  oled.print("Minor");
  if(scale_index == 2)
  oled.print("Akebono");
  if(scale_index == 3)
  oled.print("Pygmy");
  if(scale_index == 4)
  oled.print("Equinox");
  if(scale_index == 5)
  oled.print("Sapphire");
  if(scale_index == 6)
  oled.print("Gypsy");
  if(scale_index == 7)
  oled.print("SlvrSpring");
  if(scale_index == 8)
  oled.print("Integral");
  if(scale_index == 9)
  oled.print("Dorian");
  if(scale_index == 10)
  oled.print("GldArcadia");

  oled.setCursor(0, 8);
  oled.print("Volume = ");
  int newVol = map(vol, 0.0, 0.8, 0, 100);
  oled.print(newVol);
  oled.print("%");
  
  oled.setCursor(0, 16);
  oled.print("Decay = ");
  oled.print((int)dcVal/10);
  oled.print("%  Oct:");
  oled.print(octave_index);


  oled.setCursor(0, 24);
  oled.print("Pad ");
  oled.print(padNumber);
  oled.print(" = ");
  oled.print(touchRead(pinTouch[padNumber]));
  
 /* 
  oled.setCursor(0, 24);
  oled.print("Batt = ");  
  oled.print(percentage);
  oled.print("% ");
  oled.print(voltage);
  oled.print("V");
  oled.display();
  */
 oled.display();
  delay(10);
}
/////////////////////////////////////////////////////

void serialDebugPrint()
{
  for(int i =0; i<=9; i++)
  {
    Serial.print("Pad");
    Serial.print(i+1);
    Serial.print(" : ");
    Serial.print(touchRead(pinTouch[i]));  
    Serial.print(" ");

  }
    Serial.println();
    Serial.print("Vol:");
    Serial.print(vol);
    Serial.print(" Decay:");
    Serial.println(dcVal);
}
/////////////////////////////////////////////////////
void touchCheck()
{
  //Each capacitive touch pad will vary based on the size and material it is made of
  //The value necessary to trigger each note will require some trial and error to get the
  //sensitivity just right. Try adjusting these values to get the best response. 


  for(int i=0; i<=7; i++)//cycle through the fist 8 touch pads to see if they are being played
  { 
    if (touchRead(pinTouch[i]) > touchThreshold[i])
    {
      //once a pad is touched, a value from the note frquency froma table is looked up via a 2D table
      //with x corresponding to a scale and y corresponding to one of the eight notes on the drum. 
      
      if(octave_index == 1)
      {
        switch (i) 
        {
        case 0:
          sine1.frequency(note_frequency[scale[i]+12]);
          break;
        case 1:
          sine2.frequency(note_frequency[scale[i]+12]);
          break;
        case 2:
          sine3.frequency(note_frequency[scale[i]+12]);
          break;
        case 3:
          sine4.frequency(note_frequency[scale[i]+12]);
          break;
        case 4:
          sine5.frequency(note_frequency[scale[i]+12]);
          break;
        case 5:
          sine6.frequency(note_frequency[scale[i]+12]);
          break;
        case 6:
          sine7.frequency(note_frequency[scale[i]+12]);
          break;
        case 7:
          sine8.frequency(note_frequency[scale[i]+12]);
          break;
        }
          
        if(midiNoteFlag[i] == 0)
        {
          usbMIDI.sendNoteOn(midiNoteTable[midiNote[i]]+12, map(dcVal, 2, 999, 1, 127), channel);  
          midiNoteFlag[i] = 1;
        }
      }
      else if(octave_index == 2)
      {
        switch (i) 
        {
        case 0:
          sine1.frequency(note_frequency[scale[i]+24]);
          break;
        case 1:
          sine2.frequency(note_frequency[scale[i]+24]);
          break;
        case 2:
          sine3.frequency(note_frequency[scale[i]+24]);
          break;
        case 3:
          sine4.frequency(note_frequency[scale[i]+24]);
          break;
        case 4:
          sine5.frequency(note_frequency[scale[i]+24]);
          break;
        case 5:
          sine6.frequency(note_frequency[scale[i]+24]);
          break;
        case 6:
          sine7.frequency(note_frequency[scale[i]+24]);
          break;
        case 7:
          sine8.frequency(note_frequency[scale[i]+24]);
          break;
        }
        if(midiNoteFlag[i] == 0)
        {
          usbMIDI.sendNoteOn(midiNoteTable[midiNote[i]]+24, map(dcVal, 2, 999, 1, 127), channel);  
          midiNoteFlag[i] = 1;
        }
      }
      else if(octave_index == -1)
      {
        switch (i) 
        {
        case 0:
          sine1.frequency(note_frequency[scale[i]-12]);
          break;
        case 1:
          sine2.frequency(note_frequency[scale[i]-12]);
          break;
        case 2:
          sine3.frequency(note_frequency[scale[i]-12]);
          break;
        case 3:
          sine4.frequency(note_frequency[scale[i]-12]);
          break;
        case 4:
          sine5.frequency(note_frequency[scale[i]-12]);
          break;
        case 5:
          sine6.frequency(note_frequency[scale[i]-12]);
          break;
        case 6:
          sine7.frequency(note_frequency[scale[i]-12]);
          break;
        case 7:
          sine8.frequency(note_frequency[scale[i]-12]);
          break;
        }
        if(midiNoteFlag[i] == 0)
        {
          usbMIDI.sendNoteOn(midiNoteTable[midiNote[i]]-12, map(dcVal, 2, 999, 1, 127), channel);  
          midiNoteFlag[i] = 1;
        }
      }     
      else if(octave_index == -2)
      {
        switch (i) 
        {
        case 0:
          sine1.frequency(note_frequency[scale[i]-24]);
          break;
        case 1:
          sine2.frequency(note_frequency[scale[i]-24]);
          break;
        case 2:
          sine3.frequency(note_frequency[scale[i]-24]);
          break;
        case 3:
          sine4.frequency(note_frequency[scale[i]-24]);
          break;
        case 4:
          sine5.frequency(note_frequency[scale[i]-24]);
          break;
        case 5:
          sine6.frequency(note_frequency[scale[i]-24]);
          break;
        case 6:
          sine7.frequency(note_frequency[scale[i]-24]);
          break;
        case 7:
          sine8.frequency(note_frequency[scale[i]-24]);
          break;
        }
        if(midiNoteFlag[i] == 0)
        {
          usbMIDI.sendNoteOn(midiNoteTable[midiNote[i]]-24, map(dcVal, 2, 999, 1, 127), channel);  
          midiNoteFlag[i] = 1;
        }
      }
      else 
      {
        switch (i) 
        {
        case 0:
          sine1.frequency(note_frequency[scale[i]]);
          break;
        case 1:
          sine2.frequency(note_frequency[scale[i]]);
          break;
        case 2:
          sine3.frequency(note_frequency[scale[i]]);
          break;
        case 3:
          sine4.frequency(note_frequency[scale[i]]);
          break;
        case 4:
          sine5.frequency(note_frequency[scale[i]]);
          break;
        case 5:
          sine6.frequency(note_frequency[scale[i]]);
          break;
        case 6:
          sine7.frequency(note_frequency[scale[i]]);
          break;
        case 7:
          sine8.frequency(note_frequency[scale[i]]);
          break;
        }
        if(midiNoteFlag[i] == 0)
        {
          usbMIDI.sendNoteOn(midiNoteTable[midiNote[i]], map(dcVal, 2, 999, 1, 127), channel);  
          midiNoteFlag[i] = 1;
        }
      }

      //turn on the waveform and prodcue sound
        switch (i) 
        {
        case 0:
          dc1.amplitude(1.0, 5);          
          break;
        case 1:
          dc2.amplitude(1.0, 5);
          break;
        case 2:
          dc3.amplitude(1.0, 5);
          break;
        case 3:
          dc4.amplitude(1.0, 5);
          break;
        case 4:
          dc5.amplitude(1.0, 5);
          break;
        case 5:
          dc6.amplitude(1.0, 5);
          break;
        case 6:
          dc7.amplitude(1.0, 5);
          break;
        case 7:
          dc8.amplitude(1.0, 5);
          break;
        }

    }
    else if(touchRead(pinTouch[i]) <= touchThreshold[i]) 
    {
      //once the pad is released, the note fades out with a decay val set by the dcVal knob
        switch (i) 
        {
        case 0:
          dc1.amplitude(0, dcVal);          
          break;
        case 1:
          dc2.amplitude(0, dcVal);
          break;
        case 2:
          dc3.amplitude(0, dcVal);
          break;
        case 3:
          dc4.amplitude(0, dcVal);
          break;
        case 4:
          dc5.amplitude(0, dcVal);
          break;
        case 5:
          dc6.amplitude(0, dcVal);
          break;
        case 6:
          dc7.amplitude(0, dcVal);
          break;
        case 7:
          dc8.amplitude(0, dcVal);
          break;
        }
      
      //Send MIDI Note OFF command
      if(midiNoteFlag[i] == 1)
      {
        if(octave_index == 1)
          usbMIDI.sendNoteOff(midiNoteTable[midiNote[i]+12], map(dcVal, 2, 999, 1, 127), channel);
        else if(octave_index == 2)
          usbMIDI.sendNoteOff(midiNoteTable[midiNote[i]+24], map(dcVal, 2, 999, 1, 127), channel);
        else if(octave_index == -1)
          usbMIDI.sendNoteOff(midiNoteTable[midiNote[i]-12], map(dcVal, 2, 999, 1, 127), channel);
        else if(octave_index == -2)
          usbMIDI.sendNoteOff(midiNoteTable[midiNote[i]-24], map(dcVal, 2, 999, 1, 127), channel);
        else
          usbMIDI.sendNoteOff(midiNoteTable[midiNote[i]], map(dcVal, 2, 999, 1, 127), channel);

          
        midiNoteFlag[i] = 0;
      }  
    }   
  }//end for loop



   //Check the remaining two cap tuch buttons to see if new settings are desired
     touchReadingLeft = touchRead(buttonLeft);
    if (touchReadingLeft > leftThreshold && previousTouchReadingLeft < leftThreshold && millis() - previousTimeLeft > debounce)
    {
      
      note_index++;//increment note index which changes the root note of each scale
      midi_index++;//increment MIDI index which changes the root of the MIDI notes sent
      //there is no decrement

      //check for overflow
      if(note_index > 68)//if we're at G# (G#4 in this case), loop back around to A
      {
        note_index = 57; //starts off at A3 in table in note_frequency.h
        //the octave index is handled in the touchRead() function and will move the active octave up and down
      }
      if(midi_index > 44)//if we're at G# (G#4 in this case), loop back around to A
      {
        midi_index = 33; //starts off at A3 in table in note_frequency.h
        //the octave index is handled in the touchRead() function and will move the active octave up and down
      }
      
      padNumber++;//for debugging pad numbers, cycling through left and right will also display touch values

      //check for overflow
      if(padNumber > 7)
      {
        padNumber = 0;
      }
      
      octave_index = 0;//set the octave index back to 0 everytime a new Key is selected
      
      changeScale();//change to Key with new parameters 

      previousTimeLeft = millis();
    }
    
    previousTouchReadingLeft = touchReadingLeft;


    touchReadingRight = touchRead(buttonRight);
    if (touchReadingRight > rightThreshold && previousTouchReadingRight < rightThreshold && millis() - previousTimeRight > debounce)
    {
      scale_index++;//increment scale index which changes the scale to be played
      //there is no decrement
  
      //check for overflow
      if(scale_index > numOfScales)
      {
        scale_index = 0;
      }
      
      padNumber--;//for debugging pad numbers, cycling through left and right will also display touch values
  
      //check for overflow
      if(padNumber < 0)
      {
        padNumber = 7;
      } 
  
      octave_index = 0;//set the octave index back to 0 everytime a new scale is selected
      
      changeScale();//change to scale with new parameters 
      
      previousTimeRight = millis();
    }
    
    previousTouchReadingRight = touchReadingRight;
    
    while (usbMIDI.read()) {
    // ignore incoming messages
  }
}
/////////////////////////////////////////////////////
void changeScale()
{
  //Change numOfScales variable at top if adding new scale!!

  //This picks form a number of scaes with different patterns
  //Using the root index allows us to play these scales with any root key. 
  int root = note_index;
  int midiRoot = midi_index;
  
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

      midiNote[0] = midiRoot;
      midiNote[1] = midiRoot+2;
      midiNote[2] = midiRoot+4;
      midiNote[3] = midiRoot+7;
      midiNote[4] = midiRoot+9;
      midiNote[5] = midiRoot+12;
      midiNote[6] = midiRoot+14;
      midiNote[7] = midiRoot+16;
      
      
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

      midiNote[0] = midiRoot;
      midiNote[1] = midiRoot+3;
      midiNote[2] = midiRoot+5;
      midiNote[3] = midiRoot+7;
      midiNote[4] = midiRoot+10;
      midiNote[5] = midiRoot+12;
      midiNote[6] = midiRoot+15;
      midiNote[7] = midiRoot+17;
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

      midiNote[0] = midiRoot;
      midiNote[1] = midiRoot+2;
      midiNote[2] = midiRoot+3;
      midiNote[3] = midiRoot+7;
      midiNote[4] = midiRoot+8;
      midiNote[5] = midiRoot+12;
      midiNote[6] = midiRoot+14;
      midiNote[7] = midiRoot+15;
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

      midiNote[0] = midiRoot;
      midiNote[1] = midiRoot+2;
      midiNote[2] = midiRoot+3;
      midiNote[3] = midiRoot+7;
      midiNote[4] = midiRoot+10;
      midiNote[5] = midiRoot+12;
      midiNote[6] = midiRoot+14;
      midiNote[7] = midiRoot+15;
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

      midiNote[0] = midiRoot;
      midiNote[1] = midiRoot+4;
      midiNote[2] = midiRoot+5;
      midiNote[3] = midiRoot+7;
      midiNote[4] = midiRoot+9;
      midiNote[5] = midiRoot+11;
      midiNote[6] = midiRoot+12;
      midiNote[7] = midiRoot+16;
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

      midiNote[0] = midiRoot;
      midiNote[1] = midiRoot+3;
      midiNote[2] = midiRoot+5;
      midiNote[3] = midiRoot+9;
      midiNote[4] = midiRoot+10;
      midiNote[5] = midiRoot+12;
      midiNote[6] = midiRoot+15;
      midiNote[7] = midiRoot+17;
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

      midiNote[0] = midiRoot;
      midiNote[1] = midiRoot+1;
      midiNote[2] = midiRoot+4;
      midiNote[3] = midiRoot+5;
      midiNote[4] = midiRoot+7;
      midiNote[5] = midiRoot+8;
      midiNote[6] = midiRoot+10;
      midiNote[7] = midiRoot+12;
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

      midiNote[0] = midiRoot;
      midiNote[1] = midiRoot+4;
      midiNote[2] = midiRoot+5;
      midiNote[3] = midiRoot+7;
      midiNote[4] = midiRoot+9;
      midiNote[5] = midiRoot+12;
      midiNote[6] = midiRoot+16;
      midiNote[7] = midiRoot+17;
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

      midiNote[0] = midiRoot;
      midiNote[1] = midiRoot+2;
      midiNote[2] = midiRoot+3;
      midiNote[3] = midiRoot+7;
      midiNote[4] = midiRoot+8;
      midiNote[5] = midiRoot+10;
      midiNote[6] = midiRoot+12;
      midiNote[7] = midiRoot+14;
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

      midiNote[0] = midiRoot;
      midiNote[1] = midiRoot+2;
      midiNote[2] = midiRoot+3;
      midiNote[3] = midiRoot+5;
      midiNote[4] = midiRoot+7;
      midiNote[5] = midiRoot+9;
      midiNote[6] = midiRoot+12;
      midiNote[7] = midiRoot+14;
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

      midiNote[0] = midiRoot;
      midiNote[1] = midiRoot+4;
      midiNote[2] = midiRoot+7;
      midiNote[3] = midiRoot+11;
      midiNote[4] = midiRoot+12;
      midiNote[5] = midiRoot+14;
      midiNote[6] = midiRoot+18;
      midiNote[7] = midiRoot+19;
  }  
}

/*
//////////////////////////////////////////////////
void buttonCheck()
{
  //button0.update();
  //button1.update();
  //foot0.update();
  //foot1.update();

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
