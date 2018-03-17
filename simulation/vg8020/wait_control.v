`include "74xx/7474.v"

`timescale 1ns/1ps

module wait_control(input wire clock, nextwait, nm1d, output wire nwait);
    wire wire1, wire2;
    supply1 vcc;
    ic7474_flipflop u1_1(.npr(wire2), .ncl(nextwait), .clk(clock), .d(nm1d), .q(wire1), .nq());
    ic7474_flipflop u1_2(.npr(nextwait), .ncl(vcc), .clk(clock), .d(wire1), .q(wire2), .nq());
    assign nwait = wire1;
endmodule
