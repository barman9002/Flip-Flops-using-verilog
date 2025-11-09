`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.11.2025 22:17:35
// Design Name: 
// Module Name: jk_ff
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module jk_ff(input j , input k ,input clk, output reg out);
always@(posedge clk)begin
case({j,k})
2'b00 : out <= out ;
2'b01 : out <= 0;
2'b10 : out <= 1;
2'b11 : out <= ~out ;
endcase 
end
endmodule
