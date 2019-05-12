OPENMSX_HOME=${HOME}/.openMSX/share
OPENMSX="/Applications/openMSX.app/Contents/MacOS/openmsx"

SOURCES=${wildcard *.asm}

.PHONY: all install run clean

all: adt.rom

adt.rom: ${SOURCES}
	pasmo ${INCLUDES} adt.asm adt.rom

install: adt.rom
	mkdir -p ${OPENMSX_HOME}/machines/
	mkdir -p ${OPENMSX_HOME}/systemroms/machines/artemisa/
	${eval rom_sha := ${shell sha1sum adt.rom | cut -d' ' -f1}}
	echo ${rom_sha}
	cat resources/artemisa.xml | sed "s/VAR_ROM_SHA/${rom_sha}/g" > ${OPENMSX_HOME}/machines/artemisa.xml
	cp adt.rom ${OPENMSX_HOME}/systemroms/machines/artemisa/

run: install
	${OPENMSX} -machine artemisa

clean:
	rm -f *.rom
