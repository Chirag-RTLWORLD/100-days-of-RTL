`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//Day17: Implementation of  Carry Look Ahead Adder and
            //its Testbench code using System verilog
//testbench code

module CLA_ADDER_tb;
    logic [3:0] x,y;
    logic [4:0]s;

    CLA_ADDER dut(x, y, s);
    
    initial begin 
      #10  x = 4'b1000; y = 4'b0011; 
      #10  x = 4'b0001; y = 4'b1010;  
      #10  x = 4'b0110; y = 4'b0110;
      #10  x = 4'b1001; y = 4'b0110; 
      #10  x = 4'b1001; y = 4'b0100;
      #10  x = 4'b1111; y = 4'b1110; 
    end
    initial begin 
    $monitor("x=%b y=%b s=%b ",x,y,s );
    #60 $finish;
    end
endmodule
