#include "Magnetometer.hpp"
#include <Wire.h>
#include <time.h>

#include <math.h>  

Magnetometer::Magnetometer(int pin):
        device{LIS3MDL()},
        magnitude(0),
        magnetometer_pin{pin} {

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

  int16_t x = device.x;
  int16_t y = device.y;
  int16_t z = device.z;

  magnitude = std::sqrt(x*x + y*y + z*z); 

  snprintf(report, sizeof(report), "%c,%6lf,%6d\r\n",
    magnetometer_pin, magnitude,time_taken);



}

// void TCA9548A_select_pin(uint8_t bus);

// void TCA9548A_select_pin(uint8_t bus)
// {
//   Wire.beginTransmission(0x70);  // TCA9548A address is 0x70
//   Wire.write(1 << bus);          // send byte to select bus
//   Wire.endTransmission();
// }

// void init_magnetomter(Magnetometer* magnetometer, int pin, char id) {
//   magnetometer->mag.enableHighPerformaceMode(); // high performance
//   magnetometer->x = 0;
//   magnetometer->y = 0;
//   magnetometer->z = 0;
//   magnetometer->state = 0;
//   magnetometer->magnetometer_pin = pin;
//   magnetometer->id = id;
  
//   TCA9548A_select_pin(magnetometer->magnetometer_pin);
//   if (!magnetometer->mag.init())
//   {
//     Serial.println("Failed to detect and initialize magnetometer!");
//     while (1);
//   }

//   //magnetometer->mag.enableDefault();

// }
void get_raw_radings(Magnetometer* magnetometer) {
  TCA9548A_select_pin(magnetometer->magnetometer_pin);
  magnetometer->mag.read();

  magnetometer->x = magnetometer->mag.m.x;
  magnetometer->y = magnetometer->mag.m.y;
  magnetometer->z = magnetometer->mag.m.z;

  
  magnetometer->time_taken = millis();


  snprintf(magnetometer->report, sizeof(magnetometer->report), "%c,%6d,%6d,%6d,%6d\r\n",
      magnetometer->id,magnetometer->x,magnetometer->y,magnetometer->z,magnetometer->time_taken);
    
}
