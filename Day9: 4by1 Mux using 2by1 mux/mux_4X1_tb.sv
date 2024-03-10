`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//Day9
//Test banch for 4 by 1 multiplexer using system verilog

module mux_4X1_tb;
    logic [3:0] d;
    logic [1:0] s;
    logic f;
    
    mux_4X1 dut(d, s, f);
    always 
        begin
			d=1011;
			s=11;
            #10;
		end
    initial begin 
    $display("Input Data : %b  Select Line : %b Output : %b ",d, s, f);
    #50 
    $finish;
    end
endmodule
