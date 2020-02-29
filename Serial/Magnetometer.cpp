#include "Magnetometer.hpp"
#include <Wire.h>
#include <time.h>

void TCA9548A_select_pin(uint8_t bus);

void TCA9548A_select_pin(uint8_t bus)
{
  Wire.beginTransmission(0x70);  // TCA9548A address is 0x70
  Wire.write(1 << bus);          // send byte to select bus
  Wire.endTransmission();
}

void init_magnetomter(Magnetometer* magnetometer, int pin, char id) {
  magnetometer->mag.enableHighPerformaceMode(); // high performance
  magnetometer->x = 0;
  magnetometer->y = 0;
  magnetometer->z = 0;
  magnetometer->state = 0;
  magnetometer->magnetometer_pin = pin;
  magnetometer->id = id;
  
  TCA9548A_select_pin(magnetometer->magnetometer_pin);
  if (!magnetometer->mag.init())
  {
    Serial.println("Failed to detect and initialize magnetometer!");
    while (1);
  }

  magnetometer->mag.enableDefault();

}
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
