`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////


module binary2excess3_tb;
    logic [3:0] binary_in;
    logic [3:0] excess3_out;

    binary2excess3 dut(binary_in, excess3_out);

    always begin
        binary_in= 4'd0;
    #10;
        binary_in= 4'd1;
    #10;
        binary_in= 4'd2;
    #10;
        binary_in= 4'd3;
    #10;
        binary_in= 4'd4;
    #10;
        binary_in= 4'd5;
    #10;
        binary_in= 4'd6;
    #10;
        binary_in= 4'd7;
    #10;
    end
    
    initial begin
    $monitor("Binary Input: %b  Excess-3 Code: %b", binary_in, excess3_out);
    #80 $finish;
    end
endmodule
