`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:03:02 07/21/2020
// Design Name:   GCD
// Module Name:   C:/Users/Phantom/Desktop/Ch_5/Multiplier/GCD_Test.v
// Project Name:  Multiplier
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: GCD
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module GCD_Test;

	// Inputs
	reg [4:0] X;
	reg [4:0] Y;
	reg Go;

	// Outputs
	wire Done;
	wire A;
	wire B;

	// Instantiate the Unit Under Test (UUT)
	GCD uut (
		.X(X), 
		.Y(Y), 
		.Go(Go), 
		.Done(Done), 
		.A(A), 
		.B(B)
	);

	initial begin
		// Initialize Inputs
		X = 0;
		Y = 0;
		Go = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

