`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.02.2024 12:29:24
// Design Name: 
// Module Name: Logic_gates__Behavioral
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


module Logic_gates__Behavioral(
    input a, b,
    output reg and_g, or_g, not_g, nand_g, nor_g, xor_g, xnor_g );
    
    always@(*)
        begin
            and_g = a&b;
            or_g = a|b;
            not_g = ~a;
            nand_g = ~(a&b);
            nor_g = ~(a|b);
            xor_g = a^b;
            xnor_g = ~(a^b);
        end
    
endmodule
