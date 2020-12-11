`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:00:35 07/28/2020 
// Design Name: 
// Module Name:    sram_model 
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
module sram_model(
    input [9:0] addr, 
	 inout [7:0] data, 
	 input oe_n , 
	 input we_n);
	 
	 
	 
reg [7:0] sram[0:1023] ; 


always @(negedge we_n) 
	sram[addr] = data ; 
	
	
assign data  = (oe_n==0) ? sram[addr] : 8'bz ; 



endmodule
