`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/15/2026 09:40:05 PM
// Design Name: 
// Module Name: tb_SM_h_accumulator
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


module tb_SM_h_accumulator;
    reg clk;
    reg [31:0] tau_rise;
    reg [31:0] h0;
    reg [31:0] dt;
    reg [31:0] T_decay;
    reg [31:0] h;
    reg [1:0] synapseID;
    reg actionPotential;
    wire [31:0] h_out;
    wire exception;
   
    SM_h_accumulator dut(
        .h0(h0),
        .h(h),
        .tau_rise(tau_rise),
        .actionPotential(actionPotential),
        .synapseID(synapseID),
        .dt(dt),
        .h_out(h_out),
        .exception(exception)
    );
    
  // 10ns clock
  initial begin
    clk = 1'b0;
    forever #5 clk = ~clk;
  end
  
  initial begin
  tau_rise = 32'h41a00000; //20 in decimal (represented as a float)
  h0 = 32'h41480000; //12.5 in decimal (represented as a floating point)
  dt = 32'h40300000; //2.75 in decimal (represented as a floating point)
  T_decay = 32'h40300000; //2.75 in decimal (represented as a floating point)
  h=32'h41480000; //12.5 in decimal (represented as a floating point)
  synapseID=2'b00;
  actionPotential=1'b0;

  @(posedge clk);
  actionPotential=1'b1;
  h <= h_out;
  @(posedge clk);
  actionPotential=1'b0;
  h <= h_out;
  @(posedge clk);
  actionPotential=1'b1;
  h <= h_out;
  @(posedge clk);
  actionPotential=1'b0;
  h <= h_out;

  end
  
  
    
endmodule
