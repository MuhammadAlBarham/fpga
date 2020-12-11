`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:13:48 07/21/2020
// Design Name:   next_GCD
// Module Name:   C:/Users/Phantom/Desktop/Ch_5/Multiplier/test_new_GCD.v
// Project Name:  Multiplier
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: next_GCD
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_new_GCD;

	// Inputs
	reg [4:0] X;
	reg [4:0] Y;
	reg Go;

	// Outputs
	wire Done;
	wire A;
	wire B;

	// Instantiate the Unit Under Test (UUT)
	next_GCD uut (
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

		Go = 0 ; 
		#2 Go = 1 ; 
		
		X = 5'b10010 ; 
		Y = 5'b01010 ; 
		
		$strobe ("A =%d" , A); 
		end
		
	
      
endmodule

