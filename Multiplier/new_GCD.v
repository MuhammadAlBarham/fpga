`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:30:12 07/21/2020 
// Design Name: 
// Module Name:    GCD 
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
module next_GCD(X, Y, Go , Done ,A,B) ;

// Define the I/O 

// Define the input 
parameter width = 5 ; 

input [width-1:0] X, Y ; 

input Go ; 

//input clock ; 

// Define the output 

output Done ; 



// Internal Implemenatation 

parameter S_idle = 2'b00 , S_Comp = 2'b01 , S_Done = 2'b10 ; 

reg [1:0] state, next_state ; 


output integer A, B ;  


/*************************/


reg Equal  ; 
reg Greater ; 

/******************************/



/*****************************************************************************************************************************/

// Combinational Logic Circuits 


reg Load_regs , Equal_regs , Greater_regs , Smaller_regs  ,Done; 

/*****************************************************************************************************************************/

// Control Unit 

always @(*) 

state <= next_state ; 


always @(*) 

begin 

// Initilize the parameter 

next_state <= S_idle ; 
Load_regs = 0 ; 
Equal_regs = 0 ; 
Greater_regs = 0 ; 
Smaller_regs = 0 ; 
//Done = 0 ; 


// Check the event change 

case(state) 

S_idle  : begin if(Go) next_state <= state ; Load_regs = 1 ; end // Checked 
S_Comp  : begin 

if(Equal) begin next_state <= S_Done ; Equal_regs = 1 ; end // checked 

else if (Greater) begin next_state <= S_Comp ; Greater_regs = 1 ; end 

else begin  next_state <= S_Comp ; Smaller_regs = 1 ; end 

end 

S_Done :   next_state <= S_idle ;

default : next_state <= S_idle ; 
 
endcase 

end 




// DataPath Unit 


always @(*) begin 

if(Load_regs) begin 

A = X ; 
B = Y ; 

end 

if(Equal_regs) begin 

//done_s <= 1 ; 
Equal <= 1 ; 

Done <= 1 ; 

end


if(Greater_regs) begin 

Greater <=1 ; 

A = A - B ; 

end

if(Smaller_regs) begin 

B = B - A  ; 

end

end

endmodule








