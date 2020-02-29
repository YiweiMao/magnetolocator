/*
The sensor outputs provided by the library are the raw 16-bit values
obtained by concatenating the 8-bit high and low magnetometer data registers.
They can be converted to units of gauss using the
conversion factors specified in the datasheet for your particular
device and full scale setting (gain).

Example: An LIS3MDL gives a magnetometer X axis reading of 1292 with its
default full scale setting of +/- 4 gauss. The GN specification
in the LIS3MDL datasheet (page 8) states a conversion factor of 6842
LSB/gauss (where LSB means least significant bit) at this FS setting, so the raw
reading of 1292 corresponds to 1292 / 6842 = 0.1888 gauss.
*/

#include <Wire.h>
#include <time.h> 
#include "LIS3MDLmag.h"

#include "Magnetometer.hpp"
#include "electromagnet.hpp"

void Timer1SetUp();



//on I2C multiplexter
constexpr int MAG_1_PIN = 7;
constexpr int MAG_2_PIN = 5;

std::array<Magnetometer, 2> magnetometer_vector = {
  Magnetometer mag_1(MAG_1_PIN),
  Magnetometer mag_2(MAG_2_PIN)
}

//digital output from the arduino
constexpr int ELEC1_PIN = 2;
constexpr int ELEC2_PIN = 3;
constexpr int ELEC3_PIN = 4;

//40Hz
constexpr int electro_mag_1_counter_max = 25;

//17
constexpr int electro_mag_2_counter_max = 17;

//12.5
constexpr int electro_mag_3_counter_max = 13;



std::array<ElectroMagnet, 3> electo_mag_vector = {
  ElectroMagnet electro_mag_1(MAG_1_PIN, electro_mag_1_counter_max),
  ElectroMagnet electro_mag_2(MAG_2_PIN, electro_mag_2_counter_max),
  ElectroMagnet electro_mag_3(MAG_3_PIN, electro_mag_3_counter_max)
}


char report[100];

void Timer1SetUp() {
  cli();//stop interrupts
  TCCR1A = 0;// set entire TCCR1A register to 0
  TCCR1B = 0;// same for TCCR1B
  TCNT1  = 0;//initialize counter value to 0
  // set compare match register for 1hz increments
  OCR1A = 15999;// = (16*10^6) / (1000*1) - 1 (must be <65536)
  // turn on CTC mode
  TCCR1B |= (1 << WGM12);
  // Set CS00 for no prescaler
  TCCR1B |= (1 << CS00);  
  // enable timer compare interrupt
  TIMSK1 |= (1 << OCIE1A);

  sei(); //turn interrupts back on
}

void read_all_data() {
  
  for (const auto& magnetometer : magnetometer_vector) {
    magnetometer.get_raw_readings();
  }

  char buf[256];
  snprintf(buf, sizeof(buf), "%s%s", magnetometer.report, magnetometer.report);
  Serial.write(buf);
}

void setup() {
  Serial.begin(115200);
  Wire.begin();

  
  Timer1SetUp();
}

void loop()
{
    read_all_data();
}

//Interrupt sub routine at 1kHz - 1000x every second
ISR(TIMER1_COMPA_vect){

  for (const auto& electro_mag : electo_mag_vector) {
    electro_mag.toggle();
  }

}
