`include "cas_control.v"
`include "asserts.v"

`timescale 1ns/100ps

module cas_control_tb;

    reg nmreq = 1, nsltsl3 = 1, clk = 1, nrfshd = 1;
    wire nmreqd, nclk, ncas;

    assign #10 nmreqd = nmreq;
    assign nclk = !clk;

    cas_control dut(nmreq, nmreqd, nsltsl3, nclk, ncas);

    always #125 clk = !clk;

    initial
    begin
        $dumpfile("ram/cas_control.vcd");
        $dumpvars;

        /* Following the timewave at http://www.piclist.com/techref/mem/dram/slide4.html */

        // T1/negedge
        @(negedge clk) #10;
        `ASSERT(ncas == 1); 
        nmreq = 0; 
        nsltsl3 = 0;

        // T2/negedge
        @(negedge clk) #75;
        `ASSERT(ncas == 0); 

        // T3/posedge
        @(posedge clk) #10;
        nmreq = 1; 
        nsltsl3 = 1; 
        nrfshd = 0;
        #30 `ASSERT(ncas == 1); 

        // T3/negedge
        @(negedge clk) #10;
        `ASSERT(ncas == 1); 
        nmreq = 0;

        // T4/negedge
        @(negedge clk) #10;
        `ASSERT(ncas == 1); 
        nmreq = 1;

        // T1/posedge
        @(posedge clk) #10;
        `ASSERT(ncas == 1); 
        nrfshd = 1;

        // T1/negedge
        @(negedge clk) #10;
        `ASSERT(ncas == 1); 

        #125 $finish;
    end
endmodule
