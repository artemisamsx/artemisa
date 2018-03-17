`ifndef INCLUDED_74368
`define INCLUDED_74368

`timescale 1ns/1ps

module ic74368_invbuffer 
    #(parameter TPLH = 15,
                TPHL = 18,
                TPZH = 35,
                TPZL = 45,
                TPHZ = 32,
                TPLZ = 35)
    (input wire noe, a, output wire y);

    assign y = (noe === 0) ? ~a : 1'bz;

    specify
        (noe, a => y) = (TPLH, TPHL, TPLZ, TPZH, TPHZ, TPZL);
    endspecify
endmodule

`endif
