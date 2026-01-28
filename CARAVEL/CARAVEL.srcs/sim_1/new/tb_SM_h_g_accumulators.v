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
    reg [31:0] h_tn1;
    reg [31:0] g_tn1;
    reg [1:0] synapseID;
    reg actionPotential_tn1;
    
    
    wire [31:0] h_t;
    wire [31:0] g_t;
    wire exception_h;
    wire exception;
    wire [31:0] tau_rise_inv;
    wire [31:0] tau_decay_inv;


     SM_h_accumulator dut(
        .h0(h0),
        .h_tn1(h_tn1),
        .tau_rise_inverse(tau_rise_inv),
        .actionPotential_tn1(actionPotential_tn1),
        .synapseID(synapseID),
        .dt(dt),
        .h_t(h_t),
        .exception(exception_h)
    );
    
    SM_g_accumulator dut_g(
        .h_tn1(h_tn1),
        .g_tn1(g_tn1),
        .tau_decay_inverse(tau_decay_inv),
        .synapseID(synapseID),
        .dt(dt),
        .g_t(g_t),
        .exception_h(exception_h),
        .exception(exception)
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
  
  
 initial begin
      tau_rise = 32'h41a00000; //20 in decimal (represented as a float)
      h0 = 32'h40b00000; //5.5 in decimal (represented as a floating point)
      dt = 32'h41200000; //10 in decimal (represented as a floating point)
      tau_decay = 32'h41f00000; //30 in decimal (represented as a floating point)
      h_tn1=32'h40e80000; //7.25 in decimal (represented as a floating point)
      g_tn1=32'h41373333; //11.45 in decimal (represented as a floating point)
      synapseID=2'b11;
      actionPotential_tn1=1'b0;
      
      //t=0
      //h[t-1]=
      //h[t]=
      //g[t-1]=
      //g[t]=
    
      @(posedge clk); // t=1
      //h[t-1]=
      //h[t]=
      //g[t-1]=
      //g[t]=
      
      
      actionPotential_tn1=1'b1;
      h_tn1 <= h_t;
      g_tn1 <= g_t;
      
      @(posedge clk); //t=2

      actionPotential_tn1=1'b0;
      h_tn1 <= h_t;
      g_tn1 <= g_t;
      
      @(posedge clk); //t=3
      actionPotential_tn1=1'b1;
      h_tn1 <= h_t;
      g_tn1 <= g_t;
      @(posedge clk); //t=4
      actionPotential_tn1=1'b0;
      h_tn1 <= h_t;
      g_tn1 <= g_t;
      

  end  

endmodule
