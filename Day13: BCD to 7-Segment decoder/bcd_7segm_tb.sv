`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.03.2024 21:38:30
// Design Name: 
// Module Name: bcd_7segm_tb
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


module bcd_7segm_tb;
   logic [3:0] din;
   logic a, b, c, d, e, f, g;

BCD_7segment dut (din,a,b,c,d,e,f,g);
initial begin
        $monitor("BCD input: %b, 7-Segment output: %b %b %b %b %b %b %b", 
                         din, a, b, c, d, e, f, g);
        din = 4'd0; #10;
        din = 4'd1; #10;
        din = 4'd2; #10;
        din = 4'd3; #10;
        din = 4'd4; #10;
        din = 4'd5; #10;
        din = 4'd6; #10;
        din = 4'd7; #10;
        din = 4'd8; #10;
        din = 4'd9; #10;
        $finish;
        end
endmodule