`include "7404.v"

`include "utils/asserts.v"

`timescale 1ns/100ps

module ic7404_not_tb;

    reg a;
    wire y;

    ic7404_not dut(a, y);

    initial
    begin
        $dumpfile("7404.vcd");
        $dumpvars;

        a = 0;
        #25 `ASSERT(y === 1);

        #50 a = 1;
        #25 `ASSERT(y === 0);

        #50 $finish;
    end
endmodule
