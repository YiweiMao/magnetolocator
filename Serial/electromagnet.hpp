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

    const int _max_toggle_count;
}



ElectroMagnet::ElectroMagnet(int pin, int max_toggle_count) :
    digital_pin(pin),
    state(false),
    count(0),
    _max_toggle_count(max_toggle_count)

    {
        pinMode(digital_pin, OUTPUT);
        digitalWrite(digital_pin, LOW);
    }


ElectroMagnet::toggle() {

    if (count == _max_toggle_count) {
        state = !state;
        digitalWrite(digital, state);
        count = 0;
    }

    ++count;


}


#endif
