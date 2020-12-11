`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:27:42 08/06/2020 
// Design Name: 
// Module Name:    Rotary_Filter 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////


// This module used to remove the chatter ( worked as a filter) 

module Rotary_Filter(
    
	 // Inputs : 4 inputs 
	 
	 input clk ,
    input rotary_A,
    input rotary_B,
	 input reset_filter, 

	// Ouputs : 4 outputs 
	 
    output reg rotary_q1,    // Event signal 
    output reg rotary_q2 	// Direction signal 
    );
	 


// Filter Block 

always @(posedge clk)
  begin 
  
	 if (reset_filter)    // Synchrnous reset 
	 begin 
	 rotary_q1 <= 1'b0; 
	 rotary_q2 <= 1'b0;
	 end 
	 
	 else begin 
	 
    case({rotary_B,rotary_A})
    2'b00: rotary_q1<= 1'b0;     // No event 
    2'b01: rotary_q2<= 1'b0;		// Rotation to the right 
    2'b10: rotary_q2<= 1'b1;		// Rotation to the left 
    2'b11: rotary_q1<= 1'b1; 		// Event occurs 
    endcase 
	 
	 end 
  end 
  
endmodule 
