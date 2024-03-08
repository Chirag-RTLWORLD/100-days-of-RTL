`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////


module fa4bit_tb;
reg [3:0]A;
reg [3:0]B;
reg cin;
wire[3:0]S;
wire carry;

four_bit_adder dut(A,B,cin,S,carry);

    always begin        
        A= $random;
        B= $random;
        cin= $random;
        #10; 
    end
    initial
    begin $monitor("A= %b  B= %b  cin= %b  S= %b  carry= %b",A, B, cin, S, carry);
    #60 $finish;
    end
endmodule
