`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:  Aster Zawaideh
// 
// Create Date: 01/15/2026 11:09:31 AM
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
    input [31:0] h0,
    input [31:0] h,
    input [31:0] tau_rise_inverse,
    input [31:0] tau_decay_inverse, //forward
    input [31:0] g, //forward
    input actionPotential,
    input [1:0] synapseID,
    input [31:0] dt,
    output [31:0] h_out,
    output exception,
    output [1:0] synapseID_forward,
    output [31:0] dt_forward,
    output [31:0] tau_decay_inverse_forward, //forward
    output [31:0] g_forward //forward
    );
    
    
    wire except_MAC1,except_MAC2, except_ADD;
    wire overF_MAC1,overF_MAC2, overF_ADD;
    wire underF_MAC1,underF_MAC2, underF_ADD;
    
    wire [31:0] Float_1;
    assign Float_1 = 32'h3f800000;
    
    wire [31:0] result_MAC1, dh;

    wire [31:0] b_MAC1;
    assign b_MAC1 = actionPotential ? h0 : 0; //if (event detected in pre-synaptic cell): add h0 , else: add 0

    assign synapseID_forward = synapseID;
    assign tau_decay_inverse_forward = tau_decay_inverse;
    assign g_forward = g;
    assign dt_forward = dt;

    
    LUT_MAC_Module #(.DataWidth(32)) MAC1(
        .M_value(h),
        .B_value(b_MAC1),
        .X_value(tau_rise_inverse),
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
        .result(dh)
    );
    
    FloatingAddition #(.XLEN(32)) FPAdd(
        .A(h),
        .B(dh),
        .Exception(except_ADD),
        .result(h_out)
    );

    assign exception = except_MAC1 | except_MAC2 | except_ADD;
        
        
endmodule