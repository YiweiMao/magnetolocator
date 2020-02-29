#include "Magnetometer.hpp"
#include <Wire.h>
#include <time.h>
#include <math.h>  

Magnetometer::Magnetometer(int pin):
    device{LIS3MDL()},
    magnitude(0),
    magnetometer_pin{pin} 
{
    select_current_pin(pin);
    if(device.init()) {
        Serial.println("Failed to detect and initialize magnetometer!");
    }

    device.enableHighPerformaceMode();
}

void Magnetometer::select_current_pin(uint8_t pin) {
    Wire.beginTransmission(0x70);  // TCA9548A address is 0x70
    Wire.write(1 << pin);          // send byte to select bus
    Wire.endTransmission();
}

void Magnetometer::get_raw_readings() {
    select_current_pin(magnetometer_pin);
    device.read();
    time_taken = millis();
    magnitude = sqrt(device.m.x*device.m.x + device.m.y*device.m.y + device.m.z*device.m.z);
}
