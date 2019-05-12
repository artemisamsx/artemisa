PORT_PPISLT     equ $a8
PORT_PPIMOD     equ $ab

PORT_PPIB       equ $a9
PORT_PPIC       equ $aa

PPI_KBCOL0      equ %00000001
PPI_KBCOL1      equ %00000010
PPI_KBCOL2      equ %00000100
PPI_KBCOL3      equ %00001000
PPI_KBCOL4      equ %00010000
PPI_KBCOL5      equ %00100000
PPI_KBCOL6      equ %01000000
PPI_KBCOL7      equ %10000000

PPI_KBROW0      equ 0
PPI_KBROW1      equ 1
PPI_KBROW2      equ 2
PPI_KBROW3      equ 3
PPI_KBROW4      equ 4
PPI_KBROW5      equ 5
PPI_KBROW6      equ 6
PPI_KBROW7      equ 7
PPI_KBROW8      equ 8
PPI_KBROW9      equ 9
PPI_KBROW10     equ 10

PPI_KBCOLN      equ %00001000
PPI_KBCOLY      equ %01000000
PPI_KBROWN      equ 4
PPI_KBROWY      equ 5

; Read a key from keyboard
; A: the column of the pressed key, or 0 if none pressed
; B: the row of the pressed key
; Uses: A, B, C
_ppi_readkey: proc
        local   loop, pressed, not_pressed

        ; read PPI C into reg C and clear lower nibble (kbrow bits)
        in      a, (PORT_PPIC)
        ld      b, %11110000
        and     b
        ld      c, a

        ; iterate over row values
        ld      b, $0f
loop:
        ; fill kbrow and write back to PPI C
        ld      a, c
        or      b
        out     (PORT_PPIC), a

        ; read kbcol and check if something was pressed
        in      a, (PORT_PPIB)
        cp      $ff
        jr      nz, pressed
        ld      a, b
        cp      0
        jr      z, not_pressed
        dec     b
        jr      loop
pressed:
        cpl
        ret
not_pressed:
        ld      a, 0
        ret
endp

; Wait for a specific key to be pressed
; A: The input column of the desired key
; B: The input row of the desired key
ppi_waitkey: proc
        local   loop
        ld      h, a
        ld      l, b
loop:
        call    _ppi_readkey
        or      a
        jr      z, loop
        cp      h
        jr      nz, loop
        ld      a, b
        cp      l
        jr      nz, loop
        ret
endp

; Wait for pressing yes or no
; A: 0 for no, 1 for yes
ppi_waitkey_yesno: proc
        local check_yes, check_no

        call    _ppi_readkey
        cp      0
        jr      z, ppi_waitkey_yesno

check_yes:
        cp      PPI_KBCOLY
        jr      nz, check_no
        ld      a, b
        cp      PPI_KBROWY
        jr      nz, ppi_waitkey_yesno
        ld      a, 1
        ret
check_no:
        cp      PPI_KBCOLN
        jr      nz, ppi_waitkey_yesno
        ld      a, b
        cp      PPI_KBROWN
        jr      nz, ppi_waitkey_yesno
        ld      a, 0
        ret
endp

; Reproduce a key click sound
; Uses: A, B, H, L
ppi_keyclick: proc
        local loop

        ; store versions of PPI C into H and L, H with high value and L with
        ; low value for keyboard click sound line.
        in      a, (PORT_PPIC)
        ld      b, %01111111
        and     b
        ld      l, a
        ld      b, %10000000
        or      b
        ld      h, a

        ld      b, 0
loop:
        ld      a, l
        out     (PORT_PPIC), a
        ld      a, h
        out     (PORT_PPIC), a
        ld      a, l
        out     (PORT_PPIC), a
        ld      a, h
        out     (PORT_PPIC), a
        djnz    loop
        ret
endp
