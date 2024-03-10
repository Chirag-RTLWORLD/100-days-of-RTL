`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//Day9
//4 by 1 Multiplexer using system verilog

module mux_4X1(input logic [3:0]d, input logic [1:0]s, output logic f
    );
    
    logic w0, w1;
    
    mux_2X1 M0(d[0],d[1],s[0],w0);
    mux_2X1 M1(d[2],d[3],s[0],w1);
    mux_2X1 M2(w0,w1,s[1],f);
    
endmodule

module mux_2X1( 
            input logic d0,d1,s ,
            output logic f
    );  
    
    logic p0,p1; 
    
    assign f= p0|p1;
    assign p0 = d0 & ~s;
    assign p1 = d1 & s;
      
    
endmodule
