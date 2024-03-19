`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//Day16: Implementation of Binary code to Gray code converter and
            //Gray code to Binary code Converter using veriog and 
            //its Testbench code using System verilog
//verilog code

module Bi_gry_and_gry_bi(
    input logic [3:0]din,
    input en,
    output logic [3:0] Binarycode,Graycode );   
always@(*)
begin 
//for Gray code to Binary
    if(en)
    begin
    Binarycode[3]=din[3];
    Binarycode[2]=Binarycode[3]^din[2];
    Binarycode[1]=Binarycode[2]^din[1];
    Binarycode[0]=Binarycode[1]^din[0];
    end
// For Binary to Gray code
    else
    begin
    Graycode[3]=din[3];
    Graycode[2]=din[3]^din[2];
    Graycode[1]=din[2]^din[1];
    Graycode[0]=din[1]^din[0];
    end
end 
endmodule
