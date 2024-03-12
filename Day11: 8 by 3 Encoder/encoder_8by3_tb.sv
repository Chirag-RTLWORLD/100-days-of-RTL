`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

module encoder_8by3_tb;
	logic [7:0] d;
	logic [2:0] out;

	Encoder_8by3 dut(d, out);
	initial begin
		#10 d=8'b10000000;
		#10 d=8'b01000000;
		#10 d=8'b00100000;
		#10 d=8'b00010000;
		#10 d=8'b00001000;
		#10 d=8'b00000100;
		#10 d=8'b00000010;
		#10 d=8'b00000001;
		#10 d=8'b00000000;
	end
	
    initial begin 
    $monitor("data: %b   out: %b ", d, out);
    #50 
    $finish;
    end
endmodule
