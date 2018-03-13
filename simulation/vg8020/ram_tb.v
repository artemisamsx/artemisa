`include "ram.v"
`include "asserts.v"

`timescale 1ns/100ps
`define CLK_SPEED 3.58 // Mhz

module ram_tb;

    reg nmreq, nrd, nrfsh;
    reg [15:0] addr;
    wire [7:0] data;
    reg [7:0] data_in;

    assign data = (nsltsl3 === 0 && nrd === 1) ? data_in : 8'bz;

    reg nclk = 0;
    wire clk, nmreqd, nrdd, nrfshd, nsltsl3;

    ram dut(nmreq, nmreqd, nrdd, nrfshd, nsltsl3, nclk, addr, data);

    always #(1000/`CLK_SPEED/2) nclk = !nclk;

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

        /* Following the timewave at http://www.piclist.com/techref/mem/dram/slide4.html */

        /**
         * Write some data at 0x1234
         */
        // T1/posedge
        addr = 16'h1234;
        nrd = 1;

        // T1/negedge
        @(negedge clk) #10;
        nmreq = 0; 
        data_in = 8'h42;

        // T3/negedge
        repeat(2) @(negedge clk) #10;
        nmreq = 1;  

        /**
         * Read data from 0x1234
         */

        // T1/posedge
        addr = 16'h1234;
        data_in = 8'bz;

        // T1/negedge
        @(negedge clk) #10;
        `ASSERT(data === 8'bz); 
        nmreq = 0; 
        nrd = 0;

        // T3/negedge
        repeat(2) @(negedge clk) #10;
        `ASSERT(data === 8'h42);
        nmreq = 1; 
        nrd = 1;

        /*
        // T3, second semicycle
        @(negedge clk) #10;
        `ASSERT(nras == 1); 
        `ASSERT(mux == 0);
        nmreq = 0;

        // T4, second semicycle
        @(negedge clk) #10;
        `ASSERT(nras == 0); 
        `ASSERT(mux == 1);
        nmreq = 1;

        // T1 start
        @(posedge clk) #10;
        `ASSERT(nras == 1); 
        `ASSERT(mux == 0);
        nrfshd = 1;

        // T1, second semicycle
        @(negedge clk) #10;
        `ASSERT(nras == 1); 
        `ASSERT(mux == 0);
        */

        #125 $finish;
    end
endmodule
