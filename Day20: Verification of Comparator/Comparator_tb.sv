`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//Day20: Verification of a N-bit Comparator using System verilog
            
//System verilog code

module Comparator_tb;
	logic [7:0]a;
	logic [7:0]b;
	logic Ls,Gr,Eq;

	Comparator dut(a,b,Ls,Gr,Eq);
		
		always begin
			a=120;b=200;#10;
			a=150;b=100;#10;
			a=399;b=222;#10;
			a=777;b=778;#10;
			a=380;b=380;#10;
			a=450;b=550;#10;
			a=800;b=1000;#10;
			a=630;b=630;#10;
		end
		initial
        begin $monitor("a= %0d  b= %0d  then Lesser= %0d  Greater= %0d  Equal= %0d ",a, b,Ls,Gr,Eq );
        #80 $finish;
    end
endmodule
