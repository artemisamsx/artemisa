`include "74xx/7432.v"
`include "74xx/7474.v"
`include "74xx/74368.v"

`timescale 1ns/1ps

module cas_control(input wire nmreq, nmreqd, nsltsl3, nclk, output wire ncas);
    wire w1, w2;
    supply0 gnd;
    supply1 vcc;

    ic74368_invbuffer   u41_3(.noe(gnd), .a(nmreqd), .y(w1));
    ic7474_flipflop     u25_1(.npr(w1), .ncl(vcc), .clk(nclk), .d(nsltsl3), .q(w2), .nq());
    ic7432_or           u44_1(.a(w2), .b(nmreq), .y(ncas));
endmodule
