`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/19/2026 12:59:41 AM
// Design Name: 
// Module Name: SM_Mem_Mapping
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


module SM_Mem_Mapping #(parameter
AddressWidth = 32,
NumberOfSynapses = 4,

OFF_F        = 8'h00,
OFF_GSYNBAR  = 8'h04,
OFF_H0       = 8'h08,
OFF_ESYN     = 8'h0C,
OFF_TRISEINV = 8'h10,
OFF_TDECAYINV= 8'h14,
OFF_H        = 8'h18,
OFF_G        = 8'h1C,
OFF_AP       = 8'h20

)(
input clk,
input reset,
input [AddressWidth - 1:0] address,
//input [3:0] NueronID,

//want to send these to the Sm so that we can map the reg files in the SM with correct ID to keep the whole system consistent with the networking nueron DIs

output [3:0] NueronID_out_1,
output [3:0] NueronID_out_2,
output [3:0] NueronID_out_3,
output [3:0] NueronID_out_4

    );
    reg [31:0] f [0:NumberOfSynapses - 1];
    // [0:3] means that we can do f0, f1, f2, f3 for the syn 
    //select easier to scale if we would want to add more synapse register in the SM
    reg [31:0] g_syn_bar [0:NumberOfSynapses - 1];
    reg [31:0] h0 [0:NumberOfSynapses - 1];
    reg [31:0] E_syn [0:NumberOfSynapses - 1];
    reg [31:0] t_rise_inverse [0:NumberOfSynapses - 1];
    reg [31:0] t_decay_inverse [0:NumberOfSynapses - 1];
    reg [31:0] h [0:NumberOfSynapses - 1];
    reg [31:0] g [0:NumberOfSynapses - 1];
    reg [31:0] AP [0:NumberOfSynapses - 1];
    
    
 //harder than i thought need to figure out logic to decode into the register in the SM but encode them here.
 //chang said use decoder for the offserts
 //dont think we need arbiter since SM doesnt communicate with anything in the wishbone 4 bus
 //
endmodule
