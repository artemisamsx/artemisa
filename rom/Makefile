ROM_BURNER=$(if $(ROM_BURNER),$(ROM_BURNER),)

SUBROMS=\
	msx-system/msx-int.rom \
	msx-system/msx-us.rom \
	msx-system/msx-jp.rom \
	msx-system/msx-uk.rom \
	msx-system/msx-fr.rom \
	msx-system/msx-de.rom \
	msx-system/msx-it.rom \
	msx-system/msx-es.rom \
	msx-system/msx-ar.rom \
	msx-system/msx-ko.rom \
	msx-system/msx-ru.rom \
	adt/adt.rom

.PHONY:all
all: artemisa.rom

adt/adt.rom:
	$(MAKE) -C adt/

artemisa.rom: ${SUBROMS}
	cat \
		msx-system/msx-int.rom \
		msx-system/msx-us.rom \
		msx-system/msx-jp.rom \
		msx-system/msx-uk.rom \
		msx-system/msx-fr.rom \
		msx-system/msx-de.rom \
		msx-system/msx-it.rom \
		msx-system/msx-es.rom \
		msx-system/msx-ar.rom \
		msx-system/msx-ko.rom \
		msx-system/msx-ru.rom \
		adt/adt.rom \
		> artemisa.rom

.PHONY: burn
burn: artemisa.rom
ifeq ($(origin SERIAL_PORT),undefined)
	$(error You must indicate the ROM burner serial port with env var SERIAL_PORT)
else
	bundle install --gemfile burner/Gemfile
	ruby burner/burner.rb erase $(SERIAL_PORT)
	ruby burner/burner.rb burn $(SERIAL_PORT) artemisa.rom
endif

.PHONY: clean
clean:
	rm