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
#include <LIS3MDL.h>

LIS3MDL mag_1;
LIS3MDL mag_2;

const int MAG_1_PIN = 7;
const int MAG_2_PIN = 5;
const int ELEC1_PIN = 2;
const int ELEC2_PIN = 3;
char report[200];

void TCA9548A_select_pin(uint8_t bus)
{
  Wire.beginTransmission(0x70);  // TCA9548A address is 0x70
  Wire.write(1 << bus);          // send byte to select bus
  Wire.endTransmission();
}

void read_all_data() {
  TCA9548A_select_pin(MAG_1_PIN);
    mag_1.read();
  
    int x1,y1,z1,x2,y2,z2;
  
    x1 = mag_1.m.x;
    y1 = mag_1.m.y;
    z1 = mag_1.m.z;
  
    TCA9548A_select_pin(MAG_2_PIN);
    mag_2.read();
  
    x2 = mag_2.m.x;
    y2 = mag_2.m.y;
    z2 = mag_2.m.z;

    snprintf(report, sizeof(report), "M1: %6d M2: %6d ",
      x1+y1+z1,x2+y2+z2);
 
//    snprintf(report, sizeof(report), "M1: %6d %6d %6d M2: %6d %6d %6d",
//      x1,y1,z1,x2,y2,z2);
    Serial.println(report);
}

void setup()
{
  Serial.begin(9600);
  Wire.begin();
  TCA9548A_select_pin(MAG_1_PIN);

  if (!mag_1.init())
  {
    Serial.println("Failed to detect and initialize magnetometer!");
    while (1);
  }

  mag_1.enableDefault();

   TCA9548A_select_pin(MAG_2_PIN);
  if (!mag_2.init())
  {
    Serial.println("Failed to detect and initialize magnetometer!");
    while (1);
  }

  mag_2.enableDefault();
  pinMode(ELEC1_PIN, OUTPUT);
  pinMode(ELEC2_PIN, OUTPUT); 
}

void loop()
{
  for(int i = 0; i < 10; i++){
    read_all_data();
    delay(100);
  }
  Serial.println("Written High");
  digitalWrite(ELEC1_PIN, HIGH);
  //digitalWrite(ELEC2_PIN, HIGH);
  delay(100);
  for(int i = 0; i < 10; i++){
    read_all_data();
    delay(100);
  }
  Serial.println("Written Low");
    digitalWrite(ELEC1_PIN, LOW);
//  //digitalWrite(ELEC2_PIN, LOW);
}
