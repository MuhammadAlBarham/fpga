`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:03:15 08/08/2020
// Design Name:   clock_divider
// Module Name:   C:/Users/Phantom/Desktop/Final_Game/Mointor_test_with_Zeina/Test/test_clk.v
// Project Name:  Test
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: clock_divider
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_clk;

	// Inputs
	reg clk_50;

	// Outputs
	wire clk_25;

	// Instantiate the Unit Under Test (UUT)
	clock_divider uut (
		.clk_50(clk_50), 
		.clk_25(clk_25)
	);

always 

#10 clk_50 = ~clk_50 ; 

	initial begin
		// Initialize Inputs
		clk_50 = 0;
		uut.clk_25 = 0;
		
	   #100; $finish ;

	end
	
	
	
      
endmodule

