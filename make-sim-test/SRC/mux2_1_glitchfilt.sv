`timescale 1 ns / 1 ns
module MUX2_1_GLITCHFILT(
    input A, B, SEL,
    output wire OUT
);

    wire SEL_N, A1, B1, AB;

    not G1(SEL_N, SEL);
    and G2(A1, A, SEL_N);
    and G3(B1, B, SEL);
    and G4(AB, A, B);
    or  G5(OUT, A1, B1, AB);

endmodule