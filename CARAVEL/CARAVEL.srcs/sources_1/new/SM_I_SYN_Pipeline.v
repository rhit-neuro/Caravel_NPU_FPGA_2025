`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/11/2026 01:18:36 AM
//why do i do this to myself
// Design Name: 
// Module Name: SM_I_SYN_Pipeline
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


module SM_I_SYN_Pipeline(
    input             clk,
    input             reset,

    input             start_sum,
    input             in_valid,
    input             in_last,

    input      [15:0] g_syn_bar,
    input      [15:0] f,
    input      [15:0] g,
    input      [15:0] Vmem,
    input      [15:0] E_syn,

    output reg        sum_valid,
    output reg [63:0] i_syn_total_sum,

    output reg        isyn_valid,
    output reg [31:0] isyn_out   
);

    localparam FRAC = 15;
    reg        v_d1;
    reg        last_d1;
    reg [31:0] i_syn_pipe;
    reg [31:0] m_gf;
    reg [31:0] m_gfg;
    reg [15:0] diff;
    reg [31:0] prod;
    
    //convert to singly cycle first to get it to work
    //and compare it to the master clock to see if you need 
    always @(posedge clk) begin
        if (reset) begin
            i_syn_total_sum <= 64'd0;
            sum_valid       <= 1'b0;
            isyn_valid      <= 1'b0;
            isyn_out        <= 32'd0;

            v_d1    <= 1'b0;
            last_d1 <= 1'b0;

            i_syn_pipe <= 32'd0;

            m_gf   <= 32'd0;
            m_gfg  <= 32'd0;
            diff   <= 16'd0;
            prod   <= 32'd0;

        end else begin
            sum_valid  <= 1'b0;
            isyn_valid <= 1'b0;

            if (start_sum)
                i_syn_total_sum <= 64'd0;

            if (v_d1) begin
                i_syn_total_sum <= i_syn_total_sum + i_syn_pipe;
                isyn_out   <= i_syn_pipe;
                isyn_valid <= 1'b1;
                if (last_d1)
                    sum_valid <= 1'b1;
            end
            //refer to the LUT to use the floating point multiplication module
            //need to update this logic again for the third time :(
            if (in_valid) begin
                diff = Vmem - E_syn;
                m_gf  = (g_syn_bar * f) >> FRAC;
                m_gfg = (m_gf * g) >> FRAC;
                prod = (m_gfg * diff) >> FRAC;
                i_syn_pipe <= prod; 
            end 
            
            v_d1    <= in_valid;
            last_d1 <= in_last;
        end
    end

endmodule
