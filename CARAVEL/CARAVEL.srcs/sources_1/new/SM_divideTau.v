`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Aster Zawaideh
// 
// Create Date: 01/16/2026 12:27:33 PM
// Design Name: 
// Module Name: SM_divideTau
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: Returns result = 1/tau
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module SM_divideTau(
    input [31:0] tau,
    output [31:0] tau_inverse
    );
    
    wire [31:0] Float_1;
    assign Float_1 = 32'h3f800000;

    
    floating_point_0 divideTau (
      //.aclk(clk),                                  // input wire aclk
      //.s_axis_a_tvalid(1'b1),                          // input wire s_axis_a_tvalid
      .s_axis_a_tdata(Float_1),              // input wire [31 : 0] s_axis_a_tdata
      //.s_axis_b_tvalid(tau_valid),            // input wire s_axis_b_tvalid
      .s_axis_b_tdata(tau),              // input wire [31 : 0] s_axis_b_tdata
      //.m_axis_result_tvalid(m_axis_result_tvalid),  // output wire m_axis_result_tvalid
      .m_axis_result_tdata(tau_inverse)//,    // output wire [31 : 0] m_axis_result_tdata
      //.m_axis_result_tuser(m_axis_result_tuser)    // output wire [1 : 0] m_axis_result_tuser
    );
    
endmodule
