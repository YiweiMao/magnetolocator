#include "Magnetometer.hpp"
#include <Wire.h>
#include <time.h>
#include <math.h>  

Magnetometer::Magnetometer(int pin):
    device{LIS3MDL()},
    magnitude(0),
    magnetometer_pin{pin} 
{
    
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
    float x = static_cast<float>(device.m.x);
    float y = static_cast<float>(device.m.y);
    float z = static_cast<float>(device.m.z);
    magnitude = sqrt(x*x + y*y + z*z);
}

void Magnetometer::init() {
    select_current_pin(magnetometer_pin);
    if(!device.init()) {
        Serial.println("Failed to detect and initialize magnetometer!");
    }
    device.enableHighPerformaceMode();
    
}
