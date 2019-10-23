CC = gcc
CFLAGS = -Wall -g -O2 -Wno-unused-variable
LDFLAGS = -lm -lrt -lpthread -lwiringPi

default: qpc6614.a

test: qpc6614.h qpc6614.c
	$(CC) $(CFLAGS) -o test qpc6614.c $(LDFLAGS)

qpc6614.a: qpc6614.o
	ar rcs $@ $^ 

qpc6614.o: qpc6614.c qpc6614.h
	$(CC) -c $< $(LDFLAGS)

clean:
	 rm -f *.o *.a test
