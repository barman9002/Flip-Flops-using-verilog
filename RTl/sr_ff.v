`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.11.2025 23:18:49
// Design Name: 
// Module Name: sr_ff
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


module sr_ff(
    input s , 
    input r ,
    input clk,
    output reg out
    );
   always@(posedge clk)begin 
    case({s,r})
    2'b00 : out <= out;
    2'b01 : out <= 0;
    2'b10 : out <= 1;
    2'b11 : out <= 1'bX;
    endcase
   end
endmodule
