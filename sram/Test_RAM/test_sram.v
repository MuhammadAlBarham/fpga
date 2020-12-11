`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:03:40 07/28/2020
// Design Name:   sram_model
// Module Name:   C:/Users/Phantom/Desktop/Assignment_6/Test_RAM/test_sram.v
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

module test_sram;

	// Inputs
	reg [9:0] addr;
	reg oe_n;
	reg we_n;

	// Bidirs
	wire [7:0] data;
	
	reg [7:0] sram[0:1023] ; 
	
	integer i ; 

	// Instantiate the Unit Under Test (UUT)
	sram_model uut (
		.addr(addr), 
		.data(data), 
		.oe_n(oe_n), 
		.we_n(we_n)
	);

	initial 
	
	begin
		// Initialize Inputs
		addr = 0;
		oe_n = 0;
		we_n = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		
		
		
		$readmemb("RAM_file.txt" , sram) ; 
		
		// write data : provide full path or create project as above
		// write_data = fopen ("write_file.txt
		
		for (i =0; i <1024; i =i+1)
		
		begin
			
			$display("value = %b" , sram[addr]); 
			addr = addr + 1'b1 ; 
			
		end
		
		
		//$fclose (write_data ); // close the file

	end
      
endmodule






