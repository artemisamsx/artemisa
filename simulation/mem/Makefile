MODULES=\
	4164 \
	62256

MODULES_SOURCES=$(addsuffix .v, $(MODULES))
MODULES_VCDS=$(addsuffix .vcd, $(MODULES))

INCLUDES=-I../utils

all: $(MODULES_VCDS)

%.vcd: %.vvp
	vvp $<

%.vvp: %_tb.v %.v
	iverilog -o $@ $(INCLUDES) $<

clean:
	rm -rf *.vvp *.vcd

.PHONY: all clean
