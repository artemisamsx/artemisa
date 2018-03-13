`include "74157.v"
`include "asserts.v"

`timescale 1ns/100ps

module ic74157_mux_tb;

    reg noe, s;
    reg [3:0] i0 = 4'b0101, i1 = 4'b1010;
    wire [3:0]z;

    ic74157_mux dut(noe, s, i0, i1, z);

    initial
    begin
        $dumpfile("74157.vcd");
        $dumpvars;

        noe = 0; s = 0;
        #30 `ASSERT(z === 4'b0101);

        noe = 0; s = 1;
        #30 `ASSERT(z === 4'b1010);

        noe = 1; s = 0;
        #30 `ASSERT(z === 4'b0000);

        noe = 1; s = 1;
        #30 `ASSERT(z === 4'b0000);

        #50 $finish;
    end
endmodule
