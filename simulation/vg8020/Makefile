MODULES=\
	ram/cas_control \
	ram/ras_control \
	ram/rowcol_selector \
	ram/write_control \
	ram \
	wait_control

MODULES_SOURCES=$(addsuffix .v, $(MODULES))
MODULES_VCDS=$(addsuffix .vcd, $(MODULES))

VFLAGS=-gspecify
INCLUDES=-I../utils -I../74xx -I../mem

all: $(MODULES_VCDS)

%.vcd: %.vvp
	vvp $<

%.vvp: %_tb.v %.v
	iverilog -o $@ $(VFLAGS) $(INCLUDES) -I$(dir $<) $<

clean:
	rm -rf $(MODULES_VCDS)

.PHONY: all clean
