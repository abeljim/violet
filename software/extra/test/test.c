#include <stdint.h>
#include <unistd.h>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <getopt.h>
#include <fcntl.h>
#include <sys/ioctl.h>
#include <linux/types.h>
#include <linux/spi/spidev.h>
#include <wiringPi.h>


const static char *spiDev0 = "/dev/spidev0.0";
const static char *spiDev1 = "/dev/spidev0.1";
const static uint8_t spiBPW = 8;
const static uint16_t spiDelay = 0;

static uint32_t spiSpeeds[2];
static int spiFds[2];

void turn_on_wiring_pi(void)
{
	if(wiringPiSetup() == -1);
}

int32_t write_test(uint32_t data)
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

	for(i = 0; i < 32; i++)
	{
		if(data & 0x80000000)
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

int main(void)
{
	turn_on_wiring_pi();
	write_test(0x80000000);
	return 0;
}


