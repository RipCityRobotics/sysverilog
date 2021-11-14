`timescale 1 ns / 1ns
module MUX2_1 (
    input A, B, SEL,
    output wire OUT
);
    wire SEL_N, A1, B1;

    not G1(SEL_N, SEL);
    and G2(A1, A, SEL_N);
    and G3(B1, B, SEL);
    or G4(OUT, A1, B1);

endmodule
