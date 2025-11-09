`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.11.2025 22:18:00
// Design Name: 
// Module Name: tb_jk_ff
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


module tb_jk_ff();
reg j,k,clk;
wire out;
jk_ff uut (.j(j),.k(k),.clk(clk),.out(out));

initial
begin
    clk = 0;
    forever #5 clk = ~clk;
end 

initial
begin
    $monitor("Time = %0t | j = %b | k =%b | out = %b",$time , j,k,out);
    j=0; k=0; #10;
    j=0; k=1; #10;
    j=1; k=0; #10;
    j=1; k=1; #10;
    j=1; k=0; #10;
    j=0; k=1; #10;
    $finish;
end 
endmodule
