`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Bryce Chen
// 
// Create Date: 02/19/2026 12:59:41 AM
// Design Name: 
// Module Name: SM_Mem_Mapping
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module SM_Mem_Mapping #(parameter
    AddressWidth = 32,
    Syn_base_address = 32'h3070_0000,

    OFF_F         = 8'h00,
    OFF_GSYNBAR   = 8'h04,
    OFF_H0        = 8'h08,
    OFF_ESYN      = 8'h0C,
    OFF_TRISEINV  = 8'h10,
    OFF_TDECAYINV = 8'h14,
    OFF_H         = 8'h18,
    OFF_G         = 8'h1C,
    OFF_AP        = 8'h20
)(
    input  wire                    clk,
    input  wire                    reset,

    // WB3 interface
    input  wire                    wb_cyc_i,
    input  wire                    wb_stb_i,
    input  wire                    wb_we_i,
    input  wire [AddressWidth-1:0] wb_adr_i,
    input  wire [31:0]             wb_dat_i,
    output reg                     wb_ack_o,

    // Outputs to SM
    output reg                     write_pulse,
    output reg  [1:0]              synapse_select, 
    output reg  [8:0]              field_select,
    output reg  [31:0]             write_data
);

    wire wb_xfer;
    assign wb_xfer = wb_cyc_i & wb_stb_i;

    // ACK only writes 
    always @(posedge clk) begin
        if (reset) wb_ack_o <= 1'b0;
        else       wb_ack_o <= (wb_xfer & wb_we_i);
    end

    // Remove base address
    wire [AddressWidth-1:0] address_offset;
    assign address_offset = wb_adr_i - Syn_base_address;

    //0x000/0x100/0x200/0x300
    wire [1:0] decoded_synapse;
    assign decoded_synapse = address_offset[9:8];

    // Offset 
    wire [7:0] reg_offset;
    assign reg_offset = address_offset[7:0];

    // Decode
    reg [8:0] field_sel_comb;
    always @(*) begin
        field_sel_comb = 9'b0;
        case (reg_offset)
            OFF_F:         field_sel_comb[0] = 1'b1;
            OFF_GSYNBAR:   field_sel_comb[1] = 1'b1;
            OFF_H0:        field_sel_comb[2] = 1'b1;
            OFF_ESYN:      field_sel_comb[3] = 1'b1;
            OFF_TRISEINV:  field_sel_comb[4] = 1'b1;
            OFF_TDECAYINV: field_sel_comb[5] = 1'b1;
            OFF_H:         field_sel_comb[6] = 1'b1;
            OFF_G:         field_sel_comb[7] = 1'b1;
            OFF_AP:        field_sel_comb[8] = 1'b1;
            default:       field_sel_comb    = 9'b0;
        endcase
    end

    always @(posedge clk) begin
        if (reset) begin
            write_pulse    <= 1'b0;
            synapse_select <= 2'b0;
            field_select   <= 9'b0;
            write_data     <= 32'b0;
        end else begin
            write_pulse <= 1'b0;

            if (wb_xfer && wb_we_i && (field_sel_comb != 9'b0)) begin
                write_pulse    <= 1'b1;
                synapse_select <= decoded_synapse;  
                field_select   <= field_sel_comb;
                write_data     <= wb_dat_i;
            end
        end
    end
    
    
 //harder than i thought need to figure out logic to decode into the register in the SM but encode them here.
 //chang said use decoder for the offserts
 //dont think we need arbiter since SM doesnt communicate with anything in the wishbone 4 bus
 //
endmodule
