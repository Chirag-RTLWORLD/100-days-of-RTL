`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//Day6 
//Half  Subtractor Testbench

module hs_tb;
  reg  a,b;
  wire diff,brw;
  half_subtractor dut(a, b, diff,brw);
    initial begin
        #10 a= 1'b0; b= 1'b0;
        #10 a= 1'b0; b= 1'b1;
        #10 a= 1'b1; b= 1'b0;
        #10 a= 1'b1; b= 1'b1;
    end
endmodule
