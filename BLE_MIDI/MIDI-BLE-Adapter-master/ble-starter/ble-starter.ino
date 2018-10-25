#include <BLEPeripheral.h>

#define BLUE_STAT_PIN     7   // LED on pin 7
#define BTN_PIN	          6   // User button 

// create peripheral instance, see pinouts above
//const char * localName = "nRF52832 MIDI";
BLEPeripheral blePeripheral;
BLEService service("03B80E5A-EDE8-4B33-A751-6CE34EC4C700");
BLECharacteristic characteristic("7772E5DB-3868-4112-A1A9-F2669D106BF3", BLERead | BLEWriteWithoutResponse | BLENotify, 20 );
BLEDescriptor descriptor = BLEDescriptor("2902", 0);

void setup() {
	Serial.begin(115200);
	delay(3000);
	Serial.println("Program Started");
	
	//Setup diag leds
	pinMode(BLUE_STAT_PIN, OUTPUT);
	digitalWrite(BLUE_STAT_PIN, 1);
	
	//Setup nRF52832 user button
	pinMode(BTN_PIN, INPUT_PULLUP);

	setupBLE();

}


void loop()
{
	BLECentral central = blePeripheral.central();
	if (central) {
    digitalWrite(BLUE_STAT_PIN, 0);
		while (central.connected()) {

			//Check if data exists coming in from BLE
			if (characteristic.written()) {

				
				//Receive the written packet and parse it out here.
				Serial.print("Rx size: ");
				Serial.println(characteristic.valueLength());
				uint8_t * buffer = (uint8_t*)characteristic.value();
				Serial.print("0x");
				for( int i = 0; i < characteristic.valueLength(); i++ ){
					if( buffer[i] < 0x10 ) Serial.print("0");
					Serial.print( buffer[i], HEX );
				}
				Serial.println();
			
			}
		}

	}
	digitalWrite(BLUE_STAT_PIN, 1);
	delay(500);
}

void setupBLE()
{
	blePeripheral.setLocalName("JOELISCOOL"); //local name sometimes used by central
	blePeripheral.setDeviceName("JOELISCOOL"); //device name sometimes used by central
	//blePeripheral.setApperance(0x0000); //default is 0x0000, what should this be?
	blePeripheral.setAdvertisedServiceUuid(service.uuid()); //Advertise MIDI UUID

	// add attributes (services, characteristics, descriptors) to peripheral
	blePeripheral.addAttribute(service);
	blePeripheral.addAttribute(characteristic);
	blePeripheral.addAttribute(descriptor);

	// set initial value
	characteristic.setValue(0);

	// set event handlers - Alternate ways of checking for BLE activity
	//characteristic.setEventHandler(BLEWritten, BLEWrittenCallback);
	//characteristic.setEventHandler(BLESubscribed, BLESubscribedCallback);
	//characteristic.setEventHandler(BLEUnsubscribed, BLEUnsubscribedCallback);

	blePeripheral.begin();
}
