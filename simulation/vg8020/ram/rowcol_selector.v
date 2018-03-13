`include "74157.v"
`timescale 1ns/1ps

module rowcol_selector(input wire mux, input wire [15:0]addr, output wire [7:0] rowcol);
    supply0 gnd;    
    ic74157_mux u6(.noe(gnd), .s(mux), .i0(addr[3:0]), .i1(addr[11:8]), .z(rowcol[3:0]));
    ic74157_mux u7(.noe(gnd), .s(mux), .i0(addr[7:4]), .i1(addr[15:12]), .z(rowcol[7:4]));
endmodule
