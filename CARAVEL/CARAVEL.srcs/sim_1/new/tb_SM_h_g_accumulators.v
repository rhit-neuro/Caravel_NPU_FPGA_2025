`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/16/2026 02:30:38 PM
// Design Name: 
// Module Name: tb_SM_h_g_accumulators
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


module tb_SM_h_g_accumulators;
    reg clk;
    reg [31:0] tau_rise;
    reg [31:0] tau_decay;
    reg [31:0] h0;
    reg [31:0] dt;
    reg [31:0] h;
    reg [31:0] g;
    reg [1:0] synapseID;
    reg actionPotential;
    
    
    wire [31:0] h_out;
    wire [31:0] g_out;
    wire exception;
    wire [31:0] tau_rise_inv;
    wire [31:0] tau_decay_inv;
    wire [1:0] synapseID_forward;
    wire [1:0] synapseID_out;
    wire [31:0] tau_decay_inv_forward;
    wire [31:0] g_forward;
    wire [31:0] dt_forward;


     SM_h_accumulator dut(
        .h0(h0),
        .h(h),
        .g(g),
        .tau_rise_inverse(tau_rise_inv),
        .tau_decay_inverse(tau_decay_inv),
        .actionPotential(actionPotential),
        .synapseID(synapseID),
        .dt(dt),
        .h_out(h_out),
        .exception(exception),
        .synapseID_forward(synapseID_forward),
        .tau_decay_inverse_forward(tau_decay_inv_forward),
        .g_forward(g_forward),
        .dt_forward(dt_forward)
    );
    
    SM_g_accumulator dut_g(
        .h(h_out),
        .g(g_forward),
        .tau_decay_inverse(tau_decay_inv_forward),
        .synapseID(synapseID_forward),
        .dt(dt_forward),
        .g_out(g_out),
        .exception(exception),
        .synapseID_out(synapseID_out)
    );
    
    
    SM_divideTau divTauRise (
        .tau(tau_rise),
        .tau_inverse(tau_rise_inv)
    );
    
    SM_divideTau divTauDecay (
        .tau(tau_decay),
        .tau_inverse(tau_decay_inv)
    );
    
  // 10ns clock
  initial begin
    clk = 1'b0;
    forever #5 clk = ~clk;
  end

endmodule
