`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:13:10 07/13/2020 
// Design Name: 
// Module Name:    Low_Priority_Encoder_16_to_4 
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
module Low_Priority_Encoder_16_to_4(W, y, f);

input [15:0] W ; 
output reg [3:0] y ; 
output  f ;

wire f = (W!=0) ; 


always @(W)
begin 

casex(W)

16 'b xxxxxxxxxxxxxxx1 : y = 0 ; 
16 'b xxxxxxxxxxxxxx10 : y = 1 ; 
16 'b xxxxxxxxxxxxx100 : y = 2 ; 
16 'b xxxxxxxxxxxx1000 : y = 3 ; 
16 'b xxxxxxxxxxx10000 : y = 4 ; 
16 'b xxxxxxxxxx100000 : y = 5 ; 
16 'b xxxxxxxxx1000000 : y = 6 ; 
16 'b xxxxxxxx10000000 : y = 7 ; 
16 'b xxxxxxx100000000 : y = 8 ; 
16 'b xxxxxx1000000000 : y = 9  ; 
16 'b xxxxx10000000000 : y = 10 ; 
16 'b xxxx100000000000 : y = 11 ; 
16 'b xxx1000000000000 : y = 12 ; 
16 'b xx10000000000000 : y = 13 ; 
16 'b x100000000000000 : y = 14 ; 
16 'b 1000000000000000 : y = 15 ; 
default : y = 0 ; 
endcase

end 


endmodule
