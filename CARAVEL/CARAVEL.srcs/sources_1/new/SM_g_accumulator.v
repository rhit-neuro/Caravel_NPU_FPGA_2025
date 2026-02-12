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
    input reset,
    input enable_g,
    input [31:0] h_tn1,
    input [31:0] g_tn1,
    input [31:0] tau_decay_inverse,
    input [31:0] dt,
    input exception_h_tn1,
    output wire [31:0] g_t,
    output wire exception,
    output wire done_g
    );
    
    wire except_MAC1,except_MAC2;
    wire overF_MAC1,overF_MAC2;
    wire underF_MAC1,underF_MAC2;
    wire [31:0] result_MAC1, result_MAC2;

    
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
        .result(result_MAC2)
    );

    assign exception = except_MAC1 | except_MAC2 | exception_h_tn1;
    assign done_g = (reset ? 0 : (enable_g ? 1 : 0));
    assign g_t = (enable_g ? result_MAC2:g_tn1);

    
//     always @(reset or enable_g or result_MAC2)begin
//        if(reset)begin
//            done_g = 0;
//        end
//        else if(enable_g) begin
//            g_t = result_MAC2;
//            done_g = 1;
//        end else begin
//            g_t = g_tn1;
//            done_g = 0;
//        end
//        exception = except_MAC1 | except_MAC2 | exception_h_tn1;
 
//     end 
    
endmodule