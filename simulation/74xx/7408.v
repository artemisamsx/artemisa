`ifndef INCLUDED_7408
`define INCLUDED_7408

`timescale 1ns/1ps

module ic7408_and #(parameter TPLH = 22, TPHL = 15)(input wire a, b, output wire y);
    assign #(TPLH, TPHL) y = a & b;
endmodule

`endif
