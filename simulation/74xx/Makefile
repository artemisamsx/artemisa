MODULES=\
	7402 \
	7408 \
	7432 \
	7474 \
	74157 \
	74368

MODULES_SOURCES=$(addsuffix .v, $(MODULES))
MODULES_VCDS=$(addsuffix .vcd, $(MODULES))

VFLAGS=-gspecify
INCLUDES=-I../utils

all: $(MODULES_VCDS)

%.vcd: %.vvp
	vvp $<

%.vvp: %_tb.v %.v
	iverilog -o $@ $(VFLAGS) $(INCLUDES) $<

clean:
	rm -rf *.vvp *.vcd

.PHONY: all clean
