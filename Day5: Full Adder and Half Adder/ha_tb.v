`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.03.2024 21:51:30
// Design Name: 
// Module Name: ha_tb
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


module ha_tb;
  reg  a,b;
  wire sum,carry;
  half_adder dut(a, b, sum,carry);
    initial begin
        #10 a= 1'b0; b= 1'b0;
        #10 a= 1'b0; b= 1'b1;
        #10 a= 1'b1; b= 1'b0;
        #10 a= 1'b1; b= 1'b1;
    end
endmodule
