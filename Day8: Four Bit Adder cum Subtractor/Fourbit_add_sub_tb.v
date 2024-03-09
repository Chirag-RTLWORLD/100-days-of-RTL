`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.03.2024 21:10:38
// Design Name: 
// Module Name: Fourbit_add_sub_tb
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


module Fourbit_add_sub_tb;
reg [3:0]A;
reg [3:0]B;
reg ctrl;
wire[3:0]SD;
wire CB;

Four_bit_add_sub dut(A,B,ctrl,SD,CB);

    initial begin        
        A= 4'b1101;
        B= 4'b1010;
        
        ctrl= 1'b0;
        #10; 
        $display("A= %b  B= %b  Sum= %b  Carry= %b",A, B, SD, CB);
        
        ctrl=1'b1;
        #10
        $display("A= %b  B= %b  Difference= %b  Borrow= %b",A, B, SD, CB);
        
        $finish;
    end
endmodule
