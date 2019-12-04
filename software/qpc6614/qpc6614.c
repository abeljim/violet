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

void turn_on_wiring_pi(void)
{
	if(wiringPiSetup() == -1);
}

int32_t write_qpc6614(uint32_t data)
{
	uint8_t LE_GPIO = 30;
	uint8_t CLK_GPIO = 21;
	uint8_t DATA_GPIO = 22;
	uint8_t CE_GPIO = 23;

	pinMode(LE_GPIO, OUTPUT);
	pinMode(CLK_GPIO, OUTPUT);
	pinMode(DATA_GPIO, OUTPUT);
	pinMode(CE_GPIO, OUTPUT);

	usleep(10);
	digitalWrite(LE_GPIO, LOW);
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
	
	digitalWrite(LE_GPIO, HIGH);
	usleep(10);

	return 0;

}

void set_db(int mode)
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
	turn_on_wiring_pi();
	set_db(0);
	return 0;
}


