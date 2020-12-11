`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:17:33 07/19/2020 
// Design Name: 
// Module Name:    lfsr_16 
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

module lfsr_16( input clk, input reset, output q) ; 


reg [15:0] shift ; // 16 bits register 

wire xor_out = shift[15] ^ shift[14] ^ shift[12] ^ shift[3] ;    // x^16 + x^15 + x^13 + x^4 + 1 


always @ (posedge clk) 

if (reset) shift <= 16'b1111111111111111 ; // Seed Value 

else shift <= { xor_out , shift[15:1] } ;  // Shift Right 

assign q = shift[0] ; // The Output of the shift Register 

endmodule

/*

Shift left 

else shift <= { shift[14:0] , xor_out } ; 
assign q = shift[15] 

*/