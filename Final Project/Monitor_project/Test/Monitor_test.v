`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:29:23 08/06/2020
// Design Name:   monitor_color_generator
// Module Name:   C:/Users/Phantom/Desktop/Mointor_test_with_Zeina/Test/Monitor_test.v
// Project Name:  Test
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: monitor_color_generator
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Monitor_test;

		// Inputs
	reg clk_test;
	reg rotary_A_1;
	reg rotary_B_1;
	reg reset;

	// Outputs
	wire vga_h_sync;
	wire vga_v_sync;
	wire [2:0] pixel;

	// Instanciate the Unit Under Test (UUT)
	monitor_color_generator uut (
		.clk(clk_test), 
		.rotary_A_main(rotary_A_1), 
		.rotary_B_main(rotary_B_1), 
		.reset(reset), 
		.vga_h_sync(vga_h_sync), 
		.vga_v_sync(vga_v_sync), 
		.pixel(pixel)
	); 



	always 
	#5 clk_test= ~clk_test ;
	
	initial begin
		// Initialize Inputs
		clk_test = 0;
		rotary_B_1 = 0;  rotary_A_1 = 0;
		
		reset = 0; 
		
		#5; reset = 1; 
		
		#5 reset = 0 ; 

		// Wait 100 ns for global reset to finish
		
		
		// Right 1 
		
		#5  rotary_B_1 = 0; rotary_A_1 = 1;
		#5  rotary_B_1 = 1; rotary_A_1 = 1;
		
		$display($time, " : Right 1 ") ; 
		
	
		// Left 1 
		
		#5 rotary_B_1 = 0;  rotary_A_1 = 0;
		#5  rotary_B_1 = 1; rotary_A_1 = 0;
		#5  rotary_B_1 = 1; rotary_A_1 = 1;
		
		$display($time, " : Left 1 ") ; 

		
		// Left 2
		
		#5 rotary_B_1 = 0;  rotary_A_1 = 0;
		#5  rotary_B_1 = 1; rotary_A_1 = 0;
		#5  rotary_B_1 = 1; rotary_A_1 = 1;
		
		$display($time, " : Left 2 ") ; 
		
		// Right 2 
		#5 rotary_B_1 = 0;  rotary_A_1 = 0;
		#5  rotary_B_1 = 0; rotary_A_1 = 1;
		#5  rotary_B_1 = 1; rotary_A_1 = 1;
		
			$display($time, " : Right 2 ") ; 
		
		// Right 3 
		#5 rotary_B_1 = 0;  rotary_A_1 = 0;
		#5  rotary_B_1 = 0; rotary_A_1 = 1;
		#5  rotary_B_1 = 1; rotary_A_1 = 1;
		
		$display($time, " : Right 3 ") ; 

		
		
		// Left 3
		
		#5 rotary_B_1 = 0;  rotary_A_1 = 0;
		#5  rotary_B_1 = 1; rotary_A_1 = 0;
		#5  rotary_B_1 = 1; rotary_A_1 = 1;
		
				$display($time, " : Left 3 ") ; 

		
		
		// Right 4
		#5 rotary_B_1 = 0;  rotary_A_1 = 0;
		#5  rotary_B_1 = 0; rotary_A_1 = 1;
		#5  rotary_B_1 = 1; rotary_A_1 = 1;
		
		$display($time, " : Right 4 ") ; 
		
				// Left 4
		
		#5 rotary_B_1 = 0;  rotary_A_1 = 0;
		#5  rotary_B_1 = 1; rotary_A_1 = 0;
		#5  rotary_B_1 = 1; rotary_A_1 = 1;
		
		$display($time, " : Left 4 ") ; 

		
		/************************************************************************************/
		
				// Right 5
		#5 rotary_B_1 = 0;  rotary_A_1 = 0;
		#5  rotary_B_1 = 0; rotary_A_1 = 1;
		#5  rotary_B_1 = 1; rotary_A_1 = 1;
		
		$display($time, " : Right 5") ; 
		
		
		// Right 6
		#5 rotary_B_1 = 0;  rotary_A_1 = 0;
		#5  rotary_B_1 = 0; rotary_A_1 = 1;
		#5  rotary_B_1 = 1; rotary_A_1 = 1;
		#5  rotary_B_1 = 0; rotary_A_1 = 1;
		
		$display($time, " : Right 6 ") ; 
		
		// Right 7
		#6 rotary_B_1 = 0;  rotary_A_1 = 0;
		#6  rotary_B_1 = 0; rotary_A_1 = 1;
		#5  rotary_B_1 = 0; rotary_A_1 = 1;
		#6  rotary_B_1 = 1; rotary_A_1 = 1;
		
		$display($time, " : Right 7" ) ; 
		
		// Right 8
		#6 rotary_B_1 = 0;  rotary_A_1 = 0;
		#6  rotary_B_1 = 0; rotary_A_1 = 1;
		#5  rotary_B_1 = 0; rotary_A_1 = 1;
		#6  rotary_B_1 = 1; rotary_A_1 = 1;
		
		$display($time, " : Right 8" ) ; 
		
		// Right 9
		#6 rotary_B_1 = 0;  rotary_A_1 = 0;
		#6  rotary_B_1 = 0; rotary_A_1 = 1;
		#5  rotary_B_1 = 0; rotary_A_1 = 1;
		#6  rotary_B_1 = 1; rotary_A_1 = 1;
		
		$display($time, " : Right 9" ) ; 
		
		
	// Left 5
		
		#5 rotary_B_1 = 0;  rotary_A_1 = 0;
		#5  rotary_B_1 = 1; rotary_A_1 = 0;
		#5  rotary_B_1 = 1; rotary_A_1 = 1;
		
		$display($time, " : Left 5 ") ; 
		
		
		
		
		// Left 6
		
		#5 rotary_B_1 = 0;  rotary_A_1 = 0;
		#5  rotary_B_1 = 1; rotary_A_1 = 0;
		#5  rotary_B_1 = 1; rotary_A_1 = 1;
		
		$display($time, " : Left 6 ") ; 
		
		// Left 7 
		
		#5 rotary_B_1 = 0;  rotary_A_1 = 0;
		#5  rotary_B_1 = 1; rotary_A_1 = 0;
		#5  rotary_B_1 = 1; rotary_A_1 = 1;
		
		$display($time, " : Left 7 ") ;
		
	  // Left 8
		
		#5 rotary_B_1 = 0;  rotary_A_1 = 0;
		#5  rotary_B_1 = 1; rotary_A_1 = 0;
		#5  rotary_B_1 = 1; rotary_A_1 = 1;
		
		$display($time, " : Left 8 ") ;
		
		
			
		// Right 9
		#6 rotary_B_1 = 0;  rotary_A_1 = 0;
		#5  rotary_B_1 = 0; rotary_A_1 = 1;
		#6  rotary_B_1 = 1; rotary_A_1 = 1;
		
		
	end
	
	
	
		
		initial #1000 $finish  ; 
      
endmodule 