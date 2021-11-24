`timescale 1 ns / 1 ns
module tb_mux2_1;
    reg A, B, SEL;
    wire OUT;

    MUX2_1 UUT(A, B, SEL, OUT);

    initial begin
        #0 A = 1'b0; B = 1'b0; SEL = 1'b0;
        #1 A = 1'b0; B = 1'b0; SEL = 1'b1;
        #1 A = 1'b0; B = 1'b1; SEL = 1'b0;
        #1 A = 1'b0; B = 1'b1; SEL = 1'b1;
        #1 A = 1'b1; B = 1'b0; SEL = 1'b0;
        #1 A = 1'b1; B = 1'b0; SEL = 1'b1;
        #1 A = 1'b1; B = 1'b1; SEL = 1'b0;
        #1 A = 1'b1; B = 1'b1; SEL = 1'b1;
    end
endmodule