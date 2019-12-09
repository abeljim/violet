#include <stdint.h>
#include <unistd.h>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <getopt.h>
#include <fcntl.h>
#include <sys/ioctl.h>
#include <linux/types.h>
#include <wiringPi.h>

#include "qpc6614.h"
#include "tca9555.h"

QPC6614::QPC6614(void)
{
    LE_GPIO = 30; // doesnt matter
    CE_GPIO = 23; // doesnt matter

    // wiring pi 
    CLK_GPIO = 14;
    DATA_GPIO = 25;
    turn_on_wpi();
}

void QPC6614::turn_on_wpi(void)
{
    if(wiringPiSetup() == -1);
}

int32_t QPC6614::write_qpc6614(uint32_t data)
{
    // Set LE to Output 
    TCA9555 tca(0x20);
    tca.setPortDirection(1,1,0);
    tca.setOutputStates(1,1,1);

	pinMode(CLK_GPIO, OUTPUT);
	pinMode(DATA_GPIO, OUTPUT);

	usleep(10);
    // Set LE LOW
	tca.setOutputStates(1,1,0);
	usleep(10);

	uint16_t i;

	for(i = 0; i < 6; i++)
	{
		if(data & 0x20)
		{
			digitalWrite(DATA_GPIO, HIGH);
		}
		else
		{
			digitalWrite(DATA_GPIO, LOW);
		}
		
		usleep(10);
		digitalWrite(CLK_GPIO, HIGH);
		usleep(10);
		digitalWrite(CLK_GPIO, LOW);
		usleep(10);

		data <<= 1;	
	}
	
    // Set LE to HIGH
	tca.setOutputStates(1,1,1);
	usleep(10);

	return 0;

}

void QPC6614::set_db(int mode)
{
    // Mode 0 - 0dB
    // Mode 1 - 0.5dB
    // Mode 2 - 1dB
    // Mode 3 - 2dB
    // Mode 4 - 4dB
    // Mode 5 - 8dB
    // Mode 6 - 16dB
    // Mode 7 - 31.5dB
    
	if(mode >= 0 && mode <=7)
	{
		if(mode == 0)
		{
			write_qpc6614(0b111111);
		}
		else if(mode == 1)
		{
			write_qpc6614(0b111110);
		}
		else if(mode == 2)
		{
			write_qpc6614(0b111101);
		}
		else if(mode == 3)
		{
			write_qpc6614(0b111011);
		}
		else if(mode == 4)
		{
			write_qpc6614(0b110111);
		}
		else if(mode == 5)
		{
			write_qpc6614(0b101111);
		}
		else if(mode == 6)
		{
			write_qpc6614(0b011111);
		}
		else if(mode == 7)
		{
			write_qpc6614(0b000000);
		}
	} 
}

int main(void)
{
	return 0;
}


