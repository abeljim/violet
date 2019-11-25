import smbus

class tca9555:
	# From Datasheet
	PORT_0 = 0
	PORT_1 = 1

	DIR_OUTPUT = 0
	DIR_INPUT = 1

	POLARITY_NORMAL = 0
	POLARITY_INV = 1

	CR_IN0 = 0x0
	CR_IN1 = 0x1
	CR_OUT0 = 0x2
	CR_OUT1 = 0x3
	CR_INV0 = 0x4
	CR_INV1 = 0x5
	CR_CFG0 = 0x6
	CR_CFG1 = 0x7

	def __init__(self, a2, a1, a0):
            self.I2CAddr = 0x20 | (a2 << 2 | A1 << 1 | A0)
	
	# set port directions
	# dir: DIR_OUTPUT or DIR_INPUT 
	def setPortDirection(portNum, data):
	    bus = smbus.SMBus(1)
	    bus.write_byte_data(self.I2CAddr, portNum, data)

        def setPortPortPolarity(portNum, polarity):
            bus = smbus.SMBus(1)
            bus.write_byte_data(self.I2CAddr, portNUM, polarity)

        def setOutputStates(portNum, data):
            bus = smbus.SMBus(1)
            bus.write_byte_data(self.I2CAddr, portNum, data)
        
        def getInputStates(portNum):
            bus = smbus.SMBus(1)
            data =  bus.read_byte_data(self.I2CAddr, portNum)
            return data

