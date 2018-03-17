`include "write_control.v"

`include "utils/asserts.v"

`timescale 1ns/100ps

module write_control_tb;
    reg nrdd, nmreqd;
    wire nwe;

    write_control dut(nrdd, nmreqd, nwe);

    initial
    begin
        $dumpfile("write_control.vcd");
        $dumpvars;

        nrdd = 1;
        nmreqd = 1;
        #25 `ASSERT(nwe === 0);

        nrdd = 1;
        nmreqd = 0;
        #25 `ASSERT(nwe === 0);

        nrdd = 0;
        nmreqd = 0;
        #25 `ASSERT(nwe === 1);

        #50 $finish;
    end
endmodule
