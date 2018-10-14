// Import libraries (BLEPeripheral depends on SPI)
#include <BLEPeripheral.h>

// create peripheral instance, see pinouts above
const char * localName = "JOELEB_BLE420";
BLEPeripheral blePeripheral;

// create one or more services
BLEService service("03B80E5A-EDE8-4B33-A751-6CE34EC4C700");

// create one or more characteristics
BLECharacteristic characteristic("7772E5DB-3868-4112-A1A9-F2669D106BF3", BLERead | BLEWriteWithoutResponse | BLENotify, 20 );

// create one or more descriptors (optional)
BLEDescriptor descriptor = BLEDescriptor("2901", "value");

#define LED_PIN    7 // LED on pin 7
#define BTN_PIN	   6

void setup() {
	pinMode(LED_PIN, OUTPUT);
	pinMode(BTN_PIN, INPUT_PULLUP);
	digitalWrite(LED_PIN, 1);

	Serial.begin(115200);
	delay(3000);
	Serial.println("Program Started");
	setupBLE();


}

void loop() {
	BLECentral central = blePeripheral.central();

	if (central) {
		digitalWrite(LED_PIN, 0);
		// central connected to peripheral

		while (central.connected()) {
			// central still connected to peripheral
			if (characteristic.written()) {
					Serial.println(freeMemory());

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
	digitalWrite(LED_PIN, 1);
	delay(500);
	Serial.println(freeMemory());
}

void setupBLE()
{
	blePeripheral.setLocalName(localName); // optional
	blePeripheral.setAdvertisedServiceUuid(service.uuid()); // optional

	// add attributes (services, characteristics, descriptors) to peripheral
	blePeripheral.addAttribute(service);
	blePeripheral.addAttribute(characteristic);
	blePeripheral.addAttribute(descriptor);

	// set initial value
	characteristic.setValue(0);

	// set event handlers
	characteristic.setEventHandler(BLEWritten, BLEWrittenCallback);
	characteristic.setEventHandler(BLESubscribed, BLESubscribedCallback);
	characteristic.setEventHandler(BLEUnsubscribed, BLEUnsubscribedCallback);

	blePeripheral.begin();
}

// callback signature
void BLEWrittenCallback(BLECentral& central, BLECharacteristic& characteristic) {
	// ....

}

// callback signature
void BLESubscribedCallback(BLECentral& central, BLECharacteristic& characteristic) {
	// ....

}

// callback signature
void BLEUnsubscribedCallback(BLECentral& central, BLECharacteristic& characteristic) {
	// ....

}
//    event - BLEWritten, BLESubscribed, or BLEUnsubscribed

    #ifdef __arm__
    // should use uinstd.h to define sbrk but Due causes a conflict
    extern "C" char* sbrk(int incr);
    #else  // __ARM__
    extern char *__brkval;
    #endif  // __arm__
     
    int freeMemory() {
      char top;
    #ifdef __arm__
      return &top - reinterpret_cast<char*>(sbrk(0));
    #elif defined(CORE_TEENSY) || (ARDUINO > 103 && ARDUINO != 151)
      return &top - __brkval;
    #else  // __arm__
      return __brkval ? &top - __brkval : &top - __malloc_heap_start;
    #endif  // __arm__
    }
