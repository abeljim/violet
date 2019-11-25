import smbus 

bus = smbus.SMBus(1)
b = bus.read_byte_data(32,7)
print(b)
#b = bus.write_byte_data(32, 3, 0)
#b = bus.write_byte_data(32, 7, 0)
bus.close()
