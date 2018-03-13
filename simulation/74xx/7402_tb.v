`include "7402.v"
`include "asserts.v"

`timescale 1ns/100ps

module ic7402_nor_tb;

    reg a;
    reg b;
    wire y;

    ic7402_nor dut(a, b, y);

    initial
    begin
        $dumpfile("7402.vcd");
        $dumpvars;

        a = 0; b = 0;
        #25 `ASSERT(y === 1);

        #50 a = 1; b = 1;
        #25 `ASSERT(y === 0);

        #50 a = 1; b = 0;
        #25 `ASSERT(y === 0);

        #50 a = 0; b = 1;
        #25 `ASSERT(y === 0);

        #50 $finish;
    end
endmodule
