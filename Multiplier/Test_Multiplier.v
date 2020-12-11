`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:29:29 07/21/2020
// Design Name:   Multiplier_Binary
// Module Name:   C:/Users/Phantom/Desktop/Ch_5/Multiplier/Test_Multiplier.v
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

module t_Sequential_Binary_Multiplier; // Testbench for the binary multiplier

parameter dp_width =5 ; //  Set to width of datapath
wire [2*dp_width - 1: 0] Product ; // Output from multiplier
wire Ready ; 
reg [dp_width -1: 0] Multiplicand, Multiplier;  // Inputs to multiplier
reg Start, clock , reset_b;

// Instantiate multiplier

Multiplier_Binary UUT (start , reset_b , clock , Multiplicand , Multiplier , Product , Ready); 


// Generate stimulus waveforms

initial 
 
 #200  $finish; 


initial

begin

Start =0;
reset_b = 0;
#2 Start = 1; reset_b = 1 ;

Multiplicand = 5'b10111; Multiplier = 5'b10011 ;
#10 Start = 0 ; 
end


initial
begin

clock = 0 ; 
end 

always 
#5 clock = ~clock ; 
// Display results and compare with Table in the example

always @ (posedge clock)
$strobe ( "C =%b A =%b Q=% b P =%b time=%0d ", UUT.C, UUT.A, UUT.Q, UUT.P, $time);
endmodule

