#include <iostream>
#include <errno.h>
#include <wiringPiI2C.h>
#include "tca9555.h"

using namespace std;

TCA9555::TCA9555(int a)
{
    addr = a;
    fd = wiringPiI2CSetup(addr);
}

int TCA9555::setBit(int num, int loc, int x)
{
    return num ^= (-x ^ num) & (1UL << loc);
}

int TCA9555::setPortDirection(int portNum, int pinNum, int dir)
{
    // check inputs
    if(pinNum < 0 || pinNum > 7)
    {
        return -1;
    }
    else if(portNum != 1 || portNum != 0)
    {
        return -1;
    }

    // set register 
    int reg = 0x06;
    if(pinNum == 1)
    {
        reg = 0x07;
    }

    int data = getStates(reg);
    data = setBit(data, pinNum, dir);
    int result = wiringPiI2CWriteReg16(fd, reg, data);
    
    if(result == -1)
    {
        cout << "Error. Ernno is: " << errno << endl;
    }

    return 0;
}

int TCA9555::setPortPolarity(int portNum, int pinNum, int polarity)
{
    // check inputs
    if(pinNum < 0 || pinNum > 7)
    {
        return -1;
    }
    else if(portNum != 1 || portNum != 0)
    {
        return -1;
    }

    // set register 
    int reg = 0x04;
    if(pinNum == 1)
    {
        reg = 0x05;
    }

    int data = getStates(reg);
    data = setBit(data, pinNum, polarity);
    int result = wiringPiI2CWriteReg16(fd, reg, data);
    
    if(result == -1)
    {
        cout << "Error. Ernno is: " << errno << endl;
    }

    return 0;
}

int TCA9555::setOutputStates(int portNum, int pinNum, int bit)
{
    // check inputs
    if(pinNum < 0 || pinNum > 7)
    {
        return -1;
    }
    else if(portNum != 1 || portNum != 0)
    {
        return -1;
    }

    // set register 
    int reg = 0x02;
    if(pinNum == 1)
    {
        reg = 0x03;
    }

    int data = getStates(reg);
    data = setBit(data, pinNum, bit);
    int result = wiringPiI2CWriteReg16(fd, reg, data);
    
    if(result == -1)
    {
        cout << "Error. Ernno is: " << errno << endl;
    }

    return 0;
}

int TCA9555::getStates(int reg)
{
    // Add input check later
    return wiringPiI2CReadReg8(fd, reg); 
}

int main(void)
{
    return 0;
}
