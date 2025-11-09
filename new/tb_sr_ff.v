`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.11.2025 23:19:11
// Design Name: 
// Module Name: tb_sr_ff
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


module tb_sr_ff( );
reg s,r,clk;
wire out;

sr_ff uut(.s(s), .r(r), .clk(clk) , .out(out));

initial
begin 
    clk = 0 ;
    forever #5 clk = ~clk;
end

initial
begin
    $monitor("Time = %0t | s = %b | r = %b | clk = %b | out = %b ",$time ,s,r,clk,out );
    s=0; r=0; #10;
    s=0; r=1; #10;
    s=1; r=0; #10;
    s=1; r=1; #10;
    s=1; r=1; #10;
    s=1; r=0; #10;
    s=0; r=1; #10;
    $finish;
end
endmodule
