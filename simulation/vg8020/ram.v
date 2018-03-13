`include "ram/cas_control.v"
`include "ram/ram_bank.v"
`include "ram/ras_control.v"
`include "ram/rowcol_selector.v"
`include "ram/write_control.v"

`timescale 1ns/1ps

module ram (input wire nmreq, nmreqd, nrdd, nrfshd, nsltsl3, nclk, input wire [15:0] addr, inout wire [7:0] data);
    wire nras, ncas, mux, nwe;
    wire [7:0] rowcol;
    wire w1, w2;
    supply0 gnd;    

    ras_control ras(nmreq, nrfshd, nsltsl3, nras, mux);
    cas_control cas(nmreq, nmreqd, nsltsl3, nclk, ncas);
    write_control write(nrdd, nmreqd, nwe);
    rowcol_selector rowcol_sl(mux, addr, rowcol);
    ram_bank bank(rowcol, nwe, nras, ncas, data);
endmodule
