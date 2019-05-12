PORT_VDPDATA     equ $98
PORT_VDPCTRL     equ $99

VADDR_NAMETAB       equ $0000
VADDR_COLTAB        equ $0800
VADDR_PATGENTAB     equ $0800
VADDR_SPATTRTAB     equ $1000
VADDR_SPPATGENTAB   equ $1000

; Write ?data byte into the given ?reg register of the VDP
VDP_REGWR macro ?reg, ?data
        ; reminder of how vdp writes work.
        ; - first byte written to $99 is the data to be written
        ; - second byte written to $99 is the register to be written ORed with $80
        ld      a, ?data
        out     (PORT_VDPCTRL), a
        ld      a, ?reg | $80
        out     (PORT_VDPCTRL), a
endm

; Write a VRAM address in the counter register
VDP_SETADDR macro ?addr
        ld      a, ?addr
        out     (PORT_VDPCTRL), a
        ld      a, ?addr >> 8 | $40
        out     (PORT_VDPCTRL), a
endm

; Write ?len bytes from ?data into VRAM starting at ?addr
VDP_VRAMWR macro ?addr, ?data, ?len
        ; reminder of how vram writes work.
        ; - first byte written to $99 is the low nibble of the address
        ; - second byte written to $99 is the high nibble of the address ORed with $40
        ; - bytes written to $98 are the data to be written
        local   write_loop
        VDP_SETADDR ?addr
        ld      bc, ?data
        ld      de, ?len
write_loop:
        ld      a, (bc)
        out     (PORT_VDPDATA), a
        inc     bc
        dec     de
        ld      a, d
        or      e
        jr      nz, write_loop
endm

; Fill ?len bytes of VRAM with ?data byte starting at ?addr
VDP_VRAMFL macro ?addr, ?data, ?len
        local   write_loop
        VDP_SETADDR ?addr
        ld      de, ?len
write_loop:
        ld      a, ?data
        out     (PORT_VDPDATA), a
        dec     de
        ld      a, d
        or      e
        jr      nz, write_loop
endm

; Print ?len bytes from ?str in ?line of screen
VDP_PRINT macro ?line, ?str, ?len
        VDP_VRAMWR VADDR_NAMETAB + ?line * 40, ?str, ?len
endm

; Print a single line from ?str in ?line of screen
VDP_PRINTLN macro ?line, ?str
        VDP_PRINT ?line, ?str, 40
endm

; Clear ?lines from screen starting at ?line
VDP_CLEAR macro ?line, ?lines
        VDP_VRAMFL VADDR_NAMETAB + ?line * 40, 0, ?lines * 40
endm

VDP_INIT macro
        VDP_REGWR $00, $00                       ; R0: option control bits
        VDP_REGWR $01, %11010000                 ; R1: option control bits
        VDP_REGWR $02, VADDR_NAMETAB >> 10       ; R2: name table address
        VDP_REGWR $03, VADDR_COLTAB >> 6         ; R3: color table address
        VDP_REGWR $04, VADDR_PATGENTAB >> 11     ; R4: pattern gen table
        VDP_REGWR $05, VADDR_SPATTRTAB >> 7      ; R5: sprite attributes table
        VDP_REGWR $06, VADDR_SPPATGENTAB >> 11   ; R6: sprite pattern gen table
        VDP_REGWR $07, $21                       ; R7: text mod color, green/black

        VDP_VRAMWR VADDR_PATGENTAB, charset, 256*8
        VDP_CLEAR 0, 24
endm

VDP_PRINT_HEADER macro
        VDP_PRINT 0, vdp_screen_header, 40*3
endm

vdp_printnum: proc

endp

vdp_screen_header:
        db      "Artemisa Diagnosis Tool                 "
        db      "Version 0.1                             "
        db      $c3, $c3, $c3, $c3, $c3, $c3, $c3, $c3, $c3, $c3
        db      $c3, $c3, $c3, $c3, $c3, $c3, $c3, $c3, $c3, $c3
        db      $c3, $c3, $c3, $c3, $c3, $c3, $c3, $c3, $c3, $c3
        db      $c3, $c3, $c3, $c3, $c3, $c3, $c3, $c3, $c3, $c3
