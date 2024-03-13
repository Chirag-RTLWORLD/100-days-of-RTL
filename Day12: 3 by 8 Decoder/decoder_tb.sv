`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////


module decoder_tb;
    logic [2:0] din;
	logic [7:0] out;

	decoder_3by8 dut(din,out);
	initial
	begin
		din=3'b000;
		#10;
	end
	always begin
		#10 din=3'b000;
		#10 din=3'b001;
		#10 din=3'b010;
		#10 din=3'b011;
		#10 din=3'b100;
		#10 din=3'b101;
		#10 din=3'b110;
		#10 din=3'b111;	
	end	
	initial begin
	$monitor("datain: %b  out: %b", din, out);
	#50 
	$finish;
	end
endmodule
