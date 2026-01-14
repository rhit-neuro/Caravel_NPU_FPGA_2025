`timescale 1ns / 1ns

module tb_SynapticModule_4Regs;

  reg Clock;
  reg [31:0] ADR_I;
  reg [31:0] DAT_I;
  wire [31:0] DAT_O;
  reg WE_I;
  reg [31:0] SEL_I;
  reg STB_I;
  wire ACK_O;
  reg CYC_I;
  wire TAGN_O;
  reg TAGN_I;
  reg RST_I;
  reg CLK_I;
  wire irq;

  // DUT
  SynapticModule dut (
    .Clock(Clock),
    .ADR_I(ADR_I),
    .DAT_I(DAT_I),
    .DAT_O(DAT_O),
    .WE_I(WE_I),
    .SEL_I(SEL_I),
    .STB_I(STB_I),
    .ACK_O(ACK_O),
    .CYC_I(CYC_I),
    .TAGN_O(TAGN_O),
    .TAGN_I(TAGN_I),
    .RST_I(RST_I),
    .CLK_I(CLK_I),
    .irq(irq)
  );

  // Clock: use CLK_I as bus clock
  initial begin
    CLK_I = 1'b0;
    forever #5 CLK_I = ~CLK_I;
  end

  // Unused Clock input; tie to same
  initial begin
    Clock = 1'b0;
    forever #5 Clock = ~Clock;
  end

  // default signals
  initial begin
    ADR_I  = 32'h0;
    DAT_I  = 32'h0;
    WE_I   = 1'b0;
    SEL_I  = 32'hFFFF_FFFF;
    STB_I  = 1'b0;
    CYC_I  = 1'b0;
    TAGN_I = 1'b0;
  end

  // Helpers
  function [31:0] mk_addr;
    input [1:0] bank;
    input [3:0] idx;
    begin
      // bank -> [7:6], idx -> [5:2], word aligned
      mk_addr = 32'h0000_0000 | (bank << 6) | (idx << 2);
    end
  endfunction

  task wb_write;
    input [31:0] addr;
    input [31:0] data;
    begin
      @(negedge CLK_I);
      ADR_I <= addr;
      DAT_I <= data;
      WE_I  <= 1'b1;
      CYC_I <= 1'b1;
      STB_I <= 1'b1;

      // wait for ack
      while (ACK_O !== 1'b1) @(posedge CLK_I);

      @(negedge CLK_I);
      CYC_I <= 1'b0;
      STB_I <= 1'b0;
      WE_I  <= 1'b0;
      DAT_I <= 32'h0;
      ADR_I <= 32'h0;
    end
  endtask

  task wb_read;
    input [31:0] addr;
    output [31:0] data;
    begin
      @(negedge CLK_I);
      ADR_I <= addr;
      WE_I  <= 1'b0;
      CYC_I <= 1'b1;
      STB_I <= 1'b1;

      while (ACK_O !== 1'b1) @(posedge CLK_I);

      data = DAT_O;

      @(negedge CLK_I);
      CYC_I <= 1'b0;
      STB_I <= 1'b0;
      ADR_I <= 32'h0;
    end
  endtask

  task expect16;
    input [15:0] got;
    input [15:0] exp;
    input [1:0] bank;
    input [3:0] idx;
    begin
      if (got !== exp) begin
        $display("FAIL bank=%0d idx=%0d got=%h expected=%h @t=%0t",
                 bank, idx, got, exp, $time);
        $stop;
      end
    end
  endtask

  integer b, i;
  reg [31:0] rdata;
  reg [15:0] pattern;

  initial begin
    // Reset
    RST_I = 1'b1;
    repeat (3) @(posedge CLK_I);
    RST_I = 1'b0;

    // --- Stage values for all 4 banks, idx 0..11 ---
    // Use unique patterns so you can tell banks apart.
    // pattern = 16'hB000 + (bank<<8) + idx
    for (b = 0; b < 4; b = b + 1) begin
      for (i = 0; i < 12; i = i + 1) begin
        pattern = 16'hB000 + (b << 8) + i[7:0];
        wb_write(mk_addr(b[1:0], i[3:0]), {16'h0000, pattern});
      end
    end

    // --- Before commit, reads should still show reset state (0) ---
    // (This is the key property commit gives you.)
    for (b = 0; b < 4; b = b + 1) begin
      for (i = 0; i < 12; i = i + 1) begin
        wb_read(mk_addr(b[1:0], i[3:0]), rdata);
        expect16(rdata[15:0], 16'h0000, b[1:0], i[3:0]);
      end
    end

    // --- Commit (idx=15). One write triggers commit-all in your shell ---
    wb_write(mk_addr(2'd0, 4'd15), 32'h0000_0001);

    // --- After commit, reads should match staged patterns ---
    for (b = 0; b < 4; b = b + 1) begin
      for (i = 0; i < 12; i = i + 1) begin
        pattern = 16'hB000 + (b << 8) + i[7:0];
        wb_read(mk_addr(b[1:0], i[3:0]), rdata);
        expect16(rdata[15:0], pattern, b[1:0], i[3:0]);
      end
    end

    $display("PASS: SynapticModule 4-bank staging + commit + readback works.");
    $finish;
  end

endmodule
