`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:36:22 07/26/2020 
// Design Name: 
// Module Name:    LRShift_1 
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
module LRShift_1(Si, L, R, In, Out);

input Si, L, R;
input [7:0] In;
output reg [7:0] Out;

always @ (L, R, In, Si)

begin
case({R,L})
2'b01 : Out = {In[6:0], Si}; // Left shift
2'b10 : Out = {Si, In[7:1]}; // Right shift
default: Out = In;
endcase


end

endmodule 