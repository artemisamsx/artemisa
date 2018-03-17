`ifndef INCLUDED_7432
`define INCLUDED_7432

`timescale 1ns/1ps

module ic7432_or #(parameter TPLH = 15, TPHL = 22)(input wire a, b, output wire y);
    assign #(TPLH, TPHL) y = a | b;
endmodule

module ic74hc32_or(input wire a, b, output wire y);
    ic7432_or #(.TPLH(18), .TPHL(18)) delegate(a, b, y);
endmodule

module ic74hct32_or(input wire a, b, output wire y);
    ic7432_or #(.TPLH(24), .TPHL(24)) delegate(a, b, y);
endmodule

`endif
