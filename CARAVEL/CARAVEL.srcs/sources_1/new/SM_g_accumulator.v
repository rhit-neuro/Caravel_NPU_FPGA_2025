`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Aster Zawaideh
// 
// Create Date: 01/15/2026 09:14:56 PM
// Design Name: 
// Module Name: SM_g_accumulator
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


module SM_g_accumulator(
    input [31:0] h_tn1,
    input [31:0] g_tn1,
    input [31:0] tau_decay_inverse,
    input [1:0] synapseID,
    input [31:0] dt,
    input exception_h,
    output [31:0] g_t,
    output exception
//    output [1:0] synapseID_out
    );
    
    wire except_MAC1,except_MAC2;
    wire overF_MAC1,overF_MAC2;
    wire underF_MAC1,underF_MAC2;
    wire [31:0] result_MAC1;

//    assign synapseID_out = synapseID;

    
    LUT_MAC_Module #(.DataWidth(32)) MAC1(
        .M_value(g_tn1),
        .B_value(h_tn1),
        .X_value(tau_decay_inverse),
        .Exception(except_MAC1),
        .Overflow(overF_MAC1),
        .Underflow(underF_MAC1),
        .result(result_MAC1)
    );
    
    LUT_MAC_Module #(.DataWidth(32)) MAC2(
        .M_value(result_MAC1),
        .B_value(g_tn1),
        .X_value(dt),
        .Exception(except_MAC2),
        .Overflow(overF_MAC2),
        .Underflow(underF_MAC2),
        .result(g_t)
    );
    
    assign exception = except_MAC1 | except_MAC2 | exception_h;

endmodule
