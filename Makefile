.PHONY: all clean install

all: usbreset

clean:
	rm -f usbreset

usbreset: usbreset.c
	gcc -Wall -g usbreset.c -o usbreset

install:
	mkdir -p $(DESTDIR)/usr/bin
	cp usbreset $(DESTDIR)/usr/bin/usbreset