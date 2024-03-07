`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//Day6 
//Full Subtractor Implementation

module full_subtractor(
    input a,b,c,
    output reg diff,brw
    );
always@(*) begin

diff=a^b^c;
brw= (~ a) &(b^c) | b&c; 

end
endmodule
