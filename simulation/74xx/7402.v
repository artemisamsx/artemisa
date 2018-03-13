`ifndef INCLUDED_7402
`define INCLUDED_7402

`timescale 1ns/1ps

module ic7402_nor #(parameter TPLH = 15, TPHL = 15)(input wire a, b, output wire y);
    assign #(TPLH, TPHL) y = ~(a | b);
endmodule

`endif
