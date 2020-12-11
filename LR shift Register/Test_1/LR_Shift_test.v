`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:22:58 07/26/2020
// Design Name:   LRShift
// Module Name:   C:/Users/Phantom/Desktop/Assignment_6/Test_1/LR_Shift_test.v
// Project Name:  Test_1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: LRShift
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module LR_Shift_test;

	// Inputs
	reg Si;
	reg L;
	reg R;
	reg [7:0] In;

	// Outputs
	wire [7:0] Out;

	// Instantiate the Unit Under Test (UUT)
	LRShift uut (
		.Si(Si), 
		.L(L), 
		.R(R), 
		.In(In), 
		.Out(Out)
	);
	
	initial 
	
	$monitor("Out=%b", uut.Out) ; 

	initial begin
		// Initialize Inputs
		Si = 1'b0;
		L = 1'b0;
		R = 1'b0;
		In = 8'b00000000;
		Out = 8'b00000000;
		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

