;--------------------------------
; Test the PPI slot configuration
;--------------------------------
        VDP_CLEAR 4, 19
        VDP_PRINTLN 4, test01_msg_0

        ; Configure the PPI port
        VDP_PRINTLN 5, test01_msg_1
        ld      a, %10000010
        out     (PORT_PPIMOD), a
        ld      a, %01010000
        out     (PORT_PPISLT), a
        VDP_PRINTLN 6, test01_msg_2

        ; Test the RAM
proc
        local   done, failed, loop
        VDP_PRINTLN 8, test01_msg_3
        ld      hl, $ffff
        ld      de, $8000
loop:
        ld      (hl), $42
        ld      a, (hl)
        cp      $42
        jr      nz, failed
        dec     hl
        dec     de
        ld      a, d
        or      e
        jr      nz, loop
        jr      done
failed:
        VDP_PRINTLN 9, test01_msg_99
        halt
done:
        VDP_PRINTLN 9, test01_msg_4
endp

        ; Configure the stack at $a000
proc
        local   failed, done
        VDP_PRINTLN 11, test01_msg_5
        ld      sp, $a000
        ld      bc, $42fa
        push    bc
        pop     bc
        ld      a, b
        cp      $42
        jr      nz, failed
        ld      a, c
        cp      $fa
        jr      nz, failed
        jr      done
failed:
        VDP_PRINTLN 12, test01_msg_98
        halt
done:
        VDP_PRINTLN 12, test01_msg_6
endp

        VDP_PRINTLN 14, test01_msg_7
        SLEEP_UNTIL_USER_READS

        jp      test01_end

test01_msg_0:
        db      "Test 1: PPI slot configuration          "
test01_msg_1:
        db      "  Wiring pages 2 and 3 to slot 1...     "
test01_msg_2:
        db      "  Done, RAM available above $8000       "
test01_msg_3:
        db      "  Testing RAM above $8000...            "
test01_msg_4:
        db      "  Done, RAM is OK                       "
test01_msg_5:
        db      "  Configuring call stack at $A000...    "
test01_msg_6:
        db      "  Done, now we can call subroutines!    "
test01_msg_7:
        db      "  Test passed, PPI slots are OK         "
test01_msg_98:
        db      "  Failed, system stack is not working   "
test01_msg_99:
        db      "  Failed, wrong memory write/read cycle "
test01_end:
