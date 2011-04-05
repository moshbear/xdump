CC=gcc
CFLAGS=-Wall -O2 -ggdb

all: xdumpb xdumpo xdumpd xdump

xdumpb: xdump.c
	$(CC) $(CFLAGS) -DPUT=0 -o $@ $^

xdump: xdump.c
	$(CC) $(CFLAGS) -DPUT=1 -o $@ $^

xdumpd: xdump.c
	$(CC) $(CFLAGS) -DPUT=2 -o $@ $^

xdumpo: xdump.c
	$(CC) $(CFLAGS) -DPUT=3 -o $@ $^

install:
	install -g 0 -o 0 -m 755 -t /usr/local/bin xdump xdumpb xdumpd xdumpo 
clean:
	rm xdump xdumpb xdumpd xdumpo


