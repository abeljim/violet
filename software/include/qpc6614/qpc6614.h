// qpc6614
#ifndef QPC6614_H
#define QPC6614_H

#include <stdint.h>

class QPC6614
{
    int LE_GPIO;
    int CLK_GPIO;
    int DATA_GPIO;
    int CE_GPIO;
public:
    QPC6614();
    void set_db(int mode);
private:
    void turn_on_wpi();
    void write_qpc6614(uint32_t data);
};

#endif
