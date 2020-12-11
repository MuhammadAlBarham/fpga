`timescale 10ns / 1ns

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:27:21 08/02/2020
// Design Name:   VGADemo
// Module Name:   C:/Users/Phantom/Desktop/Ch_8/Test_ch_8/Test_vga.v
// Project Name:  Test_ch_8
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: VGADemo
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Test_vga;

	// Inputs
	reg clk_25;

	// Outputs
	wire [2:0] pixel;
	wire hsync_out;
	wire vsync_out;

	// Instantiate the Unit Under Test (UUT)
	VGADemo uut (
		.clk_25(clk_25), 
		.pixel(pixel), 
		.hsync_out(hsync_out), 
		.vsync_out(vsync_out)
	);

	initial begin
		// Initialize Inputs
		clk_25 = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here 
		
		
	
	end
	
	
	initial 
	
	$monitor("pixel=%b", pixel) ; 
      
	initial 
	#1 clk_25 = ~clk_25 ; 	
		
		
endmodule

