.PHONY: clean install

CC?=gcc
CFLAGS=-O3 -Wall -I'exomizer'

OBJECTS=\
	sid2analyzer.o \
	exomizer/chunkpool.o \
	exomizer/exomizer.o \
	exomizer/match.o \
	exomizer/optimal.o \
	exomizer/output.o \
	exomizer/radix.o \
	exomizer/search.o \
	exomizer/sfx64ne.o

all: sid2analyzer

sid2analyzer: $(OBJECTS)
	$(CC) -o $@ $^ $(LIBS)
	strip $@

clean:
	$(RM) exomizer/*.o
	$(RM) sid2analyzer.o
	$(RM) sid2analyzer

install:
ifneq ($(shell id -u), 0)
	cp -f sid2analyzer ~/.local/bin/
else
	cp -f sid2analyzer /usr/local/bin/
endif

