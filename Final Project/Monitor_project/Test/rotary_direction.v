`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:28:09 08/06/2020 
// Design Name: 
// Module Name:    rotary_direction 
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


// This module used to determines the direction of the encoder 

module rotary_direction(

		// Inputs : 4 inputs 
		
    input clk_1,
	 input rotary_A_1,
	 input rotary_B_1,
	 input reset_dir, 
	 
	 // Outputs : 4 outputs 
	 
    output reg shift_left,
    output reg shift_right 	 
    );
	
		
	 // Event and direction wires 
	 
    wire rotary_eve,rotary_dir; 
	 
					

	// Rotary filte instance 
	
	Rotary_Filter test(
    .clk(clk_1) ,
    .rotary_A(rotary_A_1),
    .rotary_B(rotary_B_1),
	 .reset_filter(reset_dir), 
	 
    .rotary_q1(rotary_q1_1),
    .rotary_q2(rotary_q2_1)
    );
	
	
 
 // Assing the values to the wires in this module to use them in the always block 
 
 assign rotary_eve = rotary_q1_1 ;
 assign rotary_dir = rotary_q2_1 ; 
 
 assign neg_eve = ~rotary_q1_1; 
 
 
 
 // Direction's Block works on the pose and neg edge of the event signal ( event level change).  
 
 
 always @(posedge rotary_eve, posedge neg_eve)  
  begin  
  
  if(rotary_eve == 1'b1) 
  
  begin 
  case(rotary_dir) 
   
	1'b0 : begin shift_right<=1'b1 ; shift_left <=1'b0 ;  end    //  Rotate right event = 1 and direction = 0 
	1'b1 : begin shift_right<=1'b0 ; shift_left <=1'b1 ;  end    //  Rotate left event = 1 and direction = 1 
  
  endcase 
  
  end 
  
  else   begin shift_right<=1'b0 ; shift_left <= 1'b0 ; end   // Reset the values when event = 0 regardless of the direction's value



  end 
  
  
	 
endmodule

