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
    input [31:0] h,
    input [31:0] g,
    input [31:0] tau_decay_inverse,
    input [1:0] synapseID,
    input [31:0] dt,
    output [31:0] g_out,
    output exception,
    output [1:0] synapseID_out
    );
    
    wire except_MAC1,except_MAC2, except_ADD;
    wire overF_MAC1,overF_MAC2, overF_ADD;
    wire underF_MAC1,underF_MAC2, underF_ADD;
    wire [31:0] result_MAC1, dg, result_ADD;

    assign synapseID_out = synapseID;

    
    LUT_MAC_Module #(.DataWidth(32)) MAC1(
        .M_value(g),
        .B_value(h),
        .X_value(tau_decay_inverse),
        .Exception(except_MAC1),
        .Overflow(overF_MAC1),
        .Underflow(underF_MAC1),
        .result(result_MAC1)
    );
    
    LUT_MAC_Module #(.DataWidth(32)) MAC2(
        .M_value(result_MAC1),
        .B_value(0),
        .X_value(dt),
        .Exception(except_MAC2),
        .Overflow(overF_MAC2),
        .Underflow(underF_MAC2),
        .result(dg)
    );
    
    
       FloatingAddition #(.XLEN(32)) FPAdd(
        .A(g),
        .B(dg),
        .Exception(except_ADD),
        .result(g_out)
    );

    assign exception = except_MAC1 | except_MAC2 | except_ADD;

endmodule
