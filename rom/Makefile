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

ROM_IMAGE=artemisa.rom

DEVICE=SST39SF040

.PHONY:all
all: ${ROM_IMAGE}

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
burn: ${ROM_IMAGE}
	minipro -p ${DEVICE} -w ${ROM_IMAGE} -S

.PHONY: clean
clean:
	rm -f artemisa.rom
