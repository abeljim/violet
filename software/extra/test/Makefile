CC = gcc
CFLAGS = -Wall -g -O2 -Wno-unused-variable
LDFLAGS = -lm -lrt -lpthread -lwiringPi

default: libtest.a

test: test.h test.c
	$(CC) $(CFLAGS) -o test test.c $(LDFLAGS)

test.a: test.o
	ar rcs $@ $^ 

test.o: test.c test.h
	$(CC) -c $< $(LDFLAGS)

clean:
	 rm -f *.o *.a
