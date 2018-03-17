`include "7432.v"

`include "utils/asserts.v"

`timescale 1ns/100ps

module ic7432_or_tb;

    reg a;
    reg b;
    wire y;

    ic7432_or dut(a, b, y);

    initial
    begin
        $dumpfile("7432.vcd");
        $dumpvars;

        a = 0; b = 0;
        #25 `ASSERT(y === 0);

        #50 a = 1; b = 1;
        #25 `ASSERT(y === 1);

        #50 a = 1; b = 0;
        #25 `ASSERT(y === 1);

        #50 a = 0; b = 1;
        #25 `ASSERT(y === 1);

        #50 $finish;
    end
endmodule
