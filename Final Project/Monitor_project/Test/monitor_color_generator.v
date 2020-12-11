`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:28:38 08/06/2020 
// Design Name: 
// Module Name:    monitor_color_generator 
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


// The top module of the project 


module monitor_color_generator(
    	
	// Inputs : 4 input 
		
		input clk , 
		input rotary_A_main, 
		input rotary_B_main,
		input reset , 
	
	// Outputs : 5 outputs 
	
		output vga_h_sync , 
		output vga_v_sync , 
		output reg[2:0] pixel
    );

reg clk_25 ; 

always @(posedge clk,posedge reset)

begin 
if(reset) clk_25 = 1'b0; 

else clk_25 = ~clk_25 ;  
end 

// Internal register for the monitor's control 
	
reg inDisplayArea; 
reg [9:0] CounterX ;  
reg [9:0] CounterY ; 
												
// Instance for the Encoder 

rotary_direction encoder(
     .clk_1(clk),
	  .reset_dir(reset), 
	  
	  
	  .rotary_A_1(rotary_A_main),
	  .rotary_B_1(rotary_B_main),
     .shift_left(shift_left_main),
     .shift_right(shift_right_main)
    );	 

// Define a counter for encoder: 	

reg [2:0] counter_R ; 

reg [2:0] counter_L ; 


// Color reg to take the differance betwwen right and left 

reg [2:0] color; 


// Color detrmination block 

always @(posedge clk_25, posedge reset)
	begin 
	if(reset) begin 
	
	color <= 3'b000;
	
	end 
	
	else  color <= counter_R - counter_L; 
	end 


// Shift right block 

always @(posedge shift_right_main, posedge reset)  begin 

	
	if(reset)  
	counter_R <= 3'b000; 	 

	else begin 
		if(counter_R != 3'b111) 
		counter_R <= counter_R + 3'b001 ;

		else counter_R <= 3'b000 ; 

	end 

	end 


// Shift left block 

always @(posedge shift_left_main, posedge reset)  begin 


	if(reset) 
	counter_L <= 3'b000; 
	

	else begin 
	if (counter_L != 3'b111) 
	counter_L <= counter_L + 3'b001 ;

	else counter_L <= 3'b000 ; 
	end 

end 
 	 


// Internal implementation : 

reg vga_HS, vga_VS ; 

wire CounterXmaxed = ( CounterX == 800 ) ; 
wire CounterYmaxed = ( CounterY == 521 ) ; 



// # 1 : Counter X Block 
	 
always @(posedge clk_25, posedge reset) 

begin 

	if(reset)  CounterX<= 10'b0000000000; 
	
	else begin 

	if(CounterXmaxed) CounterX <= 0 ; 
	else
	CounterX <= CounterX + 1; 

	end
end 

// # 2 : Counter Y Block:


always @(posedge clk_25, posedge reset) 

	begin 
	
	
	if(reset)  CounterY<= 10'b0000000000; 
	
	else begin 

	if(CounterXmaxed) 
		begin 
			if(CounterYmaxed) CounterY <= 0 ; 
		else 
			CounterY <= CounterY + 1 ; 
		end 
	end
		end 


// # 3 : Signal Generator block 

always @(posedge clk_25) 
	begin 
	
	vga_HS <= (CounterX > (640 + 16) && (CounterX < (640 + 16 + 96))); // active for 96 clocks
	vga_VS <= (CounterY > (480 + 10) && (CounterY < (480 + 10 + 2))); // active for 2 clocks
	end 
	
	// Active low signals
	assign vga_h_sync = ~vga_HS; 
	assign vga_v_sync = ~vga_VS; 
	

// # 4 : Display area check block 

always @(posedge clk_25) 
	
	inDisplayArea <= (CounterX < 640 ) && ( CounterY < 480 ) ; 

	always @(posedge clk_25 )
	begin 


	if (reset) 	pixel <= 3'b000 ; 
	
	if(inDisplayArea) 
	
		begin  
		pixel<= color ;
		end 

	else 
		pixel <= 3'b000 ;
		
	end 

endmodule 




