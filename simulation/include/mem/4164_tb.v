`include "4164.v"

`include "utils/asserts.v"

`timescale 1ns/100ps

module ic4164_ram_tb;

    reg nwe = 1, nras = 1, ncas = 1, di = 0;
    reg [7:0] l;
    wire do;

    ic4164_ram dut(nwe, nras, ncas, di, l, do);

    initial
    begin
        $dumpfile("4164.vcd");
        $dumpvars;

        /***
         * Must write data at 0xa4a2
         */
        // Write and strobe the row address
        l = 8'ha2;   
        #10 nras = 0;

        // Prepare the input data and strobe the WE signal
        #30 
        di = 1;
        nwe = 0;

        // Write and strobe the column address
        #30
        l = 8'ha4;
        #10 ncas = 0;

        // Restore the WE
        #30 nwe = 1;

        // Hold some time to write the data and them raise up the control signals
        #150
        ncas = 1;
        nras = 1;

        /***
         * Must read data at 0xa4a2
         */
        // Write and strobe the row address
        #150 l = 8'ha2;   
        #10 nras = 0;

        // Write and strobe the column address
        #30
        l = 8'ha4;
        #10 ncas = 0;

        // The data must be in the output
        #200 `ASSERT(do === 1);

        // Restore the signals
        nras = 1;
        #30 ncas = 1;
        #30 `ASSERT(do === 1'bz);

        #50 $finish;
    end
endmodule
