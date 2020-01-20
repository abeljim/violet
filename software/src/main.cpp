#include "tca9555/tca9555.h"
#include "qpc6614/qpc6614.h"
#include "rffc5072/rffc5072.h"

int main(){
    rffc5071_driver_t rffc5071 = {
        .pin = {
            .gpio_enx = 28,
            .gpio_clock = 14,
            .gpio_data = 29,
        }
    };

    rffc5071_setup(&rffc5071);
    rffc5071_set_frequency(&rffc5071, 90);

    TCA9555 tca(0x20);
    return 0;
}
