`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//Day15: Implementation of Binary code to 2's complement converter  and 
            //its Testbench code using System verilog
            
//verilog code

module binary_to_2scomp (
    input [2:0] binary_in,
    output [2:0] twos_comp_out
);
    assign twos_comp_out = ~binary_in + 1'b1;
endmodule