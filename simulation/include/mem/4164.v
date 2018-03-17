`timescale 1ns/1ps

`define IC4164_STATE_NONE 0
`define IC4164_STATE_READ 1
`define IC4164_STATE_EARLY_WRITE 2

// This 4164 implementation only supports READ and EARLY_WRITE modes.
module ic4164_ram 
    #(parameter TRAH = 25, // Time to load row buffer
                TCAH = 55,  // Time to load column buffer
                TRAC = 200, // Time to decode the row address from buffer
                TCAC = 135,  // Time to decode the column address from buffer
                TDH = 55, // Time to load data input buffer
                TCAS = 135 // Time to finish write after CAS activation
    )
    (input wire nwe, nras, ncas, di, input wire [7:0] l, output wire do);
    reg [256:0] data[0:256];
    reg [7:0] row_buff, col_buff, row_dec, col_dec;
    reg di_buff, do_buff = 1'bz;
    integer state = `IC4164_STATE_EARLY_WRITE;

    // Determine the state on CAS
    always @(ncas)
        if (ncas === 1)
            state = `IC4164_STATE_NONE;
        else if (nwe === 1)
            state = `IC4164_STATE_READ;
        else
            state = `IC4164_STATE_EARLY_WRITE;

    // Load row buffer on RAS
    always @(negedge nras) 
        #TRAH row_buff = l;

    // Load column buffer on CAS
    always @(negedge ncas)
        #TCAH col_buff = l;

    // Decode row address from buffer
    always @(negedge nras)
    begin
        row_dec = 8'bx;
        #TRAC row_dec = row_buff;
    end

    // Decode column address from buffer
    always @(negedge ncas)
    begin
        col_dec = 8'bx;
        #TCAC col_dec = col_buff;
    end

    // Data input buffer set
    always @(negedge ncas or negedge nwe)
        #TDH di_buff = di;

    // Data read/write
    always @(row_dec, col_dec)
        if (state == `IC4164_STATE_READ)
            if (row_dec !== 8'bx && col_dec !== 8'bx)
                do_buff = data[row_dec][col_dec];
            else
                do_buff = 1'bz;
        else if ((state == `IC4164_STATE_EARLY_WRITE) && (row_dec !== 8'bx && col_dec !== 8'bx))
        begin
            data[row_dec][col_dec] = di_buff;
        end

    assign do = (ncas == 0) ? do_buff : 1'bz;
endmodule
