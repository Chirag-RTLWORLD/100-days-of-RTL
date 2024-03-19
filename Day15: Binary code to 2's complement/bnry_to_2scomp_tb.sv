`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.03.2024 22:40:19
// Design Name: 
// Module Name: bnry_to_2scomp_tb
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


module bnry_to_2scomp_tb;
    binary_to_2scomp dut (binary_in, twos_comp_out);

    logic [2:0] binary_in;
    logic [2:0] twos_comp_out;

    initial begin
        $monitor("Input: %b, Two's Complement: %b", binary_in, twos_comp_out);
        binary_in = 3'b101; 
        #10; 
        $finish; 
    end

endmodule
