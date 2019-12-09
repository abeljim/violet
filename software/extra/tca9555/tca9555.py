import smbus

class tca9555:
    def __init__(self, a2, a1, a0):
        self.I2CAddr = 32 | (a2 << 2 | a1 << 1 | a0)

    def setBit(self, a, bit, loc):
        mask = 1 << loc
        a &= ~mask
        if bit:
            a |= mask
        return a 

    def setPortDirection(self, portNum, pinNum, direction):
        if(~(pinNum >= 0 and pinNum <=7)):
            return 0            
        bus = smbus.SMBus(1)
        if(portNum == 0):
            data = bus.read_byte_data(self.I2CAddr, 6)
            data = self.setBit(data, direction, pinNum)
            bus.write_byte_data(self.I2CAddr, 6, data)
        elif(portNum == 1):
            data = bus.read_byte_data(self.I2CAddr, 7)
            data = self.setBit(data, direction, pinNum)
            bus.write_byte_data(self.I2CAddr, 7, data)
        bus.close()

    def setPortPolarity(self, portNum, pinNum, polarity):
        if(~(pinNum >= 0 and pinNum <=7)):
            return 0            
        bus = smbus.SMBus(1)
        if(portNum == 0):
            data = bus.read_byte_data(self.I2CAddr, 4)
            data = self.setBit(data, polarity, pinNum)
            bus.write_byte_data(self.I2CAddr, 4, data)
        elif(portNum == 1):
            data = bus.read_byte_data(self.I2CAddr, 5)
            data = self.setBit(data, polarity, pinNum)
            bus.write_byte_data(self.I2CAddr, 5, data)
        bus.close()
        
    def setOutputStates(self, portNum, bit):
        if(~(pinNum >= 0 and pinNum <=7)):
            return 0            
        bus = smbus.SMBus(1)
        if(portNum == 0):
            data = bus.read_byte_data(self.I2CAddr, 2)
            data = self.setBit(data, bit, pinNum)
            bus.write_byte_data(self.I2CAddr, 2, data)
        elif(portNum == 1):
            data = bus.read_byte_data(self.I2CAddr, 3)
            data = self.setBit(data, bit, pinNum)
            bus.write_byte_data(self.I2CAddr, 3, data)
        bus.close()

    def getInputStates(self, portNum):
        bus = smbus.SMBus(1)
        data =  bus.read_byte_data(self.I2CAddr, portNum)
        bus.close()
        return data

if __name__ == "__main__":
    tca = tca9555(0,0,0)
    data = 8
    pn = 7
    tca.setPortDirection(1,3,0)
    temp = tca.getInputStates(7)
    print(temp)

