`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/03/2026 07:25:04 PM
// Design Name: 
// Module Name: tb_SM_Reg_File
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


module tb_SM_Reg_File;
  reg clk;
  reg reset;

  reg  [3:0]  rdAddrA;
  wire [15:0] rdDataA;
  reg  [3:0]  rdAddrB;
  wire [15:0] rdDataB;

  reg commit;

  reg [15:0] next_f;
  reg [15:0] next_g_syn_bar;
  reg [15:0] next_T_rise;
  reg [15:0] next_ho;
  reg [15:0] next_AP;
  reg [15:0] next_dt;
  reg [15:0] next_T_decay;
  reg [15:0] next_h;
  reg [15:0] next_Vt;
  reg [15:0] next_g;
  reg [15:0] next_Vmem;
  reg [15:0] next_Esyn;

  wire [15:0] f;
  wire [15:0] g_syn_bar;
  wire [15:0] T_rise;
  wire [15:0] ho;
  wire        AP;
  wire [15:0] dt;
  wire [15:0] T_decay;
  wire [15:0] h;
  wire [15:0] Vt;
  wire [15:0] g;
  wire [15:0] Vmem;
  wire [15:0] Esyn;

  // DUT
  SM_Reg_File dut (
    .clk(clk),
    .reset(reset),

    .rdAddrA(rdAddrA),
    .rdDataA(rdDataA),
    .rdAddrB(rdAddrB),
    .rdDataB(rdDataB),

    .commit(commit),
    .next_f(next_f),
    .next_g_syn_bar(next_g_syn_bar),
    .next_T_rise(next_T_rise),
    .next_ho(next_ho),
    .next_AP(next_AP),
    .next_dt(next_dt),
    .next_T_decay(next_T_decay),
    .next_h(next_h),
    .next_Vt(next_Vt),
    .next_g(next_g),
    .next_Vmem(next_Vmem),
    .next_Esyn(next_Esyn),

    .f(f),
    .g_syn_bar(g_syn_bar),
    .T_rise(T_rise),
    .ho(ho),
    .AP(AP),
    .dt(dt),
    .T_decay(T_decay),
    .h(h),
    .Vt(Vt),
    .g(g),
    .Vmem(Vmem),
    .Esyn(Esyn)
  );

  // 10ns clock
  initial begin
    clk = 1'b0;
    forever #5 clk = ~clk;
  end

  // helper: check expected value
  task check16;
    input [15:0] got;
    input [15:0] exp;
    input [127:0] name;
    begin
      if (got !== exp) begin
        $display("FAIL %s: got=%h expected=%h @t=%0t", name, got, exp, $time);
        $stop;
      end
    end
  endtask

  // helper: check read port A
  task checkReadA;
    input [3:0] addr;
    input [15:0] exp;
    begin
      rdAddrA = addr;
      #1; // allow combinational read to settle
      if (rdDataA !== exp) begin
        $display("FAIL rdDataA addr=%0d: got=%h expected=%h @t=%0t", addr, rdDataA, exp, $time);
        $stop;
      end
    end
  endtask

  initial begin
    // init
    reset   = 1'b1;
    commit  = 1'b0;
    rdAddrA = 4'd0;
    rdAddrB = 4'd0;

    // next values (patterned so it's obvious)
    next_f         = 16'h1111;
    next_g_syn_bar = 16'h2222;
    next_T_rise    = 16'h3333;
    next_ho        = 16'h4444;
    next_AP        = 16'h0001;   // AP bit0 = 1
    next_dt        = 16'h5555;
    next_T_decay   = 16'h6666;
    next_h         = 16'h7777;
    next_Vt        = 16'h8888;
    next_g         = 16'h9999;
    next_Vmem      = 16'hAAAA;
    next_Esyn      = 16'hBBBB;

    // hold reset a bit
    #12;
    reset = 1'b0;

    // after reset, outputs should be zero
    check16(f, 16'h0000, "f after reset");
    check16(h, 16'h0000, "h after reset");
    if (AP !== 1'b0) begin
      $display("FAIL AP after reset: got=%b expected=0 @t=%0t", AP, $time);
      $stop;
    end

    // commit once (pulse commit for 1 clock)
    @(posedge clk);
    commit = 1'b1;
    @(posedge clk);
    commit = 1'b0;

    // verify named outputs updated
    check16(f,         16'h1111, "f");
    check16(g_syn_bar, 16'h2222, "g_syn_bar");
    check16(T_rise,    16'h3333, "T_rise");
    check16(ho,        16'h4444, "ho");
    check16(dt,        16'h5555, "dt");
    check16(T_decay,   16'h6666, "T_decay");
    check16(h,         16'h7777, "h");
    check16(Vt,        16'h8888, "Vt");
    check16(g,         16'h9999, "g");
    check16(Vmem,      16'hAAAA, "Vmem");
    check16(Esyn,      16'hBBBB, "Esyn");
    if (AP !== 1'b1) begin
      $display("FAIL AP after commit: got=%b expected=1 @t=%0t", AP, $time);
      $stop;
    end

    // verify read port A matches address map
    checkReadA(4'd0,  16'h1111); // f
    checkReadA(4'd4,  16'h0001); // AP reg word
    checkReadA(4'd7,  16'h7777); // h
    checkReadA(4'd10, 16'hAAAA); // Vmem
    checkReadA(4'd11, 16'hBBBB); // Esyn

    // change next values, don't commit -> should hold
next_h = 16'hDEAD;
next_g = 16'hBEEF;
#20;
check16(h, 16'h7777, "h hold (no commit)");
check16(g, 16'h9999, "g hold (no commit)");
check16(Vmem, 16'hAAAA, "Vmem hold (no commit)");  // stays constant

// commit again -> should update only g and h
@(posedge clk);
commit = 1'b1;
@(posedge clk);
commit = 1'b0;

check16(h, 16'hDEAD, "h updated");
check16(g, 16'hBEEF, "g updated");
check16(Vmem, 16'hAAAA, "Vmem unchanged");

    $display("PASS: SM_Reg_File commit/reset/read behavior works.");
    $finish;
  end

endmodule