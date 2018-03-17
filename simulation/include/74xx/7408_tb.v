`include "7408.v"

`include "utils/asserts.v"

`timescale 1ns/100ps

module ic7408_and_tb;

    reg a;
    reg b;
    wire y;

    ic7408_and dut(a, b, y);

    initial
    begin
        $dumpfile("7408.vcd");
        $dumpvars;

        a = 0; b = 0;
        #25 `ASSERT(y === 0);

        #50 a = 1; b = 1;
        #25 `ASSERT(y === 1);

        #50 a = 1; b = 0;
        #25 `ASSERT(y === 0);

        #50 a = 0; b = 1;
        #25 `ASSERT(y === 0);

        #50 $finish;
    end
endmodule
