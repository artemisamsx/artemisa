`include "7474.v"
`include "asserts.v"

`timescale 1ns/100ps

module ic7474_flipflop_tb;
    reg npr = 1, ncl = 1, clk = 0, d = 1;
    wire q, nq;

    ic7474_flipflop dut(npr, ncl, clk, d, q, nq);

    initial
    begin
        $dumpfile("7474.vcd");
        $dumpvars;

        // Must load d on clk rise edge
        clk = 1;
        #50
        `ASSERT(q === 1);
        `ASSERT(nq === 0);

        // Must clear ignoring internal register
        ncl = 0;
        #50
        `ASSERT(q === 0);
        `ASSERT(nq === 1);
        ncl = 1;

        // Must ignore changes on d without clk movement
        d = 0;
        #50
        `ASSERT(q === 1);
        `ASSERT(nq === 0);
        
        // Must load again d on posedge of clk
        clk = 0;
        #10 clk = 1;
        #50
        `ASSERT(q === 0);
        `ASSERT(nq === 1);
        
        // Must preset ignoring internal register
        npr = 0;
        #50
        `ASSERT(q === 1);
        `ASSERT(nq === 0);
        npr = 1;

        #50 $finish;
    end
endmodule
