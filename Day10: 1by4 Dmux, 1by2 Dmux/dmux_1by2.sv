//Day10
//1:2 Demux

module dmux_1by2(
    input S, 
    input A, 
    output logic f0,f1
    );
    assign {f0, f1} = S ? {1'b0, A} : {A, 1'b0};
endmodule