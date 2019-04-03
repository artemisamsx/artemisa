TEST03_CLICKS_COUNT     equ 10

        VDP_CLEAR 4, 19
        VDP_PRINTLN 4, test03_msg_0

        SLEEP_UNTIL_USER_READS

        call    test03_main
        jp      test03_end

test03_main: proc
        local loop

        VDP_CLEAR 5, 18
        VDP_PRINTLN 5, test03_msg_1
        ld      b, TEST03_CLICKS_COUNT
loop:
        push    bc
        call    ppi_keyclick
        SLEEP_SECS 1
        pop     bc
        djnz    loop

        VDP_PRINTLN 7, test03_msg_2
        call    ppi_waitkey_yesno
        cp      0
        jp      z, test03_main

        VDP_PRINTLN 9, test03_msg_3
        SLEEP_UNTIL_USER_READS
        ret
endp

test03_msg_0:
        db      "Test 3: PPI key click sound             "
test03_msg_1:
        db      "  Playing 10 key clicks                 "
test03_msg_2:
        db      "  Did you hear the click? (Y/N)         "
test03_msg_3:
        db      "  Test passed, your key click is OK     "
test03_end:
