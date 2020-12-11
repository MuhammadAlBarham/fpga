`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:28:40 07/21/2020 
// Design Name: 
// Module Name:    Multiplier 
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

module Multiplier_Binary(start , reset_b , clock , Multiplicand , Multiplier , Product , Ready);
	 
	 
// Define the I/O 	 
	 
// Define the input : 

input start ;    // Start Signal 
input reset_b ;  // Reset Signal 
input clock ;    // Clock Signal 


// Default configuration : Five-bit datapath 

parameter dp_width = 5 ; 


input [dp_width-1:0]  Multiplicand ;  
input [dp_width-1:0]  Multiplier ;

 

// Define the ouput modiele 

output Ready ;
output [2*dp_width-1:0] Product  ; 


// Internal Implemenatation 

parameter BC_size = 3 ;    // 

parameter S_idle = 3'b001 , S_add = 3'b010, S_shift = 3'b100; // One-hot code  

reg [2:0] state , next_state ; //


reg [dp_width-1:0] A, B, Q ;   // Datapath size 
reg C ; 
reg [BC_size-1:0] P ; 
reg Load_regs, Decr_P , Add_regs, Shift_regs ;  // Indication register 



// Combinational Logic 

assign Product = {A,Q} ; 

wire zero = (P==0) ; 

wire Ready= (state== S_idle) ; 


// Control Unit 


always @(posedge clock, negedge reset_b) 

if(~reset_b) state <= S_idle ; else state <= next_state ; 


always @(state, start, Q[0] , zero) 

begin 

// Initilaize the parameters 

next_state = S_idle ; 
Load_regs = 0 ; 
Decr_P = 0 ;
Add_regs = 0 ; 
Shift_regs = 0; 

// Check the event change 

case(state) 

S_idle  : begin if(start)  next_state = S_add ; Load_regs = 1 ; end 
S_add   : begin if(Q[0]) Add_regs = 1 ; Decr_P = 1 ; next_state = S_shift ; end 
S_shift : begin if(zero) next_state = S_idle ; else next_state = S_add ; Shift_regs =1 ; end 

default : next_state = S_idle ; 

endcase 


end 


// Datapath Unit 


always @(posedge clock) begin 

// Check the Load Register,  S_add state 

if(Load_regs)

begin 

A <= 0 ; C <= 0 ; P <= dp_width ; B <= Multiplicand ; Q <= Multiplier ;  

end

if(Add_regs) {C,A} <= A + B ; 
if(Shift_regs) {C,A,Q} <= {C,A,Q} >> 1 ; 
if (Decr_P) P <= P - 1 ; 


end

endmodule



