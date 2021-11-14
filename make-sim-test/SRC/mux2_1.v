`timescale  1ns /1ns
module MUX2_1 (A, B, SEL, OUT);
    //Port Declerations
    output OUT;
    input A, B, SEL;

    //Internal Variable Declerations
    wire SEL_N, A1, B1;

    //Netlist
    not (SEL_N, SEL);
    and (A1, A, SEL_N);
    and (B1, B, SEL);
    or  (OUT, A1, B1);

endmodule
