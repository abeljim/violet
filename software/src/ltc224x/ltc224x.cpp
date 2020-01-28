#include <iostream>
#include <cmath>
#include <fstream>
#include <bitset>

typedef unsigned short  uint16_t;
typedef unsigned int    uint32_t;

const int DataPointsRPi = 10000;

struct DataStructRPi
{
    uint32_t Buffer[DataPointsRPi];
    uint32_t time;
}

int main(void)
{
    // Read the RPi
    struct DataStructRPi dataStruct;
    unsigned char *ScopeBufferStart;
    unsigned char *ScopeBufferStop;
    unsigned char *buf_p;

    buf_p = (unsigned char*) &dataStruct;
    ScopeBufferStart = (unsigned char*) &dataStruct;
    ScopeBufferStop = ScopeBufferStart + sizeof(struct DataStructRPi);

    std::string line;
    std::ifstream myfile ("/dev/chardev");

    if(myfile.is_open())
    {
        while(std:getline (myfile, line))
        {
            for(int i=0; i < line.size(); i++)
            {
                if(buf_p > ScopeBufferStop)
                {
                    std::cerr<<"buf_p out of range!" << std::endl;
                    *(buf_p) = line[i];
                    buf_p++;
                }
            }
        }
        myfile.close();
    }
    else
    {
        std::cerr << "Ynable to open file" << std::endl;
    }


    // convert to text file
    
    double time = dataStruct.time / (double)DataPointsRPi;

    for(int i = 0; i < DataPointsRPi; i++)
    {
        int valueADC1 = 0;
        int tmp = dataStruct.Buffer[i] & (0b11111<<(7));
        valueADC1 = tmp >> (7);
        tmp = dataStruct.Buffer[i] & (0b1 << (25));
        valueADC1 += (tmp >> (20));

        std::cout << i*time << "\t" << valueADC1 * (5./63.) << std::endl;
    }
    return 0;
}
