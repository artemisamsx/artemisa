`include "wait_control.v"

`include "asserts.v"
`include "clock.v"

`timescale 1ns/100ps

module wait_control_tb;

    reg nextwait = 1, nm1 = 1;
    wire clk, nwait;

    wire #(15, 18) nm1d = nm1;

    clock clock(clk);
    wait_control dut(clk, nextwait, nm1d, nwait);

    initial
    begin
        $dumpfile("wait_control.vcd");
        $dumpvars;

        /* Following the timewave at http://home.mit.bme.hu/~benes/oktatas/dig-jegyz_052/Z80-kivonat.pdf */

        /**
         * Simulate a M1 opcode retrieve cycle
         */
        // T1/posedge
        nm1 = 0;

        // T2/negedge
        repeat(2) `CLOCK_NEXT_HALF(clk, 10);
        `ASSERT(nwait === 0);

        // T3/posedge
        `CLOCK_NEXT(clk, 10);
        nm1 = 1;

        // T3/negedge
        `CLOCK_NEXT_HALF(clk, 10);
        `ASSERT(nwait === 1);

        /**
         * Simulate a external device requesting WAIT
         */
        // T1/posedge
        `CLOCK_NEXT(clk, 10);
        nextwait = 0;

        // T1/negedge
        `CLOCK_NEXT_HALF(clk, 10);
        `ASSERT(nwait === 0);

        // T4/negedge (and as many as the requester needs)
        repeat(3) `CLOCK_NEXT_HALF(clk, 10);
        `ASSERT(nwait === 0);
        nextwait = 1;

        // T5/negedge
        `CLOCK_NEXT_HALF(clk, 10);
        `ASSERT(nwait === 1);

        #100 $finish;
    end
endmodule
