#include <iostream>
#include <errno.h>
#include <WiringPiI2C.h>
#include "tca9555.h"

TCA9555::TCA9555(int a)
{
    addr = a;
}

TCA9555::setBit(int num, int loc, int x)
{
    return num ^= (-x ^ number) & (1UL << loc);
}

TCA9555::

