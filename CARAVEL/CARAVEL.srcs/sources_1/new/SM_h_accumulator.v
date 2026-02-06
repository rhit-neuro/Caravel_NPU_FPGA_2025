`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Aster Zawaideh
// 
// Create Date: 02/06/2026 12:38:52 PM
// Design Name: 
// Module Name: SM_h_accumulator
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


module SM_h_accumulator(
    input reset,
    input enable_h,
    input [31:0] h0,
    input [31:0] h_tn1,
    input [31:0] tau_rise_inverse,
    input actionPotential_tn1,
    input [31:0] dt,
    output reg [31:0] h_t,
    output reg exception,
    output reg done_h
    );
    
    
    wire except_MAC1,except_MAC2;
    wire overF_MAC1,overF_MAC2;
    wire underF_MAC1,underF_MAC2;
    
    
    wire [31:0] result_MAC1, result_MAC2;

    wire [31:0] b_MAC1;
    assign b_MAC1 = actionPotential_tn1 ? h0 : 0; //if (event detected in pre-synaptic cell): add h0 , else: add 0

    
    LUT_MAC_Module #(.DataWidth(32)) MAC1(
        .M_value(h_tn1),
        .B_value(b_MAC1),
        .X_value(tau_rise_inverse),
        .Exception(except_MAC1),
        .Overflow(overF_MAC1),
        .Underflow(underF_MAC1),
        .result(result_MAC1)
    );
    
    LUT_MAC_Module #(.DataWidth(32)) MAC2(
        .M_value(result_MAC1),
        .B_value(h_tn1),
        .X_value(dt),
        .Exception(except_MAC2),
        .Overflow(overF_MAC2),
        .Underflow(underF_MAC2),
        .result(result_MAC2)
    );

    always @(reset or enable_h or result_MAC2)begin
        if(reset)begin
            done_h = 0;
        end
        else if(enable_h) begin
            exception = except_MAC1 | except_MAC2;
            h_t = result_MAC2;
            done_h = 1;
        end else begin
            h_t = h_tn1;
            done_h = 0;
        end
        
     end 
        
        
endmodule
