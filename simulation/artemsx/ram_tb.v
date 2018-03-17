`include "ram.v"

`include "utils/asserts.v"
`include "utils/clock.v"

`timescale 1ns/100ps

module ram_tb;

    reg nsltsel3 = 1, nwr = 1, nrd = 1;
    reg [15:0] addr;
    reg [7:0] data_out;

    wire [7:0] data = data_out === 8'bz ? 8'bz : data_out;

    ram dut(nsltsel3, nrd, nwr, addr, data);
    clock clock(clk);

    initial
    begin
        $dumpfile("ram.vcd");
        $dumpvars;

        /***
         * Must write data at 0x1234
         */        
        #20 addr = 16'h1234;

        `CLOCK_NEXT_HALF(clk, 20);
        nsltsel3 = 0;
        data_out = 8'h42;

        `CLOCK_NEXT_HALF(clk, 20);
        nwr = 0;

        `CLOCK_NEXT_HALF(clk, 20);
        nsltsel3 = 1;
        nwr = 1;

        `CLOCK_NEXT(clk, 20);
        data_out = 8'bz;

        /***
         * Must read data from 0x1234
         */
        addr = 16'h1234;
        `CLOCK_NEXT_HALF(clk, 20);
        `ASSERT(data === 8'bz);
        nsltsel3 = 0;
        nrd = 0;

        repeat(2) `CLOCK_NEXT_HALF(clk, 20);
        `ASSERT(data === 8'h42);
        nsltsel3 = 1;
        nrd = 1;

        `CLOCK_NEXT(clk, 0);

        /***
         * Must write data at 0xf234
         */        
        #20 addr = 16'hf234;

        `CLOCK_NEXT_HALF(clk, 20);
        nsltsel3 = 0;
        data_out = 8'h24;

        `CLOCK_NEXT_HALF(clk, 20);
        nwr = 0;

        `CLOCK_NEXT_HALF(clk, 20);
        nsltsel3 = 1;
        nwr = 1;

        `CLOCK_NEXT(clk, 20);
        data_out = 8'bz;

        /***
         * Must read data from 0xf234
         */
        addr = 16'hf234;
        `CLOCK_NEXT_HALF(clk, 20);
        `ASSERT(data === 8'bz);
        nsltsel3 = 0;
        nrd = 0;

        repeat(2) `CLOCK_NEXT_HALF(clk, 20);
        `ASSERT(data === 8'h24);
        nsltsel3 = 1;
        nrd = 1;

        `CLOCK_NEXT(clk, 0);
        $finish;
    end
endmodule
