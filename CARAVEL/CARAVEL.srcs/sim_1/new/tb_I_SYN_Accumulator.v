`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Bryce Chen
// 
// Create Date: 02/17/2026 03:16:51 PM
// Design Name: 
// Module Name: tb_I_SYN_Accumulator
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


module tb_I_SYN_Accumulator;
    //I syn accumulator
    reg reset;
    reg enable_i_syn;
    reg [31:0] g_syn_bar;
    reg [31:0] f;
    reg [31:0] Vmem;
    reg [31:0] E_syn;
    wire [31:0] i_syn_total_sum;
    wire done_i_syn;
    
    //g & h accumulator
     reg enable_h;
    reg [31:0] tau_rise_inv;
    reg [31:0] h0;
    reg [31:0] dt;
    reg [31:0] h_tn1;
    reg AP_tn1;
    wire [31:0] h_t;
    wire exception_h_t;
    wire done_h;
    
    reg enable_g;
    reg [31:0] tau_decay_inv;
    reg [31:0] g_tn1;
    reg exception_h_tn1;
    wire [31:0] g_t;
    wire exception;
    wire done_g;
    
   
    
    SM_g_accumulator dut_g(
        .reset(reset),
        .enable_g(enable_g),
        .h_tn1(h_tn1),
        .g_tn1(g_tn1),
        .tau_decay_inverse(tau_decay_inv),
        .dt(dt),
        .g_t(g_t),
        .exception_h_tn1(exception_h_tn1),
        .exception(exception),
        .done_g(done_g)
    );
    
    SM_I_SYN_Accumulator dut_i_syn(
        .reset(reset),
        .enable_i_syn(enable_i_syn),
        .g_syn_bar(g_syn_bar),
        .f(f),
        .g(g_t),
        .Vmem(Vmem),
        .E_syn(E_syn),
        .i_syn_total_sum(i_syn_total_sum),
        .done_i_syn(done_i_syn)
    );
    
     SM_h_accumulator dut_h(
        .reset(reset),
        .enable_h(enable_h),
        .h0(h0),
        .h_tn1(h_tn1),
        .tau_rise_inverse(tau_rise_inv),
        .actionPotential_tn1(AP_tn1),
        .dt(dt),
        .h_t(h_t),
        .exception(exception_h_t),
        .done_h(done_h)
    );
    
    
    initial begin
        reset <= 1;
        enable_i_syn <= 1'b0;
        g_syn_bar <= 32'h3e800000;   //0.25
        f <= 32'h3e900000;      //0.28125
        Vmem <= 32'h3ee00000;    //0.4375
        E_syn <= 32'h3f200000;   //0.625
        
        AP_tn1 <= 1'b0;
        enable_h <=1'b0;
        h0 <= 32'h3f000000; //0.5 in decimal (represented as a floating point)
        tau_rise_inv <= 32'h3e4ccccd; //0.2 in decimal (represented as a float)
        
        dt <= 32'h3f000000; //0.5 in decimal (represented as a floating point)
        h_tn1 <= 32'h3f000000; //0.5 in decimal (represented as a floating point)t)
        tau_decay_inv <= 32'h3f000000; //0.5 in decimal (represented as a float)
        g_tn1 <= 32'h3e700000; //0.23438 in decimal (represented as a floating point) (works)
        exception_h_tn1 <= 1'b0;
        enable_g <= 1'b0;
        
        
      #5 reset <=0; 

  
      #5 enable_h <=1;
      enable_g <=1;
      enable_i_syn <= 1;
      AP_tn1 <= 1'b0;
      
      #5 enable_h <=0;
      enable_g <=0;
      enable_i_syn <= 0;
      g_tn1 <= g_t;
      exception_h_tn1 <= exception_h_t;
      h_tn1 <= h_t;
    
      
      #5 enable_h <=1;
      enable_g <=1;
      enable_i_syn <= 1;
      AP_tn1<=1'b1;
    
      #5 enable_h <=0;
      h_tn1 <=h_t;
      enable_g <=0;
      enable_i_syn <= 0;
      g_tn1 <= g_t;
      exception_h_tn1 <= exception_h_t;
    
      #5 enable_h<=1;
      enable_g <=1;
      enable_i_syn <= 1;
      AP_tn1 <= 1'b0;
      
      #5 enable_h <= 0;
      h_tn1 <= h_t;
      enable_g <=0;
      enable_i_syn <= 0;
      g_tn1 <= g_t;
      exception_h_tn1 <= exception_h_t;
    
      #5 enable_h <=1;
      enable_g <=1;
      enable_i_syn <= 1;
      AP_tn1 <= 1'b1;
      
      #5 enable_h <= 0;
      h_tn1 <= h_t;
      enable_g <=0;
      enable_i_syn <= 0;
      g_tn1 <= g_t;
      exception_h_tn1 <= exception_h_t;
    
      #5 enable_h<=1;
      enable_g <=1;
      enable_i_syn <= 1;
      AP_tn1 <= 1'b0;
      
      #5 enable_h <= 0;
      h_tn1 <= h_t;
      enable_g <=0;
      enable_i_syn <= 0;
      g_tn1 <= g_t;
      exception_h_tn1 <= exception_h_t;
      
      
     #5 enable_h <=1;
      enable_g <=1;
      enable_i_syn <= 1;
      AP_tn1 <= 1'b1;
      
      #5 enable_h <= 0;
      h_tn1 <= h_t;
      enable_g <=0;
      enable_i_syn <= 0;
      g_tn1 <= g_t;
      exception_h_tn1 <= exception_h_t;
      
      
      #5 enable_h<=1;
      enable_g <=1;
      enable_i_syn <= 1;
      AP_tn1 <= 1'b0;
      
      
      #5 enable_h <= 0;
      enable_g <=0;
      enable_i_syn <= 0;
      g_tn1 <= g_t;
      exception_h_tn1 <= exception_h_t;
      h_tn1 <= h_t;
    end
 
    
endmodule
