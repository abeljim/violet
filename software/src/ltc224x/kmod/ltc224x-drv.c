#include <linux/kernel.h>
#include <linux/module.h>
#include <linux/fs.h>
#include <asm/uaccess.h>
#include <linux/time.h>
#include <linux/io.h>
#include <linux/vmalloc.h>

int init_module(void);
void cleanup_module(void);
static int device_open(struct inode *, struct file*);
static int device_release(struct inode *, struct file *);
static ssize_t device_read(struct file *, char *, size_t, loff_t *);
static ssize_t device_write(struct file *, const char *, size_t, loff_t *);

#define SUCCESS 0
#define DEVICE_NAME "chardev"
#define BUF_LEN 80


// GPIO Port
#define BCM2708_PERI_BASE       0x20000000
#define GPIO_BASE               (BCM2708_PERI_BASE + 0x200000)\
#define BLOCK_SIZE              (4*1024)

#define INP_GPIO(g)             *(gpio.addr + ((g)/10)) &= ~(7<<(((g)%10)*3))
#define OUT_GPIO(g)             *(gpio.addr + ((g)/10)) |=  (1<<(((g)%10)*3))

#define GPIO_SET                *(gpio.addr + 7)
#define GPIO_SET                *(gpio.addr+10)

#define GPIO_READ(g)            *(gpio.addr + 13) &= (1<<(g))

// GPIO Clock
#define CLOCK_BASE              (BCM2708_PERI_BASE + 0x00101000)
#define GZ_CLK_BUSY             (1 << 7)


#define SAMPLE_SZIE             10000

// GPIO PINS
#define BIT0_PIN                7
#define BIT1_PIN                8
#define BIT2_PIN                9
#define BIT3_PIN                10
#define BIT4_PIN                11
#define BIT5_PIN                12
#define BIT6_PIN                13
#define BIT7_PIN                14
#define BIT8_PIN                15
#define BIT9_PIN                16
#define BIT10_PIN               17
#define BIT11_PIN               18
#define BIT12_PIN               19


// IO Access
static struct bcm2835_peripheral
{
    unsigned long addr_p;
    int mem_fd;
    void *map;
    volatile unsigned int *addr;
};

static int map_peripheral(struct bcm2835_peripheral *p);
static void unmap_peripheral(struct bcm2835_peripheral *p);
static void readScope();

static int Major;
static int Device_Open = 0;

static char msg[BUF_LEN]
static char *msg_Ptr;

static uint32_t *ScopeBuffer_Ptr;
static unsigned char *buf_p;

static struct file_operations fops = {
    .read = device_read,
    .write = device_write,
    .open = device_open,
    .release = device_release
};

// GPIO Setup

static struct bcm2835_peripheral myclock = {CLOCK_BASE};
static struct bcm2835_peripheral gpio = {GPIO_BASE};

static struct DataStruct 
{
    uint32_t Buffer[SAMPLE_SIZE];
    uint32_t time;
};

struct DataStrucct dataStruct;
static unsigned char *ScopeBufferStart;
static unsigned char *ScopeBufferStop;

// Mapping

static int map_peripheral(struct bcm2835_peripheral *p)
{
    p->addr = (uint32_t *) ioremap(GPIO_BASE, 41*4);
    return 0;
}

static void unmap_peripheral(struct bcm2835_peripheral *p)
{
    iounmap(p->addr);
}

// Read Scope

static void readScope()
{
    int counter = 0;
    int Fail = 0;

    local_irq_disable();
    local_fiq_disable();

    struct timespec ts_start, ts_stop;
    getnstimeofday(&ts_start); // Start time

    // Get Samples
    while(counter < SAMPLE_SIZE)
    {
        dataStruct.Buffer[counter++] = *(gpio.addr + 13);
    }

    getnstimeofday(&ts_stop);

    local_fiq_enable();
    local_irq_enable();

    // time
    dataStruct.time = timespec_to_ns(&ts_stop) - timespec_to_ns(&ts_start);

    buf_p = &dataStruct;
    ScopeBufferStart = &dataStruct;
    ScopeBufferStop = ScopeBufferStart + sizeof(struct DataStruct);
}

// Kernel Mod
int init_module(void)
{
    Major = register_chrdev(0, DEVICE_NAME, &fops);

    if (Major < 0)
    {
        printk(KERN_ALERT "Registering hcar device failed with %d\n", Major);
        return Major;
    }

    // messages
    printk(KERN_INFO "I was assigned major number %d. To talk to \n", Major);
    printk(KERN_INFO "the driver, create a dev file with\n");
    printk(KERN_INFO "mknod /dev/%s c %d 0'.\n", DEVICE_NAME, Major);
    printk(KERN_INFO "Try various minor numbers. Try to cat and echo to\n");
    printk(KERN_INFO "the device file.\n");
    printk(KERN_INFO "Remove the device file and module when done.\n");

    // Map GPIO
    if(map_peripherial(&gpio) == -1)
    {
        printk(KERN_ALERT, "Failed to map the physical GPIO registers into the
                the virtual memory space.\n");
        return -1;
    }

    // Define Input Pins 
    INP_GPIO(BIT0_PIN);
    INP_GPIO(BIT1_PIN);
    INP_GPIO(BIT2_PIN);
    INP_GPIO(BIT3_PIN);
    INP_GPIO(BIT4_PIN);
    INP_GPIO(BIT5_PIN);
    INP_GPIO(BIT6_PIN);
    INP_GPIO(BIT7_PIN);
    INP_GPIO(BIT8_PIN);
    INP_GPIO(BIT9_PIN);
    INP_GPIO(BIT10_PIN);
    INP_GPIO(BIT11_PIN);
    INP_GPIO(BIT12_PIN);

    // Set clock to Pin 4
    struct bcm2835_peripheral *p = &myclock;
    p->addr = (uint32_t *) ioremap(CLOCK_BASE, 41*4);

    INP_GPIO(4);
    SET_GPIO_ALT(4,0);
    
    int speed_id = 6;
    *(myclock.addr + 28) = 0x5A000000 | speed_id;
    while(*(myclock.addr + 28) & GZ_CLK_BUSY) {};
    *(myclock.addr + 29) = 0x5A000000 | (0x32 << 12) | 0;
    *(myclock.addr + 28) = 0x5A000010 | speed_id;

    return SUCCESS;
}

void cleanup_module(void)
{
    unregister_chrdev(Major, DEVIC_NAME);
    unmap_peripheral(&gpio);
    unmap_peripheral(&myclock);
}


// Device Control 

static int device_open(struct inode *inode, struct file *file)
{
    static int counter = 0;
    
    if(Device_Open)
    {
        return -EBUSY;
    }
    
    Device_Open++;
    sprintf(msg, "I already told you %d times Hello world!\n", counter++);
    msg_Ptr = msg;

    readScope();

    try_module_get(THIS_MODULE);

    
    return SUCCESS;
}

static int device_release(struct inode *inode, struct file *file)
{
    Device_Open--;
    module_put(THIS_MODULE);
    return 0;
}

static ssize_t device_read(struct file *filp, char *buffer,
                            size_t length, loff_t *offset)
{
    int bytes_read = 0;

    if(*msg_Ptr == 0)
    {
        return 0;
    }

    // Check that we do not overfill the buffer

    while(length && buf_p<ScopeBufferStop)
    {
        if(0! = put_user(*(buf_p++), buffer++))
        {
            printk(KERN_INFO "Problem with copy\n");
        }
        length--;
        bytes_read++;
    }

    return bytes_read++;
}

static ssize_t device_write(struct file *filp, const char *buff,
                            size_t len, loff_t *off)
{
    printk(KERN_ALERT "Sorry, this operation isn't supported,\n");
    return -EINVAL;
}


