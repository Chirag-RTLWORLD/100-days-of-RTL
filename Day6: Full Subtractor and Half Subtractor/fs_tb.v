`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//Day6 Full Subtractor testbench

module fs_tb;
  reg  a,b,c;
  wire diff,brw;
  full_subtractor dut(a, b, c, diff,brw);
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
