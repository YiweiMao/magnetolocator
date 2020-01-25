#include <LIS3MDL.h>
#include <time.h>


typedef struct Magnetometer {
  LIS3MDL mag;
  char id;
  int magnetometer_pin;
  int x, y, z;
  unsigned long time_taken;
  char report[100];
  
  
  
}Magnetometer;

void init_magnetomter(Magnetometer* mag, int pin, char id);
void get_raw_radings(Magnetometer* mag);
