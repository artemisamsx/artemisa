`ifndef INCLUDED_7404
`define INCLUDED_7404

`timescale 1ns/1ps

module ic7404_not #(parameter TPLH = 15, TPHL = 15)(input wire a, output wire y);
    assign #(TPLH, TPHL) y = ~a;
endmodule

module ic74hc04_not(input wire a, b, output wire y);
    ic7404_not #(.TPLH(17), .TPHL(17)) delegate(a, y);
endmodule

module ic74hct04_not(input wire a, b, output wire y);
    ic7404_not #(.TPLH(19), .TPHL(19)) delegate(a, y);
endmodule

`endif
