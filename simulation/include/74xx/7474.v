`ifndef INCLUDED_7474
`define INCLUDED_7474

`timescale 1ns/1ps

module ic7474_flipflop #(parameter TPLH = 25, TPHL = 40)(input wire npr, ncl, clk, d, output wire q, nq);
    reg data;

    always @(posedge clk) data <= d;
    //assign #(TPLH, TPHL) q = (npr === 1 && ncl === 1) ? data : ~npr;
    assign #(TPLH, TPHL) q = (npr === 0) ? 1 :((ncl === 0) ? 0 : data);
    assign nq = ~q;
endmodule

`endif
