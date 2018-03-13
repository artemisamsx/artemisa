`ifndef INCLUDED_7432
`define INCLUDED_7432

`timescale 1ns/1ps

module ic7432_or #(parameter TPLH = 15, TPHL = 22)(input wire a, b, output wire y);
    assign #(TPLH, TPHL) y = a | b;
endmodule

`endif
