        org $0000
        di
loop:   nop
        jr loop

        org     $7fff
        db      0
