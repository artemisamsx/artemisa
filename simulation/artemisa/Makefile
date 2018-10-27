TESTBENCHES = \
	$(wildcard *_tb.v)

MODULES=$(patsubst %_tb.v,%,$(TESTBENCHES))
MODULES_SOURCES=$(addsuffix .v, $(MODULES))
MODULES_VCDS=$(addsuffix .vcd, $(MODULES))

VFLAGS=-gspecify

all: $(MODULES_VCDS)

%.vcd: %.vvp
	cd $(<D) && vvp $(notdir $<)

%.vvp: %_tb.v %.v
	iverilog -o $@ -I../include -I$(<D) $(VFLAGS) $<

clean:
	rm $(MODULES_VCDS)

.PHONY: all clean
