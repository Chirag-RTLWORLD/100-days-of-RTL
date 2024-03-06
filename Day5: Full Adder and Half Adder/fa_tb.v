`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.03.2024 22:46:01
// Design Name: 
// Module Name: fa_tb
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


module fa_tb;
  reg  a,b,c;
  wire sum,carry;
  full_adder dut(a, b, c, sum,carry);
    initial begin
        #10 a= 1'b0; b= 1'b0; c=1'b0;
        #10 a= 1'b0; b= 1'b0; c=1'b1;
        #10 a= 1'b0; b= 1'b1; c=1'b0;
        #10 a= 1'b0; b= 1'b1; c=1'b1;
        #10 a= 1'b1; b= 1'b0; c=1'b0;
        #10 a= 1'b1; b= 1'b0; c=1'b1;
        #10 a= 1'b1; b= 1'b1; c=1'b0;
        #10 a= 1'b1; b= 1'b1; c=1'b1;
        
        
    end
endmodule
