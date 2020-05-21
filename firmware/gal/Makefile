TARGETS = declogic-201.jed

.PHONY: all
all: $(TARGETS)

%.jed: %.pld
	galasm $<

.PHONY: clean
clean:
	rm *.chp *.fus *.jed *.pin
