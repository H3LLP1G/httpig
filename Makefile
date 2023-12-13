CC=gcc
LN=ld
CFLAGS=-Wall -std=c99

HEADERS=hashtab.h tree.h type.h
SOURCES=hashtab.c tree.c type.c
OBJECTS=hashtab.o tree.o type.o

.PHONY: default
default: build link

build: $(HEADERS) $(SOURCES)
	$$(CC) $(CFLAGS) -c $(SOURCES)

link: $(OBJECTS)
	$(LN) -r $(OBJECTS) -o extclib.o

clean:
	rm -f *.0 *.i *.s
