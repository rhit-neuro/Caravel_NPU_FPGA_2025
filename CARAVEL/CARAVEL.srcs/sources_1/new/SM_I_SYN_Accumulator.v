`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Bryce Chen
//
// Create Date: 01/11/2026 01:18:36 AM
// why do i do this to myself
// Design Name: 
// Module Name: SM_I_SYN_Accumulator
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

module SM_I_SYN_Accumulator(
    input             clk,
    input             reset,
    input             start_sum,      // clear sum at timestep start
    input             valid_calc,     // reg valid this cycle
    input             last_reg,       // last reg

    input      [31:0] g_syn_bar,
    input      [31:0] f,
    input      [31:0] g,
    input      [31:0] Vmem,
    input      [31:0] E_syn,

    output reg [31:0] i_syn_total_sum,
    output reg        sum_valid       // total sum ready
);

    wire [31:0] E_syn_neg;
    assign E_syn_neg = {~E_syn[31], E_syn[30:0]};  // flip sign bit


    //Vmem - E_syn
    wire [31:0] diff;
    wire diff_exc;

    FloatingAddition diff_Vmem_E_syn (
        .A(Vmem),
        .B(E_syn_neg),
        .Exception(diff_exc),
        .result(diff)
    );


    wire [31:0] t1, t2, i_syn;
    wire mul1_exc, mul1_ovf, mul1_udf;
    wire mul2_exc, mul2_ovf, mul2_udf;
    wire mul3_exc, mul3_ovf, mul3_udf;

    FloatingMultiplication mul_g_syn_bar_f (
        .A(g_syn_bar),
        .B(f),
        .Exception(mul1_exc),
        .Overflow(mul1_ovf),
        .Underflow(mul1_udf),
        .result(t1)
    );

    FloatingMultiplication mul_t1_g (
        .A(t1),
        .B(g),
        .Exception(mul2_exc),
        .Overflow(mul2_ovf),
        .Underflow(mul2_udf),
        .result(t2)
    );

    FloatingMultiplication mul_t2_diff (
        .A(t2),
        .B(diff),
        .Exception(mul3_exc),
        .Overflow(mul3_ovf),
        .Underflow(mul3_udf),
        .result(i_syn)
    );


    // Accumulator
    wire [31:0] sum_next;
    wire sum_exc;
    FloatingAddition total_sum_adder (
        .A(i_syn_total_sum),
        .B(i_syn),
        .Exception(sum_exc),
        .result(sum_next)
    );

    always @(posedge clk) begin
        if (reset) begin
            i_syn_total_sum <= 32'h0000_0000;
            sum_valid       <= 1'b0;
        end else begin
            sum_valid <= 1'b0;

            if (start_sum) begin
                i_syn_total_sum <= 32'h0000_0000;
            end
            else if (valid_calc) begin
                i_syn_total_sum <= sum_next;

                if (last_reg) begin
                    sum_valid <= 1'b1;
                end
            end
        end
    end

endmodule