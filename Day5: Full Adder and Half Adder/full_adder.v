`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.03.2024 21:59:53
// Design Name: 
// Module Name: full_adder
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

//full adder design using behavioral modelling
module full_adder(
    input a,b,c,
    output reg sum,carry
    );
    
 always@(*) begin

sum= a ^ b ^ c;               //sum=a xor (b xor c);
carry=(a&b) | c&(a ^ b);   //carry=(a&b) + (a xor b);

end
endmodule
