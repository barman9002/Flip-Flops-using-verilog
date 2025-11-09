`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.11.2025 22:42:33
// Design Name: 
// Module Name: tb_t_ff
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


module tb_t_ff();
reg t,clk;
wire out;

t_ff uut (.t(t), .clk(clk), .out(out));

initial
begin
clk =0;
forever #5 clk = ~clk;
end

initial
begin
$monitor("Time = %0t | T =%b | clk= %b| out = %b ",$time , t,clk,out);
t=0;#10;
t=1;#10;
t=1;#10;
t=0;#10;
t=1;#10;
t=0;#10;
t=1;#10;
$finish;
end
endmodule
