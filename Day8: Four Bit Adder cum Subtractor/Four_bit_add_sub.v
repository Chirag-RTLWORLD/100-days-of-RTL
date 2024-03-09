`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//Day8 
//four bit adder and subtractor

module full_adder(
    input a,b,cin,
    output reg S,C
    );
    
 always@(*) begin

S= a ^ b ^ cin;               //sum=a xor (b xor c);
C=(a&b) | cin&(a ^ b);   //carry=(a&b) + (a xor b);

end
endmodule

module Four_bit_add_sub(
    input [3:0] A,B,
    input ctrl,  
    //if control is zero then our circuit will work as adder  and 
    //if control is one th our circuit will work as subtractor
    output [3:0]SD,  //sum or difference
    output CB          //carry or borrow
    );

    wire c1,c2,c3;

    full_adder fa0 (A[0], (B[0]^ctrl), ctrl, SD[0], c1);
    full_adder fa1 (A[1], (B[1]^ctrl), c1, SD[1], c2);
    full_adder fa2 (A[2], (B[2]^ctrl), c2, SD[2], c3);
    full_adder fa3 (A[3], (B[3]^ctrl), c3, SD[3], CB);


endmodule