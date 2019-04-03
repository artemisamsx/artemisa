        VDP_CLEAR 4, 19
        VDP_PRINTLN 4, test02_msg_0

        ; Press '0'
        VDP_PRINTLN 5, test02_msg_1
        ld      a, PPI_KBCOL0
        ld      b, PPI_KBROW0
        call    ppi_waitkey

        ; Press '9'
        VDP_PRINTLN 6, test02_msg_2
        ld      a, PPI_KBCOL1
        ld      b, PPI_KBROW1
        call    ppi_waitkey

        ; Press ','
        VDP_PRINTLN 7, test02_msg_3
        ld      a, PPI_KBCOL2
        ld      b, PPI_KBROW2
        call    ppi_waitkey

        ; Press 'F'
        VDP_PRINTLN 8, test02_msg_4
        ld      a, PPI_KBCOL3
        ld      b, PPI_KBROW3
        call    ppi_waitkey

        ; Press 'O'
        VDP_PRINTLN 9, test02_msg_5
        ld      a, PPI_KBCOL4
        ld      b, PPI_KBROW4
        call    ppi_waitkey

        ; Press 'X'
        VDP_PRINTLN 10, test02_msg_6
        ld      a, PPI_KBCOL5
        ld      b, PPI_KBROW5
        call    ppi_waitkey

        ; Press 'F2'
        VDP_PRINTLN 11, test02_msg_7
        ld      a, PPI_KBCOL6
        ld      b, PPI_KBROW6
        call    ppi_waitkey

        ; Press 'enter'
        VDP_PRINTLN 12, test02_msg_8
        ld      a, PPI_KBCOL7
        ld      b, PPI_KBROW7
        call    ppi_waitkey

        ; Press 'space'
        VDP_PRINTLN 13, test02_msg_9
        ld      a, PPI_KBCOL0
        ld      b, PPI_KBROW8
        call    ppi_waitkey

        ; Press 'num *'
        VDP_PRINTLN 14, test02_msg_10
        ld      a, PPI_KBCOL0
        ld      b, PPI_KBROW9
        call    ppi_waitkey

        ; Press 'num 5'
        VDP_PRINTLN 15, test02_msg_11
        ld      a, PPI_KBCOL0
        ld      b, PPI_KBROW10
        call    ppi_waitkey

        VDP_PRINTLN 17, test02_msg_12
        SLEEP_UNTIL_USER_READS

        jp      test02_end

test02_msg_0:
        db      "Test 2: PPI keyboard matrix             "
test02_msg_1:
        db      "  Please press key '0'                  "
test02_msg_2:
        db      "  Please press key '9'                  "
test02_msg_3:
        db      "  Please press key ','                  "
test02_msg_4:
        db      "  Please press key 'F'                  "
test02_msg_5:
        db      "  Please press key 'O'                  "
test02_msg_6:
        db      "  Please press key 'X'                  "
test02_msg_7:
        db      "  Please press key 'F2'                 "
test02_msg_8:
        db      "  Please press key 'Enter'              "
test02_msg_9:
        db      "  Please press key 'Space'              "
test02_msg_10:
        db      "  Please press key 'Num *'              "
test02_msg_11:
        db      "  Please press key 'Num 5'              "
test02_msg_12:
        db      "  Test passed, keyboard matrix is OK    "
test02_end:
