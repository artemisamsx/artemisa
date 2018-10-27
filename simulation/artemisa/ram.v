`include "74xx/7404.v"
`include "74xx/7432.v"
`include "mem/62256.v"

`timescale 1ns/1ps

module ram(input wire nsltsel3, nrd, nwr, input wire [15:0] addr, inout wire [7:00] data);
    wire addr15 = addr[15];
    wire naddr15;
    wire nbanksel0, nbanksel1;    

    ic74hct04_not   ic01_1(.a(addr15), .y(naddr15));
    ic74hct32_or    ic02_1(.a(nsltsel3), .b(addr15), .y(nbanksel0));
    ic74hct32_or    ic02_2(.a(nsltsel3), .b(naddr15), .y(nbanksel1));

    ic62256_ram ic03(nbanksel0, nwr, nrd, addr[14:0], data);
    ic62256_ram ic04(nbanksel1, nwr, nrd, addr[14:0], data);
endmodule