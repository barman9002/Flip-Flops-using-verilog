`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.11.2025 21:59:51
// Design Name: 
// Module Name: tb_d_ff
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


module tb_d_ff();
reg d,clk;
wire out; 
d_ff uut (.d(d),.clk(clk),.out(out));
initial  
begin
    clk =0;
    forever #5 clk = ~clk;
end

initial
begin
    $monitor("Time = %0t | d = %b | out = %b",$time,d,out);
    d=0 ; #10;
    d=1 ; #10;
    d=0 ; #10;
    d=1 ; #10;
    $finish;
end
endmodule
