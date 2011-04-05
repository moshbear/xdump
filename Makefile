CC=gcc
CFLAGS=-Wall -O2 -ggdb

all: hexdump bindump decdump octdump

bindump: xdump.c
	$(CC) $(CFLAGS) -DPUT=0 -o $@ $^

hexdump: xdump.c
	$(CC) $(CFLAGS) -DPUT=1 -o $@ $^

decdump: xdump.c
	$(CC) $(CFLAGS) -DPUT=2 -o $@ $^

octdump: xdump.c
	$(CC) $(CFLAGS) -DPUT=3 -o $@ $^

clean:
	rm *dump

