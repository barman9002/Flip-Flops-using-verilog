`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.11.2025 23:32:26
// Design Name: 
// Module Name: ms_jk_ff
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


module ms_jk_ff(
input j,
input k ,
input clk,
output reg out 
    );
    reg master ;
    initial begin
    out = 0;
    master =0;
    end
    always@(posedge clk)begin
        case({j,k})
        2'b00 : master <= master ;
        2'b01 : master <= 0 ;
        2'b10 : master <= 1;
        2'b11 : master <= ~master;
        endcase
    end 
    
    always@(negedge clk)begin
        out <= master;
    end
endmodule
