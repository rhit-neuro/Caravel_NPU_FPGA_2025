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
    wire [1:0] bank = ADR_I[7:6];
    wire [3:0] idx  = ADR_I[5:2];

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

    // Staging "next" values (loaded by DMA/WB writes)
    // 4 banks × 12 vars
    reg [15:0] next0 [0:11];
    reg [15:0] next1 [0:11];
    reg [15:0] next2 [0:11];
    reg [15:0] next3 [0:11];

    // commit bit for each regfile
    reg commit0, commit1, commit2, commit3;

    // Outputs from each regfile
    wire [15:0] f0, gsyn0, Trise0, ho0, dt0, Tdecay0, h0, Vt0, g0, Vmem0, Esyn0;
    wire        AP0;
    wire [15:0] f1, gsyn1, Trise1, ho1, dt1, Tdecay1, h1, Vt1, g1, Vmem1, Esyn1;
    wire        AP1;
    wire [15:0] f2, gsyn2, Trise2, ho2, dt2, Tdecay2, h2, Vt2, g2, Vmem2, Esyn2;
    wire        AP2;
    wire [15:0] f3, gsyn3, Trise3, ho3, dt3, Tdecay3, h3, Vt3, g3, Vmem3, Esyn3;
    wire        AP3;
    


    SM_Reg_File RF0 (
        .clk(CLK_I), .reset(RST_I),
        .rdAddrA(4'd0), .rdDataA(), .rdAddrB(4'd0), .rdDataB(),
        .commit(commit0),

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
    
    //TODO: need a mux to assign these values from the correct reg file based on id
    reg [31:0] tau_rise, tau_decay;
    reg [31:0] ho, h, tau_rise_inverse, tau_decay_inverse, g, dt, h_out, dt_forward, tau_decay_inverse_forward, g_forward;
    reg  actionPotential, exception;
    reg [1:0] synapseID, synapseID_forward;
    

    always @(*) begin
        synapseID=bank;
        case (bank)
            2'b00: begin
                tau_rise = Trise0;
                tau_decay = Tdecay0;
                ho = ho0;
                h = h0;
                g = g0;
                dt = dt0;
                actionPotential = AP0;
            end
            2'b01: begin
                tau_rise = Trise1;
                tau_decay = Tdecay1;
                ho = ho1;
                h = h1;
                g = g1;
                dt = dt1;
                actionPotential = AP1;
            end
            2'b10: begin
                tau_rise = Trise2;
                tau_decay = Tdecay2;
                ho = ho2;
                h = h2;
                g = g2;
                dt = dt2;
                actionPotential = AP2;
            end
            default: begin
                tau_rise = Trise3;
                tau_decay = Tdecay3;
                ho = ho3;
                h = h3;
                g = g3;
                dt = dt3;
                actionPotential = AP3;
                end
        endcase
    end


    SM_divideTau divTauRise(
        .tau(tau_rise),
        .tau_inverse(tau_rise_inverse)
    );
    
    SM_divideTau divTauDecay(
        .tau(tau_decay),
        .tau_inverse(tau_decay_inverse)
    );
    
    
     SM_h_accumulator hUpdate(
        .h0(ho),
        .h(h),
        .tau_rise_inverse(tau_rise_inverse),
        .tau_decay_inverse(tau_decay_inverse), 
        .g(g),
        .actionPotential(actionPotential),
        .synapseID(synapseID),
        .dt(dt),
        .h_out(h_out),
        .exception(exception),
        .synapseID_forward(synapseID_forward),
        .dt_forward(dt_forward),
        .tau_decay_inverse_forward(tau_decay_inverse_forward),
        .g_forward(g_forward)
    );
    

    // Readback mux so that i can run a test bench (working now) 
    // when the pipelines are added REMOVE THIS ALWAYS BLOCK MUX
    // returns 16-bit in lower half of DAT_O
    reg [15:0] read16_0, read16_1, read16_2, read16_3;
    reg [15:0] read16;
    always @(*) begin
        case (idx)
            F_REG:         read16_0 = f0;
            G_SYN_BAR_REG: read16_0 = gsyn0;
            T_RISE_REG:    read16_0 = Trise0;
            HO_REG:        read16_0 = ho0;
            AP_REG:        read16_0 = {15'h0, AP0};
            DT_REG:        read16_0 = dt0;
            T_DECAY_REG:   read16_0 = Tdecay0;
            H_REG:         read16_0 = h0;
            VT_REG:        read16_0 = Vt0;
            G_REG:         read16_0 = g0;
            VMEM_REG:      read16_0 = Vmem0;
            ESYN_REG:      read16_0 = Esyn0;
            default:       read16_0 = 16'h0000;
        endcase

        case (idx)
            F_REG:         read16_1 = f1;
            G_SYN_BAR_REG: read16_1 = gsyn1;
            T_RISE_REG:    read16_1 = Trise1;
            HO_REG:        read16_1 = ho1;
            AP_REG:        read16_1 = {15'h0, AP1};
            DT_REG:        read16_1 = dt1;
            T_DECAY_REG:   read16_1 = Tdecay1;
            H_REG:         read16_1 = h1;
            VT_REG:        read16_1 = Vt1;
            G_REG:         read16_1 = g1;
            VMEM_REG:      read16_1 = Vmem1;
            ESYN_REG:      read16_1 = Esyn1;
            default:       read16_1 = 16'h0000;
        endcase

        case (idx)
            F_REG:         read16_2 = f2;
            G_SYN_BAR_REG: read16_2 = gsyn2;
            T_RISE_REG:    read16_2 = Trise2;
            HO_REG:        read16_2 = ho2;
            AP_REG:        read16_2 = {15'h0, AP2};
            DT_REG:        read16_2 = dt2;
            T_DECAY_REG:   read16_2 = Tdecay2;
            H_REG:         read16_2 = h2;
            VT_REG:        read16_2 = Vt2;
            G_REG:         read16_2 = g2;
            VMEM_REG:      read16_2 = Vmem2;
            ESYN_REG:      read16_2 = Esyn2;
            default:       read16_2 = 16'h0000;
        endcase

        case (idx)
            F_REG:         read16_3 = f3;
            G_SYN_BAR_REG: read16_3 = gsyn3;
            T_RISE_REG:    read16_3 = Trise3;
            HO_REG:        read16_3 = ho3;
            AP_REG:        read16_3 = {15'h0, AP3};
            DT_REG:        read16_3 = dt3;
            T_DECAY_REG:   read16_3 = Tdecay3;
            H_REG:         read16_3 = h3;
            VT_REG:        read16_3 = Vt3;
            G_REG:         read16_3 = g3;
            VMEM_REG:      read16_3 = Vmem3;
            ESYN_REG:      read16_3 = Esyn3;
            default:       read16_3 = 16'h0000;
        endcase

        case (bank)
            2'd0: read16 = read16_0;
            2'd1: read16 = read16_1;
            2'd2: read16 = read16_2;
            default: read16 = read16_3;
        endcase
    end

    // Wishbone handling refered to DMA module assuming that is also correct lol
    integer k;

    always @(posedge CLK_I) begin
        if (RST_I) begin
            ACK_O   <= 1'b0;
            DAT_O   <= 32'h0000_0000;
            commit0 <= 1'b0; commit1 <= 1'b0; commit2 <= 1'b0; commit3 <= 1'b0;

            for (k = 0; k < 12; k = k + 1) begin
                next0[k] <= 16'h0000;
                next1[k] <= 16'h0000;
                next2[k] <= 16'h0000;
                next3[k] <= 16'h0000;
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
                        // write 16-bit value into staging for selected regfile
                        case (bank)
                            2'd0: next0[idx] <= DAT_I[15:0];
                            2'd1: next1[idx] <= DAT_I[15:0];
                            2'd2: next2[idx] <= DAT_I[15:0];
                            default: next3[idx] <= DAT_I[15:0];
                        endcase
                    end
                end else begin
                    DAT_O <= {16'h0000, read16};
                end
            end
        end
    end

endmodule