// tca9555
#ifndef TCA9555_H
#define TCA9555_H

class TCA9555
{
    int addr;
    int fd;
public:
    TCA9555(int a);
    int setPortDirection(int portNum, int pinNum, int dir);
    int setPortPolarity(int portNum, int pinNum, int polarity);
    int setOutputStates(int portNum, int pinNum, int bit);
    int getStates(int reg);

private:
    int setBit(int num, int loc, int x);
};

#endif

