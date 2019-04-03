; Reserve first $100 bytes for interrupt tables and such things.
    org $0000
    di
    jp  start
    org $0100

include "charset.asm"
include "ppi.asm"
include "sleep.asm"
include "vdp.asm"

start:
        VDP_INIT
        VDP_PRINT_HEADER

        VDP_PRINTLN 4, msg_start
        SLEEP_UNTIL_USER_READS

include "test_01.asm"
include "test_02.asm"
include "test_03.asm"

        halt

msg_start:
        db      "System test is about to start           "

        ; Fill to 32KB
        org     $7fff
        db      0
