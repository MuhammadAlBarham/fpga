`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:21:05 07/11/2020 
// Design Name: 
// Module Name:    Three_Input_Or_Gate 
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
module Three_Input_Or_Gate(
    input i1,
    input i2,
    input i3,
    output gateOuput
    );


or(gateOuput, i1, i2, i3) ; 

endmodule
