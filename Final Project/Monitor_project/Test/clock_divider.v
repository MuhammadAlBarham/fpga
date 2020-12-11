`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:00:41 08/08/2020 
// Design Name: 
// Module Name:    clock_divider 
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
module clock_divider(

	input clk_50, 
	output reg clk_25
    );




always @(posedge clk_50)

clk_25 = ~clk_25 ;  


endmodule
