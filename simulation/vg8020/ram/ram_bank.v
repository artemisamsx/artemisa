`include "mem/4164.v"

`timescale 1ns/1ps

module ram_bank(input wire [7:0] l, input wire nwe, nras, ncas, inout wire [7:0] data);
    ic4164_ram u8(nwe, nras, ncas, data[0], l, data[0]);
    ic4164_ram u9(nwe, nras, ncas, data[1], l, data[1]);
    ic4164_ram u10(nwe, nras, ncas, data[2], l, data[2]);
    ic4164_ram u11(nwe, nras, ncas, data[3], l, data[3]);
    ic4164_ram u12(nwe, nras, ncas, data[4], l, data[4]);
    ic4164_ram u13(nwe, nras, ncas, data[5], l, data[5]);
    ic4164_ram u14(nwe, nras, ncas, data[6], l, data[6]);
    ic4164_ram u15(nwe, nras, ncas, data[7], l, data[7]);
endmodule
