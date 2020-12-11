`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:34:46 08/02/2020
// Design Name:   hvsync_generator
// Module Name:   C:/Users/Phantom/Desktop/Ch_8/Test_ch_8/arslan_test.v
// Project Name:  Test_ch_8
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: hvsync_generator
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module arslan_test;

	// Inputs
	reg clk;

	// Outputs
	wire vga_h_sync;
	wire vga_v_sync;
	wire inDisplayArea;
	wire [9:0] CounterX;
	wire [9:0] CounterY;
	wire [2:0] pixel;

	// Instantiate the Unit Under Test (UUT)
	hvsync_generator uut (
		.clk(clk), 
		.vga_h_sync(vga_h_sync), 
		.vga_v_sync(vga_v_sync), 
		.inDisplayArea(inDisplayArea), 
		.CounterX(CounterX), 
		.CounterY(CounterY), 
		.pixel(pixel)
	);

	initial 
		#50000 $finish ; 
				
		
		initial clk = 1'b1;

		always
		 
		 #1 clk = ~clk ; 
		 
		 initial 
		 
		 begin 
		 
		 uut.CounterX = 10'b0000000000 ;
		 uut.CounterY = 10'b0000000000 ;
		 
		end 
      
endmodule

