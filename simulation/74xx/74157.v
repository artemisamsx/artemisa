`ifndef INCLUDED_74157
`define INCLUDED_74157

`timescale 1ns/1ps

module ic74157_mux 
    #(parameter TPLHD = 14, TPHLD = 14, TPLHE = 20, TPHLE = 21, TPLHS = 23, TPHLS = 27)
    (input wire noe, s, input wire [3:0] i0, i1, output wire [3:0] z);

    wire #(TPLHE - TPLHD, TPHLE - TPHLD) sel0 = ~noe & ~s;
    wire #(TPLHS - TPLHD, TPHLS - TPHLD) sel1 = ~noe & s;

    wire #(TPLHD, TPHLD) z0 = (i0[0] & sel0) | (i1[0] & sel1);
    wire #(TPLHD, TPHLD) z1 = (i0[1] & sel0) | (i1[1] & sel1);
    wire #(TPLHD, TPHLD) z2 = (i0[2] & sel0) | (i1[2] & sel1);
    wire #(TPLHD, TPHLD) z3 = (i0[3] & sel0) | (i1[3] & sel1);

    assign z = {z3, z2, z1, z0};
endmodule

`endif
