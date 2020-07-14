`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:17:30 07/13/2020
// Design Name:   Low_Priority_Encoder_16_to_4
// Module Name:   C:/Users/Phantom/Desktop/Assignment_2/Assignment_3/Test_1/LPE_16_to_4.v
// Project Name:  Test_1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Low_Priority_Encoder_16_to_4
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module LPE_16_to_4;

	// Inputs
	reg [15:0] W;

	// Outputs
	wire [3:0] y;
	wire f;

	// Instantiate the Unit Under Test (UUT)
	Low_Priority_Encoder_16_to_4 uut (
		.W(W), 
		.y(y), 
		.f(f)
	);

	initial begin
		// Initialize Inputs
		W = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		#10 W = 16 'b 0000000000000001 ; 
		#10 W = 16 'b 0000000000000010 ; 
		#10 W = 16 'b 0000000101010100 ; 
		
		#10 W = 16 'b 0101010101011000 ;
		
		#10 W = 16 'b 1000000000000000 ; 
		
		#10 W = 16 'b 0000000000000000 ; 
		

	end
      
		
		initial begin 
		
		$monitor("y[3]=%d, y[2]=%d , y[1]=%d , y[0] =%d ", y[3] , y[2] , y[1], y[0] ) ; 
		
		end 
		
		
		
endmodule

