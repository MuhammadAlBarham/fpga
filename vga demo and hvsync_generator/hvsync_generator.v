`timescale 10ns / 1ns 
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:47:47 08/02/2020 
// Design Name: 
// Module Name:    hvsync_generator 
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
module hvsync_generator(
	
	// Inputs : 1 input 
		
		input clk , 
	
	// Outputs : 5 outputs 
	
		output vga_h_sync , 
		output vga_v_sync , 
		output reg inDisplayArea, 
		output reg [9:0] CounterX, 
		output reg [9:0] CounterY , 
		
		output reg[2:0] pixel
  );
  
 

// Internal implementation : 

reg vga_HS, vga_VS ; 

wire CounterXmaxed = ( CounterX == 800 ) ; 
wire CounterYmaxed = ( CounterY == 521 ) ; 



// # 1 : Counter X Block 
	 
always @(posedge clk) 

begin 

 if(CounterXmaxed) CounterX <= 0 ; 
else
 CounterX <= CounterX + 1; 

end

// # 2 : Counter Y Block:


always @(posedge clk) 

	begin 

	if(CounterXmaxed) 
		begin 
			if(CounterYmaxed) CounterY <= 0 ; 
		else 
			CounterY <= CounterY + 1 ; 
		end 
	end 


// # 3 : Signal Generator block 

always @(posedge clk) 
	begin 
	
	vga_HS <= (CounterX > (640 + 16) && (CounterX < (640 + 16 + 96))); // active for 96 clocks
	vga_VS <= (CounterY > (480 + 10) && (CounterY < (480 + 10 + 2))); // active for 2 clocks
	end 
	
	// Active low signals
	assign vga_h_sync = ~vga_HS; 
	assign vga_v_sync = ~vga_VS; 
	

// # 4 : Display area check block 

always @(posedge clk) 
	
	inDisplayArea <= (CounterX < 640 ) && ( CounterY < 480 ) ; 



	
	always @(posedge clk)
	begin 

	if(inDisplayArea) 
	
		begin 
      pixel[2] <= 0 ; 
		
		pixel[1:0] <= CounterX[8:7] ; 
		end 

	else 
		pixel <= 3'b000 ;
		
	end 


 // 50 MHZ to 2 MHZ 
 
 always @(posedge clk ) 
	
 if(counterx % 25 == 0) 
 couter_2M <= couter_2M + 1'b1 ; 
 else couter_2M <= 10'b0000000000; 

 assign check_2M_ch  =  




endmodule








