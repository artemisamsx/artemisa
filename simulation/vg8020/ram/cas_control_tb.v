`include "cas_control.v"

`include "utils/asserts.v"
`include "utils/clock.v"

`timescale 1ns/100ps

module cas_control_tb;

    reg nmreq = 1, nsltsl3 = 1, nrfshd = 1;
    wire nmreqd, clk, nclk, ncas;

    assign #10 nmreqd = nmreq;
    assign nclk = !clk;

    clock clock(clk);
    cas_control dut(nmreq, nmreqd, nsltsl3, nclk, ncas);

    initial
    begin
        $dumpfile("cas_control.vcd");
        $dumpvars;

        /* Following the timewave at http://home.mit.bme.hu/~benes/oktatas/dig-jegyz_052/Z80-kivonat.pdf */

        // T1/negedge
        `CLOCK_NEXT_HALF(clk, 10);
        `ASSERT(ncas == 1); 
        nmreq = 0; 
        nsltsl3 = 0;

        // T2/negedge
        `CLOCK_NEXT_HALF(clk, 75);
        `ASSERT(ncas == 0); 

        // T3/posedge
        `CLOCK_NEXT(clk, 10);
        nmreq = 1; 
        nsltsl3 = 1; 
        nrfshd = 0;
        #30 `ASSERT(ncas == 1); 

        // T3/negedge
        `CLOCK_NEXT_HALF(clk, 10);
        `ASSERT(ncas == 1); 
        nmreq = 0;

        // T4/negedge
        `CLOCK_NEXT_HALF(clk, 10);
        `ASSERT(ncas == 1); 
        nmreq = 1;

        // T1/posedge
        `CLOCK_NEXT(clk, 10);
        `ASSERT(ncas == 1); 
        nrfshd = 1;

        // T1/negedge
        `CLOCK_NEXT_HALF(clk, 10);
        `ASSERT(ncas == 1); 

        #125 $finish;
    end
endmodule
