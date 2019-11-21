import smbus

channel = 1

address = 0x20

reg_write_dac = 0x40

bus = smbus.SMBus(channel)

bus.write_i2c_block_data(address, reg_write_dac, [0x51])

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
			self.I2CAddr = 0x20 | (a2 << 2 | A1 << 1 | A0);
	
	# set port directions for both ports
	# dir: DIR_OUTPUT or DIR_INPUT 
	def setPortDirection(dir, portNum = None):
		bus = smbus.SMBus(1)

		if portNum is not None:
			bus.write_i2c_block_data(self.I2CAddr, , dir)
		else:
			bus.write_i2c_block_data(self.I2CAddr, reg_write_dac, dir)

