`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:35:48 07/21/2020
// Design Name:   Multiplier_Binary
// Module Name:   C:/Users/Phantom/Desktop/Ch_5/Multiplier/t_Binary_Multiplier.v
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

module t_Binary_Multiplier;

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

// Generate stimulus waveforms
initial 
#200 $finish ; 

initial
begin
start =0;
reset_b = 0;
#2 start = 1; reset_b = 1; 

Multiplicand = 5'b00011;
Multiplier = 5'b00011 ; 
#10 start = 0 ; 
end

initial

begin 
clock=0 ; 
end 

always
#5 clock = ~clock ; 

//Display results and compare with Table in the example

always @ (posedge clock)
$strobe ( "Product = %b", uut.Product); 
      
endmodule


