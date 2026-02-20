`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Bryce Chen, Aster Zawaideh
// 
// Create Date: 01/03/2026 07:04:23 PM
// Design Name: 
// Module Name: Synaptic Module
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

//module SynapticModule
//(
//    input Clock,
    
//    //User Space WB (Device)
//    input [31:0] ADR_I,
//    input [31:0] DAT_I,
//    output [31:0] DAT_O,
//    input WE_I,
//    input [31:0] SEL_I,//check this width
//    input STB_I,
//    output ACK_O,
//    input CYC_I,
//   //for us to define as part of wb
//   output TAGN_O,
//   input TAGN_I,
//   //SYSCON?
//   input RST_I,
//   input CLK_I,


//    output irq
//    );
//endmodule


module SynapticModule
(
    input Clock,              // unused for now; using CLK_I
    //User Space WB (Device)
    input  [31:0] ADR_I,
    input  [31:0] DAT_I,
    output reg [31:0] DAT_O,
    input         WE_I,
    input  [31:0] SEL_I,       // should be [3:0] ideally; keeping your port
    input         STB_I,
    output reg    ACK_O,
    input         CYC_I,

    // for us to define as part of wb
    output        TAGN_O,
    input         TAGN_I,

    // SYSCON?
    input         RST_I,
    input         CLK_I,

    output        irq
);

    // Not using tags/irq yet
    assign TAGN_O = 1'b0;
    assign irq    = 1'b0;

    // Address decode (simple)
    // Choose bits that make sense for your map
    // bank: which regfile (0..3)
    // idx : which variable (0..15)
    wire [1:0] bank = ADR_I[7:6]; //corresponds to a synapse register file
    wire [3:0] idx  = ADR_I[5:2]; //corresponds to a parameter register

    // variable indices (match SM_Reg_File map)
    localparam F_REG         = 0;
    localparam G_SYN_BAR_REG = 1;
    localparam T_RISE_REG    = 2;
    localparam HO_REG        = 3;
    localparam AP_REG        = 4;
    localparam DT_REG        = 5;
    localparam T_DECAY_REG   = 6;
    localparam H_REG         = 7;
    localparam VT_REG        = 8;
    localparam G_REG         = 9;
    localparam VMEM_REG      = 10;
    localparam ESYN_REG      = 11;

    // Special write index to trigger commit
    localparam COMMIT_REG    = 4'd15;
    
    
//    //local parameters for state machine
//    localparam state_setup = 3'b000;
//    localparam state_calc_gh = 3'b001;
//    localparam state_calc_Isyn = 3'b010;
//    localparam state_sum_Isyn = 3'b011;
//    localparam state_send_Isyn = 3'b100;
    
//    reg [2:0] present_state, next_state;
    
//    always @(present_state, next_state, reset, done_g, done_h) begin
        
//    end
    
    
    
    

    // Staging "next" values (loaded by DMA/WB writes)
    // 4 banks of 12 vars
    reg [31:0] next0 [0:11];
    reg [31:0] next1 [0:11];
    reg [31:0] next2 [0:11];
    reg [31:0] next3 [0:11];

    reg [31:0] staged0 [0:11];
    reg [31:0] staged1 [0:11];
    reg [31:0] staged2 [0:11];
    reg [31:0] staged3 [0:11];

    

    // commit bit for each regfile
    reg commit0, commit1, commit2, commit3;

    // Outputs from each regfile
    wire [31:0] f0, gsyn0, Trise0, ho0, dt0, Tdecay0, h0, Vt0, g0, Vmem0, Esyn0;
    wire        AP0;
    wire [31:0] f1, gsyn1, Trise1, ho1, dt1, Tdecay1, h1, Vt1, g1, Vmem1, Esyn1;
    wire        AP1;
    wire [31:0] f2, gsyn2, Trise2, ho2, dt2, Tdecay2, h2, Vt2, g2, Vmem2, Esyn2;
    wire        AP2;
    wire [31:0] f3, gsyn3, Trise3, ho3, dt3, Tdecay3, h3, Vt3, g3, Vmem3, Esyn3;
    wire        AP3;
    


    SM_Reg_File RF0 (
        .clk(CLK_I), .reset(RST_I),
        .rdAddrA(4'd0), .rdDataA(), .rdAddrB(4'd0), .rdDataB(),
        .commit(commit0),
        .done_g(done_g0),
        .done_h(done_h0),
        .h_t(h0_t),
        .g_t(g0_t),
        .next_f(next0[F_REG]),
        .next_g_syn_bar(next0[G_SYN_BAR_REG]),
        .next_T_rise(next0[T_RISE_REG]),
        .next_ho(next0[HO_REG]),
        .next_AP(next0[AP_REG]),
        .next_dt(next0[DT_REG]),
        .next_T_decay(next0[T_DECAY_REG]),
        .next_h(next0[H_REG]),
        .next_Vt(next0[VT_REG]),
        .next_g(next0[G_REG]),
        .next_Vmem(next0[VMEM_REG]),
        .next_Esyn(next0[ESYN_REG]),

        .f(f0), .g_syn_bar(gsyn0), .T_rise(Trise0), .ho(ho0), .AP(AP0),
        .dt(dt0), .T_decay(Tdecay0), .h(h0), .Vt(Vt0), .g(g0), .Vmem(Vmem0), .Esyn(Esyn0)
    );

    SM_Reg_File RF1 (
        .clk(CLK_I), .reset(RST_I),
        .rdAddrA(4'd0), .rdDataA(), .rdAddrB(4'd0), .rdDataB(),
        .commit(commit1),
        .done_g(done_g1),
        .done_h(done_h1),
        .h_t(h1_t),
        .g_t(g1_t),
        .next_f(next1[F_REG]),
        .next_g_syn_bar(next1[G_SYN_BAR_REG]),
        .next_T_rise(next1[T_RISE_REG]),
        .next_ho(next1[HO_REG]),
        .next_AP(next1[AP_REG]),
        .next_dt(next1[DT_REG]),
        .next_T_decay(next1[T_DECAY_REG]),
        .next_h(next1[H_REG]),
        .next_Vt(next1[VT_REG]),
        .next_g(next1[G_REG]),
        .next_Vmem(next1[VMEM_REG]),
        .next_Esyn(next1[ESYN_REG]),

        .f(f1), .g_syn_bar(gsyn1), .T_rise(Trise1), .ho(ho1), .AP(AP1),
        .dt(dt1), .T_decay(Tdecay1), .h(h1), .Vt(Vt1), .g(g1), .Vmem(Vmem1), .Esyn(Esyn1)
    );

    SM_Reg_File RF2 (
        .clk(CLK_I), .reset(RST_I),
        .rdAddrA(4'd0), .rdDataA(), .rdAddrB(4'd0), .rdDataB(),
        .commit(commit2),
        .done_g(done_g2),
        .done_h(done_h2),
        .h_t(h2_t),
        .g_t(g2_t),
        .next_f(next2[F_REG]),
        .next_g_syn_bar(next2[G_SYN_BAR_REG]),
        .next_T_rise(next2[T_RISE_REG]),
        .next_ho(next2[HO_REG]),
        .next_AP(next2[AP_REG]),
        .next_dt(next2[DT_REG]),
        .next_T_decay(next2[T_DECAY_REG]),
        .next_h(next2[H_REG]),
        .next_Vt(next2[VT_REG]),
        .next_g(next2[G_REG]),
        .next_Vmem(next2[VMEM_REG]),
        .next_Esyn(next2[ESYN_REG]),

        .f(f2), .g_syn_bar(gsyn2), .T_rise(Trise2), .ho(ho2), .AP(AP2),
        .dt(dt2), .T_decay(Tdecay2), .h(h2), .Vt(Vt2), .g(g2), .Vmem(Vmem2), .Esyn(Esyn2)
    );

    SM_Reg_File RF3 (
        .clk(CLK_I), .reset(RST_I),
        .rdAddrA(4'd0), .rdDataA(), .rdAddrB(4'd0), .rdDataB(),
        .commit(commit3),
        .done_g(done_g3),
        .done_h(done_h3),
        .h_t(h3_t),
        .g_t(g3_t),
        .next_f(next3[F_REG]),
        .next_g_syn_bar(next3[G_SYN_BAR_REG]),
        .next_T_rise(next3[T_RISE_REG]),
        .next_ho(next3[HO_REG]),
        .next_AP(next3[AP_REG]),
        .next_dt(next3[DT_REG]),
        .next_T_decay(next3[T_DECAY_REG]),
        .next_h(next3[H_REG]),
        .next_Vt(next3[VT_REG]),
        .next_g(next3[G_REG]),
        .next_Vmem(next3[VMEM_REG]),
        .next_Esyn(next3[ESYN_REG]),

        .f(f3), .g_syn_bar(gsyn3), .T_rise(Trise3), .ho(ho3), .AP(AP3),
        .dt(dt3), .T_decay(Tdecay3), .h(h3), .Vt(Vt3), .g(g3), .Vmem(Vmem3), .Esyn(Esyn3)
    );
    
    wire [31:0] AP0_tn1, h0_tn1, g0_tn1;
    wire [31:0] AP1_tn1, h1_tn1, g1_tn1;
    wire [31:0] AP2_tn1, h2_tn1, g2_tn1;
    wire [31:0] AP3_tn1, h3_tn1, g3_tn1;
    wire [3:0] enable_g, enable_h;
    wire [3:0] done_g, done_h;
    
    SM_Reg_File_Synapse_tn1 Syn0_tn1(
        .clk(CLK_I),
        .reset(RST_I),
        .enable(enable), //TODO !!!
        .AP_t(AP0),       
        .h_t(h0),
        .g_t(g0),
        .AP_tn1(AP0_tn1),         
        .h_tn1(h0_tn1),
        .g_tn1(g0_tn1)
    );
    
    
     SM_Reg_File_Synapse_tn1 Syn1_tn1(
        .clk(CLK_I),
        .reset(RST_I),
        .enable(enable), //TODO !!!
        .AP_t(AP1),       
        .h_t(h1),
        .g_t(g1),
        .AP_tn1(AP1_tn1),         
        .h_tn1(h1_tn1),
        .g_tn1(g1_tn1)
    );
    
     SM_Reg_File_Synapse_tn1 Syn2_tn1(
        .clk(CLK_I),
        .reset(RST_I),
        .enable(enable), //TODO !!!
        .AP_t(AP2),       
        .h_t(h2),
        .g_t(g2),
        .AP_tn1(AP2_tn1),         
        .h_tn1(h2_tn1),
        .g_tn1(g2_tn1)
    );
    
       SM_Reg_File_Synapse_tn1 Syn3_tn1(
        .clk(CLK_I),
        .reset(RST_I),
        .enable(enable), //TODO !!!
        .AP_t(AP3),       
        .h_t(h3),
        .g_t(g3),
        .AP_tn1(AP3_tn1),         
        .h_tn1(h3_tn1),
        .g_tn1(g3_tn1)
    );
    
     SM_h_accumulator hUpdate0(
        .reset(reset),
        .enable_h(enable_h[0]),
        .h0(ho0),
        .h_tn1(h0_tn1),
        .tau_rise_inverse(tau_rise_inverse),
        .actionPotential_tn1(AP0_tn1),
        .dt(dt),
        .h_t(h0_t),
        .exception(exception_h0),
        .done_h(done_h[0])
    );
    
    
     SM_g_accumulator gUpdate0(
        .reset(reset),
        .enable_g(enable_g[0]),
        .h_tn1(h0_tn1),
        .g_tn1(g0_tn1),
        .tau_decay_inverse(tau_decay_inverse),
        .dt(dt),
        .exception_h_tn1(exception_h0_tn1),
        .g_t(g0_t),
        .exception(exception_hg0),
        .done_g(done_g[0])
        );


     SM_h_accumulator hUpdate1(
        .reset(reset),
        .enable_h(enable_h[1]),
        .h0(ho1),
        .h_tn1(h1_tn1),
        .tau_rise_inverse(tau_rise_inverse),
        .actionPotential_tn1(AP1_tn1),
        .dt(dt),
        .h_t(h1_t),
        .exception(exception_h1),
        .done_h(done_h[1])
    );
    
    
     SM_g_accumulator gUpdate1(
        .reset(reset),
        .enable_g(enable_g[1]),
        .h_tn1(h1_tn1),
        .g_tn1(g1_tn1),
        .tau_decay_inverse(tau_decay_inverse),
        .dt(dt),
        .exception_h_tn1(exception_h1_tn1),
        .g_t(g1_t),
        .exception(exception_hg1),
        .done_g(done_g[1])
        );
        
        
     SM_h_accumulator hUpdate2(
        .reset(reset),
        .enable_h(enable_h[2]),
        .h0(ho2),
        .h_tn1(h2_tn1),
        .tau_rise_inverse(tau_rise_inverse),
        .actionPotential_tn1(AP2_tn1),
        .dt(dt),
        .h_t(h2_t),
        .exception(exception_h2),
        .done_h(done_h[2])
    );
    
    
     SM_g_accumulator gUpdate2(
        .reset(reset),
        .enable_g(enable_g[2]),
        .h_tn1(h2_tn1),
        .g_tn1(g2_tn1),
        .tau_decay_inverse(tau_decay_inverse),
        .dt(dt),
        .exception_h_tn1(exception_h2_tn1),
        .g_t(g2_t),
        .exception(exception_hg2),
        .done_g(done_g[2])
        );

     SM_h_accumulator hUpdate3(
        .reset(reset),
        .enable_h(enable_h[3]),
        .h0(ho3),
        .h_tn1(h3_tn1),
        .tau_rise_inverse(tau_rise_inverse),
        .actionPotential_tn1(AP3_tn1),
        .dt(dt),
        .h_t(h3_t),
        .exception(exception_h3),
        .done_h(done_h[3])
    );
    
    
     SM_g_accumulator gUpdate3(
        .reset(reset),
        .enable_g(enable_g[3]),
        .h_tn1(h3_tn1),
        .g_tn1(g3_tn1),
        .tau_decay_inverse(tau_decay_inverse),
        .dt(dt),
        .exception_h_tn1(exception_h3_tn1),
        .g_t(g3_t),
        .exception(exception_hg3),
        .done_g(done_g[3])
        );


    



/*
    // Wishbone handling refered to DMA module assuming that is also correct lol
    integer k;

    always @(posedge CLK_I) begin
        if (RST_I) begin
            ACK_O   <= 1'b0;
            DAT_O   <= 32'h0000_0000;
            commit0 <= 1'b0; commit1 <= 1'b0; commit2 <= 1'b0; commit3 <= 1'b0;

            for (k = 0; k < 12; k = k + 1) begin
                next0[k] <= 32'h00000000;
                next1[k] <= 32'h00000000;
                next2[k] <= 32'h00000000;
                next3[k] <= 32'h00000000;
            end
        end else begin
            // defaults
            ACK_O   <= 1'b0;
            commit0 <= 1'b0; commit1 <= 1'b0; commit2 <= 1'b0; commit3 <= 1'b0;
            // simple single-cycle ack when addressed
            if (CYC_I && STB_I) begin
                ACK_O <= 1'b1;

                if (WE_I) begin
                    if (idx == COMMIT_REG) begin
                        commit0 <= 1'b1;
                        commit1 <= 1'b1;
                        commit2 <= 1'b1;
                        commit3 <= 1'b1;
                    end else if (idx < 12) begin
                        // write 32-bit value into staging for selected regfile
                        case (bank)
                            2'd0: begin
                                staged0[idx] <= DAT_I[31:0];
                                next0[idx] <= staged0[idx];
                            end 
                            2'd1: next1[idx] <= DAT_I[31:0];
                            2'd2: next2[idx] <= DAT_I[31:0];
                            default: next3[idx] <= DAT_I[31:0];
                        endcase
                    end
                end else begin
                    DAT_O <= {32'h00000000, read32};
                end
            end
        end
    end
*/
endmodule