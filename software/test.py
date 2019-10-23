#!/usr/bin/env python

import RPi.GPIO as GPIO
import time 
import sys 

CLK = 30
MISO = 21
MOSI = 22
CS = 23

def setupSpiPins(clkPin, misoPin, mosiPin, csPin):
    GPIO.setup(clkPin, GPIO.OUT)
    GPIO.setup(misoPin, GPIO.IN)
    GPIO.setup(csPin, GPIO.OUT)
    GPIO.setup(mosiPin, GPIO.OUT)

def readAdc(channel, clkPin, misoPin, mosiPin, csPin):
    if (channel < 0 or channel > 7):
        print("Invalid ch")
        return -1
    
    GPIO.output(csPin, GPIO.HIGH)

    GPIO.output(csPin, GPIO.LOW)
    GPIO.output(clkPin, GPIO.HIGH)

    read_command = 0x18
    read_command |= channel 

    sendBits(read_command, 5, clkPin, mosiPin)

    adcValue = recvBits(12, clkPin, misoPin)

    GPIO.output(csPin, GPIO.HIGH) 

    return adcValue

def sendBits(data, numBits, clkPin, mosiPin):

    data <<= (8 - numBits)

    for bit in range(numBits):
        
        if data & 0x80:
            GPIO.output(mosiPin, GPIO.HIGH)
        else:
            GPIO.output(mosiPin, GPIO.LOW)

        data <<= 1

        GPIO.output(clkPin, GPIO.HIGH)
        GPIO.output(clkPin, GPIO.LOW)

def recvBits(numBits, clkPin, misoPin):
    retVal = 0

    for bit in range(numBits):
        GPIO.output(clkPin, GPIO.HIGH)
        GPIO.output(clkPin, GPIO.LOW)

        if GPIO.input(misoPin):
            retVal |= 0x1
        retVal <<= 1
    return (retVal/2)
if __name__ == '__main__':
    try:
        GPIO.setmode(GPIO.BCM)
        setupSpiPins(CLK,MISO,MOSI,CS)

        while True:
            val = readAdc(0, CLK, MISO, MOSI, CS)
            print("ADC Result: ")
            time.sleep(5)
    except KeyboardInterrupt:
        GPIO.cleanup()
        sys.exit(0)


