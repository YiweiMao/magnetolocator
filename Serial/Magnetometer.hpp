#include "LIS3MDLmag.h"
#include <time.h>

#include <vector>


class Magnetometer {
public:

  Magnetometer(int pin);

  ~Magnetometer();

  void get_raw_readings();
  void get_data();

private:
  LIS3MDL device;
  unsigned long time_taken;
  float magnitude;
  const int magnetometer_pin;
  char report[32];

  void select_current_pin(uint8_t pin);


}
