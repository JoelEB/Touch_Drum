//an array to define each of the eight touch sense pins, 
//all other touch sense pins are used by the Teensy Audio Shield (16,17,18,19)
int pinTouch[] = {0,1,15,16,17,25,32,33};

////////////////////////////////////////////////////////
void setup() 
{  
  //initialize Serial
  Serial.begin(115200);
  
}
//////////////////////////////////////////////
void loop() 
{     
  for(int i =0;i<8;i++)
  {
    Serial.print("Pin");
    Serial.print(i);
    Serial.print(" : ");
    Serial.print(touchRead(pinTouch[i]));  
    Serial.print(" ");
  }
  Serial.print("Read: ");
  Serial.print(analogRead(A16));
  Serial.println();
}

