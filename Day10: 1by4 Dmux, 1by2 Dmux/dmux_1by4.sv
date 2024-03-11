//Day10
//1:2 Demux

module dmux_1by2(
    input S, 
    input A, 
    output logic f0,f1
    );
    assign {f0, f1} = S ? {1'b0, A} : {A, 1'b0};
endmodule


//Day10
//1:4 demux using 1:2 demux
module dmux_1by4(
    input [1:0]S, 
    input A, 
    output logic y0, y1, y2, y3
    );
    logic z1, z2;
    dmux_1by2 d1(S[0], A, z1, z2);
    dmux_1by2 d2(S[1], z1, y0, y1);
    dmux_1by2 d3(S[1], z2, y2, y3);
endmodule

