`ifndef INCLUDED_CLOCK
`define INCLUDED_CLOCK

`timescale 1ns/1ps

module clock #(parameter FREQ = 3.58)(output wire clk);
    output reg osc = 1;

    always #(1000/FREQ/2) osc = ~osc;
    assign clk = osc;
endmodule

`define CLOCK_NEXT(clk, delay) @(posedge clk) #delay
`define CLOCK_NEXT_HALF(clk, delay) @(negedge clk) #delay

`endif
