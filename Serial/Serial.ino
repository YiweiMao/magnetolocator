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
#include <LIS3MDL.h>

#include "Magnetometer.hpp"

void Timer1SetUp();


Magnetometer mag_1;
Magnetometer mag_2;

//on I2C multiplexter
const int MAG_1_PIN = 7;
const int MAG_2_PIN = 5;

//digital output from the arduino
const int ELEC1_PIN = 2;
const int ELEC2_PIN = 3;

boolean electro_mag_1_state = 0;
boolean electro_mag_2_state = 0;
boolean electro_mag_3_state = 0;

int counter_1 = 0;
int counter_2 = 0;
int counter_3 = 0;

//40Hz
const int counter_1_max= 25;

//17
const int counter_2_max = 17;

//12.5
const int counter_3_max = 13;


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
  get_raw_radings(&mag_1);

  Serial.write(mag_1.report);
  
  get_raw_radings(&mag_2);
  Serial.write(mag_2.report);
}

void setup() {
  Serial.begin(9600);
  Wire.begin();
  init_magnetomter(&mag_1,MAG_1_PIN,'1'); 
  init_magnetomter(&mag_2,MAG_2_PIN,'2'); 
  pinMode(ELEC1_PIN, OUTPUT);
  pinMode(ELEC2_PIN, OUTPUT);

  Timer1SetUp();
}

void loop()
{
    read_all_data();
}

//Interrupt sub routine at 1kHz - 1000x every second
ISR(TIMER1_COMPA_vect){

  if (counter_1 == counter_1_max) {
    electro_mag_1_state != electro_mag_1_state;
    digitalWrite(ELEC1_PIN, electro_mag_1_state);
    counter_1 = 0;

  }

  if (counter_2 == counter_2_max) {
    electro_mag_2_state != electro_mag_2_state;
    digitalWrite(ELEC2_PIN, electro_mag_2_state);
    counter_2 = 0;
    
  }

  if (counter_3 == counter_3_max) {
    electro_mag_3_state != electro_mag_3_state;
    digitalWrite(ELEC1_PIN, electro_mag_3_state);
    counter_3 = 0;
    
  }

  counter_1++;
  counter_2++;
  counter_3++;

}
