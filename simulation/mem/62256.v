`timescale 1ns/1ps

module ic62256_ram 
    #(parameter TAA = 100, // Time to access address
                TACS = 100,  // Time to access CS
                TOE = 50, // Time to access OE
                TWHZ = 35 // Time to access WE
    )
    (input wire ncs, nwe, noe, input wire [14:0] addr, inout wire [7:0] data);

    reg [7:0] mem[0:32*1024];
    reg [7:0] do_buff = 8'bz;

    wire [14:0] #TAA addrd = addr;
    wire #TACS ncsd = ncs;
    wire #TOE noed = noe;
    wire #TWHZ nwed = nwe;

    wire write = ~ncs & ~nwe;

    always @(addrd, ncsd)
        do_buff = (ncsd === 0) ? mem[addrd] : 8'bz;
    
    always @(posedge write)
        mem[addr] = data;

    assign data = (noed === 0) ? do_buff : 8'bz;


    /*
    // Load addr buffer on CS
    always @(negedge ncs) 
        #TRAH addr_buff = addr;

    // Load column buffer on CAS
    always @(negedge ncas)
        #TCAH col_buff = l;

    // Decode address
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
    */
endmodule
