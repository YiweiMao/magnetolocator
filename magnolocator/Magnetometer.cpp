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

  magnitude = std::sqrt(device.x*device.x + device.y*device.y + device.z*device.z); 

  snprintf(report, sizeof(report), "%c,%6lf,%6d\r\n",
    magnetometer_pin, magnitude,time_taken);
}
