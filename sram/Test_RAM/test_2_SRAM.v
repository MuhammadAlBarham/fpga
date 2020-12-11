`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:27:15 07/28/2020
// Design Name:   sram_model
// Module Name:   C:/Users/Phantom/Desktop/Assignment_6/Test_RAM/test_2_SRAM.v
// Project Name:  Test_RAM
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: sram_model
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_2_SRAM;

	// Inputs
	reg [9:0] addr;
	reg oe_n;
	reg we_n;

	// Bidirs
	wire [7:0] data;
	
	wire [7:0] input_value;
	wire [7:0] bidir_signal;

	// Instantiate the Unit Under Test (UUT)
	sram_model uut (
		.addr(addr), 
		.data(data), 
		.oe_n(oe_n), 
		.we_n(we_n)
	);

	initial begin
		// Initialize Inputs
		addr = 10'bz;
		oe_n = 1;
		we_n = 1;

		#20 addr = 10'b0000000001;
		we_n= 0;			
	
		#10 oe_n=0;
		we_n=1;
		 		 
		#10 addr = 10'b0000000010;
		oe_n= 0;
		we_n=1;
		
		// Wait 100 ns for global reset to finish   
		// Add stimulus here
	end
	initial 
	#50 $finish;

assign 
      data [7:0] = 8'b11111111;

endmodule


