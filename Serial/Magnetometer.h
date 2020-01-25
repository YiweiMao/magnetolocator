typedef struct Magnetometer {
  LIS3MDL mag;
  int magnetometer_pin;
  int x, y, z;
  time_t time_taken;
  
  
  
}Magnetometer;