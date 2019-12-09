// qpc6614
#ifdef __QPC6614_H__
#define __QPC6614_H__

#include <stdint.h>

class QPC6614
{
    uint8_t LE_GPIO;
    uint8_t CLK_GPIO;
    uint8_t DATA_GPIO;
    uint8_t CE_GPIO;
public:
    QPC6614(void);
    void set_db(int mode):
private:
    void turn_on_wpi(void);
    uint32_t write_qpc6614(uint32_t data);
};
#endif 
