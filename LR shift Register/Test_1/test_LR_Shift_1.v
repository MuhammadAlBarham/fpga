`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:38:07 07/26/2020
// Design Name:   LRShift_1
// Module Name:   C:/Users/Phantom/Desktop/Assignment_6/Test_1/test_LR_Shift_1.v
// Project Name:  Test_1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: LRShift_1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_LR_Shift_1;

	// Inputs
	reg Si;
	reg L;
	reg R;
	reg [7:0] In;

	// Outputs
	reg [7:0] Out;

	// Instantiate the Unit Under Test (UUT)
	LRShift_1 uut (
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
		
		In = 8'b11111111;  // Test load a value and deafault 00
		
		#10 R = 1'b1;  Si = 1'b0;  // Test shift right 
		
		
		#10 R = 1'b0 ; L = 1'b1;  Si = 1'b0 ;  // Test shift left 

		
		#10 R = 1'b1 ; L = 1'b1; In = 8'b10101010;// Test deafult with 11 
		
		#10 R = 1'b0 ; L = 1'b0; In = 8'b01010101;// Test deafult with 00

		
        
		// Add stimulus here

	end
      
endmodule




