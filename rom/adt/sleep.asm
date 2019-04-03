SLEEP_USER_READS_SECS  equ 5

; Sleep during ?seconds
SLEEP_SECS macro ?seconds
        local   loop
        ld      de, ?seconds * 600
        ld      b, 0
loop:
        nop
        nop
        djnz    loop
        dec     de
        ld      a, d
        or      e
        jr      nz, loop
endm

SLEEP_UNTIL_USER_READS macro
        SLEEP_SECS SLEEP_USER_READS_SECS
endm
