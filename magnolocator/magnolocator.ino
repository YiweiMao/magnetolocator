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
#include <string.h>

#include "Magnetometer.hpp"
#include "electromagnet.hpp"

void Timer1SetUp();

constexpr int NUMBER_OF_ELECTROMAGS = 3;
constexpr int NUMBER_OF_MAG = 2;

//#pragma pack(push, 1)
typedef struct DataPacket {
    uint32_t time_taken;
    float magnitude;
    uint8_t magnetometer_pin;
} DataPacket;
//#pragma pack(pop)

void send_data(DataPacket& x){
    byte * data = (byte *) &x;
    Serial.write(data, sizeof(x));
}


//on I2C multiplexter
constexpr int MAG_1_PIN = 7;
constexpr int MAG_2_PIN = 6;
constexpr int MAG_3_PIN = 5;

Magnetometer magnetometer_vector[NUMBER_OF_MAG] = {
    Magnetometer(MAG_1_PIN),
    Magnetometer(MAG_2_PIN)
};



//digital output from the arduino
constexpr int ELEC1_PIN = 2;
constexpr int ELEC2_PIN = 3;
constexpr int ELEC3_PIN = 4;

//83
constexpr int electro_mag_1_counter_max = 12;
//100Hz
constexpr int electro_mag_2_counter_max = 10;
//125 Hz
constexpr int electro_mag_3_counter_max = 8;
//143
constexpr int electro_mag_4_counter_max = 7;
//167
constexpr int electro_mag_5_counter_max = 6;

ElectroMagnet electo_mag_vector[NUMBER_OF_ELECTROMAGS] = {
    ElectroMagnet(ELEC1_PIN, electro_mag_1_counter_max),
    ElectroMagnet(ELEC2_PIN, electro_mag_2_counter_max),
    ElectroMagnet(ELEC3_PIN, electro_mag_3_counter_max)
};


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
    static DataPacket data_packet;
    
    for (int i=0; i<NUMBER_OF_MAG; i++) {
        magnetometer_vector[i].get_raw_readings();
        data_packet.time_taken = magnetometer_vector[i].time_taken;
        data_packet.magnitude = magnetometer_vector[i].magnitude;
        data_packet.magnetometer_pin = magnetometer_vector[i].magnetometer_pin;
    }
} 

void setup() {
    Serial.begin(115200);
    Wire.begin();

    for (int i=0; i<NUMBER_OF_MAG; i++) {
        magnetometer_vector[i].init();
    }
    Timer1SetUp();
}

void loop()
{
    read_all_data();
}

//Interrupt sub routine at 1kHz - 1000x every second
ISR(TIMER1_COMPA_vect)
{
    for (int i=0; i<NUMBER_OF_ELECTROMAGS; i++) {
        electo_mag_vector[i].toggle();
    }
}
