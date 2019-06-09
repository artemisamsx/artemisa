SOURCES=${wildcard *.asm}

.PHONY: all install run clean

all: nooploop.rom

nooploop.rom: ${SOURCES}
	pasmo ${INCLUDES} nooploop.asm nooploop.rom

clean:
	rm -f *.rom
