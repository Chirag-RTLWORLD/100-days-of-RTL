`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//Day14: Implementation of Binary code to Gray code converter and
            //Gray code to Binary code Converter using veriog and 
            //its Testbench code using System verilog
//Testbench code

module b2g_g2b_tb;
    logic [3:0] din;
    logic en;
    logic [3:0] Binarycode, Graycode;
    
Bi_gry_and_gry_bi uut (din, en, Binarycode, Graycode);

    initial begin
        din = 4'b1101; 
        en = 1; 
        #10; 
        $display("Gray code input: %b, Binary output: %b", din, Binarycode);

        din = 4'b0010; 
        en = 0;
        #10; 
        $display("Binary input: %b, Gray code output: %b", din, Graycode);
        $finish; 
    end

endmodule
