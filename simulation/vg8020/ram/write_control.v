`include "74xx/7402.v"

`timescale 1ns/1ps

module write_control(input wire nrdd, nmreqd, output wire nwe);
    ic7402_nor u46_2(.a(nrdd), .b(nmreqd), .y(nwe));
endmodule
