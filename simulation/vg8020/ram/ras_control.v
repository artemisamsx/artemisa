`include "7408.v"
`include "7432.v"
`include "74368.v"

`timescale 1ns/1ps

module ras_control (input wire nmreq, nrfshd, nsltsl3, output wire nras, mux);
    wire w1, w2;
    supply0 gnd;

    ic7408_and          u42_2(.a(nrfshd), .b(nsltsl3), .y(w1));
    ic7432_or           u44_4(.a(w1), .b(nmreq), .y(nras));
    ic7432_or           u44_3(.a(nras), .b(nras), .y(w2));
    ic74368_invbuffer   u41_2(.noe(gnd), .a(w2), .y(mux));
endmodule
