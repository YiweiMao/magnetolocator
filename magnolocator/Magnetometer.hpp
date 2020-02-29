#include "LIS3MDLmag.h"
#include <time.h>

class Magnetometer {
public:
    Magnetometer(int pin);
    
    void get_raw_readings();
    void get_data();
    unsigned long time_taken;
    float magnitude;
    const int magnetometer_pin;

private:
    LIS3MDL device;
    char report[32];
    
    void select_current_pin(uint8_t pin);
};
