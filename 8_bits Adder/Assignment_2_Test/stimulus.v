`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:23:15 07/11/2020
// Design Name:   Three_Input_Or_Gate
// Module Name:   C:/Users/Phantom/Desktop/Assignment_2/Assignment_2_Test/stimulus.v
// Project Name:  Assignment_2_Test
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Three_Input_Or_Gate
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module stimulus;

	// Inputs
	reg i1;
	reg i2;
	reg i3;

	// Outputs
	wire gateOuput;

	// Instantiate the Unit Under Test (UUT)
	Three_Input_Or_Gate uut (
		.i1(i1), 
		.i2(i2), 
		.i3(i3), 
		.gateOuput(gateOuput)
	);

	initial begin
		// Initialize Inputs
		i1 = 0;
		i2 = 0;
		i3 = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		#50 i1 =1 ; 
		#50 i1 =0; 
		#60 i3 = 1;
	end
	
	initial begin 
		$monitor("output=%d , i1 = %d, i2 = %d , i3 = %d \n" , gateOuput, i1, i2,i3) ; 
	end
      
endmodule

