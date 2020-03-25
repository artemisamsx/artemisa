DEVICE = ATMEGA328P@DIP28
HEX_IMAGE = ps2kbr.hex
BIN_IMAGE = ps2kbr.bin
ELF_IMAGE = ps2kbr.elf

SOURCES = ${wildcard *.cpp} ${wildcard *.h} ${wildcard ps2/*.h} ps2kbr.ino

.PHONY: all
all: compile

.PHONY: compile
compile: ${BIN_IMAGE}

.PHONY: burn
burn: compile erase burn-fuses burn-image

${BIN_IMAGE}: ${HEX_IMAGE}
	srec_cat ${HEX_IMAGE} -intel -fill 0x00 0x000 0x8000 -o ${BIN_IMAGE} -binary

${HEX_IMAGE}: ${SOURCES}
	arduino-cli compile -b arduino:avr:uno -o ${HEX_IMAGE} .

.PHONY: config
config:
	arduino-cli core update-index
	arduino-cli core install arduino:avr

.PHONY: erase
erase:
	minipro -p ${DEVICE} -E

.PHONY: burn-fuses
burn-fuses:
	minipro -p ${DEVICE} -w fuses.cfg -c config -e

.PHONY: burn-image
burn-image: ${BIN_IMAGE}
	minipro -p ${DEVICE} -w ${BIN_IMAGE} -c code -e

.PHONY: clean
clean:
	rm -f ${HEX_IMAGE} ${BIN_IMAGE} ${ELF_IMAGE}
