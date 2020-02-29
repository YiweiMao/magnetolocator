#ifndef ELECTROMAGNET_h
#define ELECTROMAGNET_h

#include <Arduino.h>

class ElectroMagnet {

public:

    ElectroMagnet(int pin, int max_toggle_count);

    void toggle();

private:

    int digital_pin;
    bool state;
    int count;

    const int MAX_TOGGLE_COUNT;
};

ElectroMagnet::ElectroMagnet(int pin, int max_toggle_count) :
    digital_pin(pin),
    state(false),
    count(0),
    MAX_TOGGLE_COUNT(max_toggle_count)
{
	pinMode(digital_pin, OUTPUT);
	digitalWrite(digital_pin, LOW);
}


void ElectroMagnet::toggle() {

    if (count == MAX_TOGGLE_COUNT) {
        state = !state;
        digitalWrite(digital_pin, state);
        count = 0;
    }

    ++count;
}

#endif
