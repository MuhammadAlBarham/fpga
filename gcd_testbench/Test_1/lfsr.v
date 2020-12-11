`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:21:55 07/26/2020 
// Design Name: 
// Module Name:    lfsr 
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

module lfsr(input clk, input reset , output q) ; 


reg[5:0] shift ; 
wire xor_sum ; 


assign xor_sum = shift[1] ^ shift[4] ; 

always @(posedge clk) 

if(reset) shift <= 6'b111111; 

else shift <= { xor_sum , shift[5:1] } ; 

assign q = shift[0] ; 


endmodule 
