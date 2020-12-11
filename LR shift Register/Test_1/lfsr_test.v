`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:23:22 07/26/2020
// Design Name:   lfsr
// Module Name:   C:/Users/Phantom/Desktop/Assignment_6/Test_1/lfsr_test.v
// Project Name:  Test_1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: lfsr
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module lfsr_test;

	// Inputs
	reg clk;
	reg reset;

	// Outputs
	wire q;

	// Instantiate the Unit Under Test (UUT)
	lfsr uut (
		.clk(clk), 
		.reset(reset), 
		.q(q)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0 ; 
		
		#10 
		
		clk = 1 ; 
		reset = 1;

      
		// shift the register one time 
		
		# 10 reset = 0 ; clk = ~clk ;  
		
		# 10 clk = ~clk ; 
		
	
		// Shift the register one time more 
		
		# 10 clk = ~clk ;  
		
		# 10 clk = ~clk ; 
		
		

	end
	
	initial 
	
		// Test the output of lfsr 
		
		$monitor("q=%b , shift = %b" , uut.q , uut.shift ) ;
      
endmodule

