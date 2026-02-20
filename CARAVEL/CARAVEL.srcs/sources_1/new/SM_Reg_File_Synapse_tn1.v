`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Aster Zawaideh
// 
// Create Date: 02/17/2026 03:16:02 PM
// Design Name: 
// Module Name: SM_Reg_File_Synapse_tn1
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


module SM_Reg_File_Synapse_tn1(
    input         clk,
    input         reset,
    input         enable,

    input  [31:0] AP_t,       
    input  [31:0] h_t,
    input  [31:0] g_t,
    
    output reg        AP_tn1,         
    output reg [31:0] h_tn1,
    output reg [31:0] g_tn1
);

    //updating the values in the register file
    always @(posedge clk) begin
        if (reset) begin
            AP_tn1 <= 32'h00000000;
            h_tn1 <= 32'h00000000;
            g_tn1 <= 32'h00000000;

        end else begin
            if (enable) begin
                AP_tn1 <= AP_t;
                h_tn1 <= h_t;
                g_tn1 <= g_t;
            end
        end
    end
endmodule
