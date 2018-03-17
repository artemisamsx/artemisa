`include "rowcol_selector.v"

`include "utils/asserts.v"

`timescale 1ns/100ps

module rowcol_selector_tb;

    reg mux;
    reg [15:0] addr = 16'b0000_1111_0101_1010;
    wire [7:0] rowcol;

    rowcol_selector dut(mux, addr, rowcol);

    initial
    begin
        $dumpfile("rowcol_selector.vcd");
        $dumpvars;

        mux = 0;
        #50 `ASSERT(rowcol === 8'b0101_1010);

        mux = 1;
        #50 `ASSERT(rowcol === 8'b0000_1111);

        #50 $finish;
    end
endmodule
