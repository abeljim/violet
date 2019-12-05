// tca9555.cpp
#ifndef TCA9555_H
#define TCA9555_H

class TCA9555
{
    int addr;

public:
    TCA9555(int a);
private:
    int setBit(int num, int loc, int x);
};

#endif

