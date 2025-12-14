`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Benjamin Olenick
// Create Date: 12/14/2025 04:57:24 PM
// Description: This is a tb to simulate a dummy write/read to an external SD card 
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module external_sdCard_tb( );

    // Clock and Reset. Need the reset 
    reg i_clk       = 0;
    reg i_sd_reset  = 1;
    
    // 10ns period => 100MHz clock
    always #5 i_clk = ~i_clk;
    
    // WB interface
    reg i_wb_cyc            = 0;
    reg i_wb_stb            = 0;
    reg i_wb_we             = 0;
    reg [1:0] i_wb_addr     = 0;
    reg [31:0] i_wb_data    = 0;
    reg [3:0] i_wb_sel      = 4'hF;
    
    wire        o_wb_stall, o_wb_ack;
    wire [31:0] o_wb_data;
    
    // SD card SPI pins
    wire o_cs_n, o_sck, o_mosi;
    reg i_miso          = 1'b1; // SD card returns 1's when idle
    reg i_card_detect   = 1'b0;  // Assume the card is plugged in
    
    // Misc
    wire o_int;
    reg i_bus_grant = 1'b1; // Always granted
    wire [31:0] o_debug;
    
    // Instantiate SDSPI
    sdspi dut (
        .i_clk        (i_clk),
        .i_sd_reset   (i_sd_reset),

        .i_wb_cyc     (i_wb_cyc),
        .i_wb_stb     (i_wb_stb),
        .i_wb_we      (i_wb_we),
        .i_wb_addr    (i_wb_addr),
        .i_wb_data    (i_wb_data),
        .i_wb_sel     (i_wb_sel),
        .o_wb_stall   (o_wb_stall),
        .o_wb_ack     (o_wb_ack),
        .o_wb_data    (o_wb_data),

        .o_cs_n       (o_cs_n),
        .o_sck        (o_sck),
        .o_mosi       (o_mosi),
        .i_miso       (i_miso),
        .i_card_detect(i_card_detect),

        .o_int        (o_int),
        .i_bus_grant  (i_bus_grant),
        .o_debug      (o_debug)
    );
    ////////////////////////////
    // Wishbone helpers
    ////////////////////////////

    // Write to WB
    task wb_write(input [1:0] addr, input [31:0] data);
    begin
        @(posedge i_clk);
        i_wb_addr <= addr;
        i_wb_data <= data;
        i_wb_we   <= 1'b1;
        i_wb_cyc  <= 1'b1;
        i_wb_stb  <= 1'b1;
        i_wb_sel  <= 4'hF;

        // Wait for acknowledge
        @(posedge i_clk);
        while (!o_wb_ack) begin
            @(posedge i_clk);
        end

        // Deassert cycle
        i_wb_cyc  <= 1'b0;
        i_wb_stb  <= 1'b0;
        i_wb_we   <= 1'b0;
    end
    endtask
    
    // Read from WB
    task wb_read(input [1:0] addr, output [31:0] data);
    begin
        @(posedge i_clk);
        i_wb_addr <= addr;
        i_wb_we   <= 1'b0;
        i_wb_cyc  <= 1'b1;
        i_wb_stb  <= 1'b1;
        i_wb_sel  <= 4'hF;

        @(posedge i_clk);
        while (!o_wb_ack) begin
            @(posedge i_clk);
        end

        data = o_wb_data;

        i_wb_cyc  <= 1'b0;
        i_wb_stb  <= 1'b0;
    end
    endtask
    
    ////////////////////////////
    // Begin Test
    ////////////////////////////
    initial begin
        // VCD dump if you use gtkwave or similar
        $dumpfile("tb_sdspi.vcd");
        $dumpvars(0, tb_sdspi);

        // Hold reset
        i_sd_reset = 1'b1;
        repeat (10) @(posedge i_clk);
        i_sd_reset = 1'b0;

        // Wait for internal startup clocks, etc.
        repeat (200) @(posedge i_clk);

        // 1) Write argument register = 0 (address 01)
        wb_write(2'b01, 32'h0000_0000);

        // 2) Issue a simple command word to command register (address 00)
        //    Here we send all zeros, which the core interprets as CMD0 with R1 response.
        wb_write(2'b00, 32'h0000_0000);

        // Let it run for a while so you can see SPI activity
        repeat (2000) @(posedge i_clk);

        $finish;
    end

    

endmodule