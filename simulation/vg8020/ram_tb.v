`include "ram.v"

`include "utils/asserts.v"
`include "utils/clock.v"

`timescale 1ns/100ps
module ram_tb;

    reg nmreq, nrd, nrfsh;
    reg [15:0] addr;
    wire [7:0] data;
    reg [7:0] data_in;

    assign data = (nsltsl3 === 0 && nrd === 1) ? data_in : 8'bz;

    wire clk, nclk, nmreqd, nrdd, nrfshd, nsltsl3;

    clock clock(nclk);
    ram dut(nmreq, nmreqd, nrdd, nrfshd, nsltsl3, nclk, addr, data);

    assign #(15, 18) clk = !nclk;
    assign #15 nmreqd = nmreq;
    assign #15 nrdd = nrd;
    assign #15 nrfshd = nrfsh;
    assign #15 nsltsl3 = nmreq;

    initial
    begin
        $dumpfile("ram.vcd");
        $dumpvars;

        nmreq = 1; nrd = 1; nrfsh = 1;

        /* Following the timewave at http://home.mit.bme.hu/~benes/oktatas/dig-jegyz_052/Z80-kivonat.pdf */

        /**
         * Write some data at 0x1234
         */
        // T1/posedge
        addr = 16'h1234;
        nrd = 1;

        // T1/negedge
        `CLOCK_NEXT_HALF(clk, 10);
        nmreq = 0; 
        data_in = 8'h42;

        // T3/negedge
        repeat(2) `CLOCK_NEXT_HALF(clk, 10);
        nmreq = 1;  

        /**
         * Read data from 0x1234
         */

        // T1/posedge
        addr = 16'h1234;
        data_in = 8'bz;

        // T1/negedge
        `CLOCK_NEXT_HALF(clk, 10);
        `ASSERT(data === 8'bz); 
        nmreq = 0; 
        nrd = 0;

        // T3/negedge
        repeat(2) `CLOCK_NEXT_HALF(clk, 10);
        `ASSERT(data === 8'h42);
        nmreq = 1; 
        nrd = 1;

        `CLOCK_NEXT(clk, 10) $finish;
    end
endmodule
