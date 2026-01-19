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
  wire [31:0] rdDataA;
  reg  [3:0]  rdAddrB;
  wire [31:0] rdDataB;

  reg commit;

  reg [31:0] next_f;
  reg [31:0] next_g_syn_bar;
  reg [31:0] next_T_rise;
  reg [31:0] next_ho;
  reg [31:0] next_AP;
  reg [31:0] next_dt;
  reg [31:0] next_T_decay;
  reg [31:0] next_h;
  reg [31:0] next_Vt;
  reg [31:0] next_g;
  reg [31:0] next_Vmem;
  reg [31:0] next_Esyn;

  wire [31:0] f;
  wire [31:0] g_syn_bar;
  wire [31:0] T_rise;
  wire [31:0] ho;
  wire        AP;
  wire [31:0] dt;
  wire [31:0] T_decay;
  wire [31:0] h;
  wire [31:0] Vt;
  wire [31:0] g;
  wire [31:0] Vmem;
  wire [31:0] Esyn;

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
  task check32;
    input [31:0] got;
    input [31:0] exp;
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
    input [31:0] exp;
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
    next_f         = 32'h11111111;
    next_g_syn_bar = 32'h22222222;
    next_T_rise    = 32'h33333333;
    next_ho        = 32'h44444444;
    next_AP        = 32'h00000001;   // AP bit0 = 1
    next_dt        = 32'h55555555;
    next_T_decay   = 32'h66666666;
    next_h         = 32'h77777777;
    next_Vt        = 32'h88888888;
    next_g         = 32'h99999999;
    next_Vmem      = 32'hAAAAAAAA;
    next_Esyn      = 32'hBBBBBBBB;

    // hold reset a bit
    #12;
    reset = 1'b0;

    // after reset, outputs should be zero
    check32(f, 32'h00000000, "f after reset");
    check32(h, 32'h00000000, "h after reset");
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
    check32(f,         32'h11111111, "f");
    check32(g_syn_bar, 32'h22222222, "g_syn_bar");
    check32(T_rise,    32'h33333333, "T_rise");
    check32(ho,        32'h44444444, "ho");
    check32(dt,        32'h55555555, "dt");
    check32(T_decay,   32'h66666666, "T_decay");
    check32(h,         32'h77777777, "h");
    check32(Vt,        32'h88888888, "Vt");
    check32(g,         32'h99999999, "g");
    check32(Vmem,      32'hAAAAAAAA, "Vmem");
    check32(Esyn,      32'hBBBBBBBB, "Esyn");
    if (AP !== 1'b1) begin
      $display("FAIL AP after commit: got=%b expected=1 @t=%0t", AP, $time);
      $stop;
    end

    // verify read port A matches address map
    checkReadA(4'd0,  32'h11111111); // f
    checkReadA(4'd4,  32'h00000001); // AP reg word
    checkReadA(4'd7,  32'h77777777); // h
    checkReadA(4'd10, 32'hAAAAAAAA); // Vmem
    checkReadA(4'd11, 32'hBBBBBBBB); // Esyn

    // change next values, don't commit -> should hold
next_h = 32'hDEADDEAD;
next_g = 32'hBEEFBEEF;
#20;
check32(h, 32'h77777777, "h hold (no commit)");
check32(g, 32'h99999999, "g hold (no commit)");
check32(Vmem, 32'hAAAAAAAA, "Vmem hold (no commit)");  // stays constant

// commit again -> should update only g and h
@(posedge clk);
commit = 1'b1;
@(posedge clk);
commit = 1'b0;

check32(h, 32'hDEADDEAD, "h updated");
check32(g, 32'hBEEFBEEF, "g updated");
check32(Vmem, 32'hAAAAAAAA, "Vmem unchanged");

    $display("PASS: SM_Reg_File commit/reset/read behavior works.");
    $finish;
  end

endmodule