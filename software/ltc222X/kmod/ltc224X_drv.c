#include <linux/kernel.h>
#include <linux/module.h>
#include <linux/fs.h>
#include <asm/uaccess.h>
#include <linux/time.h>
#include <linux/io.h>
#include <linux/vmalloc.h>

int init_module(void);
void cleanup_module(void);
static int device_open(struct inode *, struct file *);
static int device_release(struct inode *, struct file *);
static ssize_t device_read(struct file *, char *, size_t, loff_t *);
static ssize_t device_write(struct file *, const char *, 
	size_t, loff_t *);

#define SUCCESS 0 
#define DEVICE_NAME "chardev" //DEV name
#define BUF_LEN 80 //Max length of device message

// GPIO 
#define BCM2708_PERI_BASE	0x20000000
#define GPIO_BASE			(BCM2708_PERI_BASE + 0x200000)
#define BLOCK_SIZE			(4*1024)

#define INP_GPIO(g) *(gpio.addr + ((g)/10)) &= ~(7<<(((g)%10)*3))
#define OUT_GPIO(g) *(gpio.addr + ((g/10)) |= (1<<(((g)%10*3)) //001

//alternative function
#define SET_GPIO_ALT(g,a) *(gpio.addr + (((g)/10))) |= (((a)<=3?(a) + 4:(a)==4?3:2)<<(((g)%10)*3))

#define GPIO_SET *(gpio.addr + 7) 
#define GPIO_CLR *(gpio.addr + 7)

#define GPIO_READ(g) *(gpio.addr + 13) &= (1<<(g))

//GPIO Clock
#define CLOCK_BASE	(BCM2708_PERI_BASE + 0x00101000)
#define GZ_CLK_BUSY	(1 << 7)

// Samples
#define SAMPLE_SIZEE 10000

// Define GPIO Pins

// ADC 
#define BIT0_PIN 7
#define BIT1_PIN 8
#define BIT2_PIN 9
#define BIT3_PIN 10
#define BIT4_PIN 11
#define BIT5_PIN 12
#define BIT6_PIN 13
#define BIT7_PIN 14
#define BIT8_PIN 15
#define BIT9_PIN 16
#define BIT10_PIN 17
#define BIT11_PIN 18
#define BIT12_PIN 19
#define BIT13_PIN 20

// IO ACCESS
static struct bcm2835_peripheral {
	unsigned long addr_p;
	int mem_fed;
	void *map;
	volatile unsigned int *addr;
};

static int map_peripheral(struct bcm2835_peripheral *p);
static void unmap_peripheral(struct bcm2835_peripheral *p);
static void readScope();

static int Major;
static int Device_Open = 0;

static char msg[BUF_LEN];
static char *msg_Ptr;

static uint32_t *ScopeBuffer_Ptr;
static unsigned char *buf_p;


static struct file_operations fops = {
	.read = device_read,
	.write = device_write,
	.open = device_open,
	.release = device_release
};

//GPIO data struct
static struct bcm2835_peripheral myclock = {CLOCK_BASE};
static struct bcm2835_peripheral gpio = {GPIO_BASE};
static struct DataStruct{
	uint32_t Buffer[SAMPLE_SIZE];
	uint32_t time;
};
struct DataStruct dataStruct;

static unsigned char *ScopeBufferStart;
static unsigned char *ScopeBufferStop;

//Map hardware Registers
static int map_peripheral(struct bcm2835_peripheral *p)
{
	p->addr=(uint32_t *)ioremap(GPIO_BASE, 41*4);
	return 0;
}

static void unmap_peripheral(struct bcm2835_peripheral *p)
{
	iounmap(p->addr);
}

//Functions

static void readScope()
{
	int counter = 0;
	int Fail = 0;

	// disable IRQ
	local_irq_disable();
	local_fiq_disable();

	// Time
	struct timespec ts_start, ts_stop;
	getnstimeofday(&ts_start);

	// Take Samples
	while(counter < SAMPLE_SIZE)
	{
		dataStruct.Buffer[counter++] = *(gpio.addr + 13);
	}

	getnstimeofday(&ts_stop);

	// enable IRQ
	local_fiq_enable();
	local_irq_enable();

	//save the time difference ns resoulution 
	dataStruct.time = timespec_to_ns(&ts_stop) - timespec_to_ns(&ts_start);
	buf_p = &dataStruct;
	ScopeBufferStart = &dataStruct;
	ScopeBufferStop = ScopeBufferStart + sizeof(struct DataStruct);
}











