`include "62256.v"
`include "asserts.v"

`timescale 1ns/100ps

module ic62256_ram_tb;

    reg ncs = 1, nwe = 1, noe = 1;
    reg [14:0] addr;
    reg [7:0] data_out;

    wire [7:0] data = data_out === 8'bz ? 8'bz : data_out;

    ic62256_ram dut(ncs, nwe, noe, addr, data);

    // Just for reference
    reg clk = 1;
    always #140 clk = ~clk;

    initial
    begin
        $dumpfile("62256.vcd");
        $dumpvars;

        /***
         * Must write data at 0x1234
         */        
        #20 // Having this delay here introduces delays respect clock for all signals
        addr = 14'h1234;
        
        #140 
        ncs = 0;
        data_out = 8'h42;

        #280
        nwe = 0;

        #280
        ncs = 1;
        nwe = 1;

        #140
        data_out = 8'bz;

        /***
         * Must read data from 0x1234
         */
        addr = 14'h1234;
        #140
        `ASSERT(data === 8'bz);
        ncs = 0;
        noe = 0;

        #560
        `ASSERT(data === 8'h42);
        ncs = 1;
        noe = 1;

        #140 $finish;
    end
endmodule
