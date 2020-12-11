`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:58:35 07/21/2020
// Design Name:   Multiplier_Binary
// Module Name:   C:/Users/Phantom/Desktop/Ch_5/Multiplier/Multiplier_Test.v
// Project Name:  Multiplier
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Multiplier_Binary
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Multiplier_Test;

	// Inputs
	reg start;
	reg reset_b;
	reg clock;
	reg [4:0] Multiplicand;
	reg [4:0] Multiplier;

	// Outputs
	wire [9:0] Product;
	wire Ready;

	// Instantiate the Unit Under Test (UUT)
	Multiplier_Binary uut (
		.start(start), 
		.reset_b(reset_b), 
		.clock(clock), 
		.Multiplicand(Multiplicand), 
		.Multiplier(Multiplier), 
		.Product(Product), 
		.Ready(Ready)
	);

	initial begin
		// Initialize Inputs
		start = 0;
		reset_b = 0;
		clock = 0;
		Multiplicand = 0;
		Multiplier = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

