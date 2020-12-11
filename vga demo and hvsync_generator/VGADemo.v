`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:39:47 08/02/2020 
// Design Name: 
// Module Name:    VGADemo 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module VGADemo( 

	// inputs : 1 input 
	
	input clk_25, 
	
	// Outputs : 3 outputs 
	
	output reg[2:0] pixel,
	output hsync_out, 
	output vsync_out
    );
	 
	 
hvsync_gerator hvsync( 
.clk(clk_25), 
.vga_h_sync(hsync_out), 
.vga_v_sync(vsync_out), 
.CounterX(CounterX), 
//.CounterY(CounterY), 
.inDisplayArea(inDisplayArea) 
); 

// assign  [9:0] CounterX2 = CounterX1 ;  

//wire [9:0]CounterX ;
 

// Pixel Block : 

always @(posedge clk_25)
	begin 

	if(inDisplayArea) 
	
		begin 
//		pixel[2] <= 0 ; 
		pixel <= CounterX ; 
		end 

	else 
		pixel <= 3'b000 ;
		
	end 
	
	
	
	
	always @(posedge clk)
	begin 

	if(inDisplayArea) 
	
		begin 
//		pixel[2] <= 0 ; 
		pixel <= CounterX[9:6] ; 
		end 

	else 
		pixel <= 3'b000 ;
		
	end 


endmodule
