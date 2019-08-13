/**********************************
 * Joel E B
 * Meow Wolf
 * 10-28-18
 * 
 * This sketch integrates the multiple parts of the Scpeail Object PCB 
 * into one place:
 * 
 * * Adafruit_DRV2605 Library to control the haptic motor
 *    https://github.com/adafruit/Adafruit_DRV2605_Library
 * * The NeoPixelBus library to control the WS2812 LEDs while using WiFi
 *    https://github.com/chrismelba/NeoPixelBus
 * * After trying many different library for the MAZ17048, the follwoing was chosen
 *    https://github.com/alikian/ArduinoLib_MAX17048
 *    
 *    Three others were tried:
 *    The Qduino version: https://github.com/sparkfun/Arduino_Boards
 *    The one found in the Library Manager: https://github.com/hideakitai/MAX17048
 *    And this one: https://github.com/mjbcopland/MAX17048
 *    
 *    #2 didn't compile for the ESP32 at all. #1 is from the Qduino Mini and 
 *    would require porting to it's own library and has very limited functionality. 
 *    #3 had an incomplete example, and thus it's functionality is unknown. 
 *    
 *    The current library for the Fuel Gauge seems to be off by 0.1V when reading the battery voltage.
 * *******************************/
 

#include <Wire.h>
#include "Adafruit_DRV2605.h"
#include <MAX17048.h>
#include <WiFi.h>
#include <NeoPixelBus.h>

const uint16_t PixelCount = 30;
const uint8_t PixelPin = 32; // Ignored for Esp8266

//#define BattAnalogRead A13
#define alert 21
#define led 13

// WiFi network name and password:
//const char * networkName = "mw-admin";
//const char * networkPswd = "soundteampogo";
const char * networkName = "Linksucks";
const char * networkPswd = "sophiebutter";

// Set web server port number to 80
WiFiServer server(80);

// Variable to store the HTTP request
String header;

// Auxiliar variables to store the current output state
String ledState = "off";
String motorState = "off";

float voltage;
float percentage;
uint8_t battAlertThreshold;

bool hapticEnable = 0;

//int counter = 0;
uint8_t effect = 16;

//Object instances
MAX17048 battery;
Adafruit_DRV2605 drv;

NeoPixelBus<NeoGrbFeature, Neo800KbpsMethod> strip(PixelCount, PixelPin);

int counter = 0;
unsigned long previousTime = 0;

void setup()
{
  Serial.begin(115200);
  //pinMode(BattAnalogRead, INPUT);
  pinMode(led, OUTPUT);

  //Initialize Fuel Guage
  Wire.begin();
  delay(100);
  battery.reset();
  battery.quickStart();

  drv.begin();
  drv.selectLibrary(1);
  // I2C trigger by sending 'go' command 
  // default, internal trigger when sending GO command
  drv.setMode(DRV2605_MODE_INTTRIG); 

  connectToWiFi(networkName, networkPswd);

  
  strip.Begin();
  //strip.setBrightness(10);
  strip.Show();

  previousTime = millis();

  server.begin();
}

RgbColor color;
uint8_t pos;

void loop()
{
   getBattery();

   
   if(hapticEnable == 1)
   {
     hapticMotor();
   }

   
   if(millis() - previousTime > 300000)//30000 = 30 seconds, 300000 = 5 min
   {
     for(int i = 0; i < 10; i++)
     {
       hapticMotor();
     }
     previousTime = millis();  
   }
 
   counter++;
   if(counter == 10)
   {
     LEDloop();
     counter = 0; 
   }
   //printInfo();
   serverGo();
}
void getBattery()
{
  // Get the values from the Fuel Gauge 
  voltage = battery.getVCell();
  percentage = battery.getSoC();
}
void LEDloop()
{
  for(uint16_t j=0; j<256; j++) // complete 5 cycles around the color wheel
  { 
    for(uint16_t i=0; i<PixelCount; i++)
    {
      // generate a value between 0~255 according to the position of the pixel
      // along the strip
      pos = ((i*256/PixelCount)+j) & 0xFF;
      // calculate the color for the ith pixel
      color = Wheel( pos );
      // set the color of the ith pixel
      strip.SetPixelColor(i, color);
    }
    strip.Show();
    //strip.Darken(100);
    //delay(50);
  }   
}
void hapticMotor()
{
  // set the effect to play
  drv.setWaveform(0, effect);  // play effect 
  drv.setWaveform(1, 0);       // end waveform

  // play the effect!
  drv.go();
  delay(500);

  //effect++;
  //if (effect > 117) effect = 1;  
}

void printInfo()
{
  Serial.print("Batt = ");  
  Serial.print(percentage);
  Serial.print("%, ");
  Serial.print(voltage);
  Serial.print("V");
//  Serial.print("; A13 = ");
//  Serial.print(analogRead(BattAnalogRead));
//  Serial.print(", Calculated V @ A13 = ");
//  Serial.print(  (analogRead(BattAnalogRead) * .00093)*2 );
//  Serial.print("V; ");
  Serial.print(", BuzzerEffect: "); 
  Serial.println(effect);
  delay(500);  
}
void connectToWiFi(const char * ssid, const char * pwd)
{
  Serial.println("Connecting to WiFi network: " + String(ssid));

  WiFi.begin(ssid, pwd);

  while (WiFi.status() != WL_CONNECTED) 
  {
    Serial.print(".");
  }

  Serial.println();
  Serial.println("WiFi connected!");
  Serial.print("IP address: ");
  Serial.println(WiFi.localIP());
}

void serverGo()
{
  WiFiClient client = server.available();   // Listen for incoming clients

  if (client) {                             // If a new client connects,
    Serial.println("New Client.");          // print a message out in the serial port
    String currentLine = "";                // make a String to hold incoming data from the client
    while (client.connected()) {            // loop while the client's connected
      if (client.available()) {             // if there's bytes to read from the client,
        char c = client.read();             // read a byte, then
        Serial.write(c);                    // print it out the serial monitor
        header += c;
        if (c == '\n') {                    // if the byte is a newline character
          // if the current line is blank, you got two newline characters in a row.
          // that's the end of the client HTTP request, so send a response:
          if (currentLine.length() == 0) {
            // HTTP headers always start with a response code (e.g. HTTP/1.1 200 OK)
            // and a content-type so the client knows what's coming, then a blank line:
            client.println("HTTP/1.1 200 OK");
            client.println("Content-type:text/html");
            client.println("Connection: close");
            client.println();

          
            // turns the GPIOs on and off
            if (header.indexOf("GET /13/on") >= 0) 
            {
              ledState = "on";
              digitalWrite(led, HIGH);
            } else if (header.indexOf("GET /13/off") >= 0) 
            {
              ledState = "off";
              digitalWrite(led, LOW);
            }
            if (header.indexOf("GET /motor/on") >= 0) 
            {
              motorState = "on";
              hapticEnable = 1;
            } else if (header.indexOf("GET /motor/off") >= 0) 
            {
              motorState = "off";
              hapticEnable = 0;
            }

            
            // Display the HTML web page
            client.println("<!DOCTYPE html><html>");
            client.println("<head><meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">");
            client.println("<link rel=\"icon\" href=\"data:,\">");
            // CSS to style the on/off buttons 
            // Feel free to change the background-color and font-size attributes to fit your preferences
            client.println("<style>html { font-family: Helvetica; display: inline-block; margin: 0px auto; text-align: center;}");
            client.println(".button { background-color: #4CAF50; border: none; color: white; padding: 16px 40px;");
            client.println("text-decoration: none; font-size: 30px; margin: 2px; cursor: pointer;}");
            client.println(".button2 {background-color: #555555;}</style></head>");
            
            // Web Page Heading
            client.println("<body><h1>Brian & Joel's Kick-Ass Battery Testing Server</h1>");
            client.println("<h1><img src=\"http://openponics.com/imgs/battery.png\" width=\"500\" height=\"350\"></h1>");
    
            client.println("<p>Battery State of Charge: " );
            client.println(percentage);
            client.println("%</p>");
            client.println("<p>Battery Voltage: " );
            client.println(voltage);
            client.println("V</p>");   
            client.println("<p>Battery Alert Threshold: " );
            client.println(battAlertThreshold);
            client.println("%</p>");          

            // Display current state, and ON/OFF buttons for GPIO 13  
            client.println("<p>LED 13: " + ledState + "</p>");
            // If the output27State is off, it displays the ON button       
            if (ledState=="off") {
              client.println("<p><a href=\"/13/on\"><button class=\"button\">ON</button></a></p>");
            } else {
              client.println("<p><a href=\"/13/off\"><button class=\"button button2\">OFF</button></a></p>");
            }


            // Display current state of motor 
            client.println("<p>Motor: " + motorState + "</p>");
            // If the output27State is off, it displays the ON button       
            if (motorState=="off") {
              client.println("<p><a href=\"/motor/on\"><button class=\"button\">MOTOR ON</button></a></p>");
            } else {
              client.println("<p><a href=\"/motor/off\"><button class=\"button button2\">MOTOR OFF</button></a></p>");
            }
            
            client.println("</body></html>");
            
            // The HTTP response ends with another blank line
            client.println();
            // Break out of the while loop
            break;
          } else { // if you got a newline, then clear currentLine
            currentLine = "";
          }
        } else if (c != '\r') {  // if you got anything else but a carriage return character,
          currentLine += c;      // add it to the end of the currentLine
        }
      }
    }
    // Clear the header variable
    header = "";
    // Close the connection
    client.stop();
    Serial.println("Client disconnected.");
    Serial.println("");
  }
}

// Input a value 0 to 255 to get a color value.
// The colours are a transition r - g - b - back to r.
RgbColor Wheel(uint8_t WheelPos) 
{
  WheelPos = 255 - WheelPos;
  if(WheelPos < 85) 
  {
    return RgbColor(255 - WheelPos * 3, 0, WheelPos * 3);
  } else if(WheelPos < 170) 
  {
    WheelPos -= 85;
    return RgbColor(0, WheelPos * 3, 255 - WheelPos * 3);
  } else 
  {
    WheelPos -= 170;
    return RgbColor(WheelPos * 3, 255 - WheelPos * 3, 0);
  }
}
