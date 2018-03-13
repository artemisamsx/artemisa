`include "74368.v"
`include "asserts.v"

`timescale 1ns/1ps

module ic74368_invbuffer_tb;

    reg noe, a;
    wire y;

    ic74368_invbuffer dut(noe, a, y);

    initial
    begin
        $dumpfile("74368.vcd");
        $dumpvars;

        noe = 1; a = 0;
        #50 `ASSERT(y === 1'bz);

        noe = 0;
        #40 `ASSERT(y === 1);
        
        #50 a = 1;
        #25 `ASSERT(y === 0);

        #50 noe = 1;
        #50 `ASSERT(y === 1'bz);

        #50 $finish;
    end
endmodule
