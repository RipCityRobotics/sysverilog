# **sysverilog**
# My journey to evolve from PCBs to FPGAs!

## Useful git Repos
1. [verilator](https://github.com/verilator/verilator)
2. [SystemVerilogReference](https://github.com/VerificationExcellence/SystemVerilogReference)
3. [clash-compiler](https://github.com/clash-lang/clash-compiler)
4. [hdmi](https://github.com/verilator/verilator)
5. [verible](https://github.com/chipsalliance/verible)
6. [vunit](https://github.com/VUnit/vunit)
7. [OpenLane](https://github.com/The-OpenROAD-Project/OpenLane)
8. [basic_vilog](https://github.com/pConst/basic_verilog)

## Useful Resource

1. [Icarus Verilog](http://iverilog.icarus.com/)
2. [fromReddit](https://www.reddit.com/r/FPGA/comments/omrnrk/list_of_useful_links_for_beginners_and_veterans/)
3. [Vivado Simulator Scripted flow](https://www.itsembedded.com/dhd/vivado_sim_1/)
4. [GNU Make](https://ftp.gnu.org/old-gnu/Manuals/make-3.79.1/html_chapter/make_6.html)
5. [Verilator Tutorial](https://www.itsembedded.com/dhd/verilator_1/)

## FPGA Interview notes
* **Interview Q&A Resource #1**
    - [NandLand Link](https://www.nandland.com/articles/interview-questions-for-fpga.html)
    1. Name some Flip-Flops
        - 
    2. Name some Latches
        - 
    3. Difference between FF and Latch
        - 
    4. Why use an FPGA in a design?
        - 
    5. What does a for loop do in synthesizable code? Does it work the same way as in a software language like C?
        - 
    6. Describe the differences between SRAM and DRAM
        - 
    7. ***What is the purpose of a PLL***
        - PLL stand for Phase-locked loop and is commonly used inside FPGAs to generate desired clock frequencies. PLLs are built-in to the FPGA fabric and are able to take an input clock and derive a unique out-of-phase clock from that input clock. They are very useful if your design requires several unique clocks to be running internally.
    8. Describe the difference between inference and instantiation
        -
    9. What is metastability, how would you prevent it?
        -
    10. What is a FIFO?
        -
    11. What is Block RAM?
        -
    12. Describe how a UART works and where it bight be used?
        -
    13. What is the difference between synchronous and asynchronous logic?
        -
    14. What is a shift register in an FPGA?
        -
    15. Describe some differences between VHDL and Verilog?
        -
    16. What should you be concerned about when crossing clock domains in an FPGA?
        -
    17. Describe setup and hold time, what happens if they are violated?
        -
    18. What's the difference between a melee and moore machine?
        -
    19. What is the purpose of the synthesis tools?
        -
    20. What happens during Place and Route?
        -
    21. What is a SERDES transceiver and where are they used?
        -
    22. What is the purpose of a DSP tile in an FPGA?
        - 
    23. What projects have you done?  What technologies have you worked with?
        -
    24. Be prepared to talk in detail about your own experience using FPGAs! Have an interesting project to discuss.  Bonus points if you put a link to a GitHub repository on your resume and show your source code.

    

## Book Notes
- [Book Link](https://learning.oreilly.com/library/view/digital-integrated-circuit/9780124080591/B9780124080591000020/B9780124080591000020.xhtml#s0010)

## Chapter 2: Bottom-up Design

- **Tri-state driver functions**
    * name   | control = 0  | control = 1  |
    * bufifo | out = in     | out = high-Z |
    * bufif1 | out = high-Z | out = in     |
    * notif0 | out = in-not | out = high-Z |
    * notif1 | out = high-Z | out = in-not |

- **Verilog Boolean Operators**
    * nand #3 G1(OUT, A, B, C);   //'#3' is the time unit delay. 
    * and A1(AND_OUT, A, B);
    * or O1(OR_OUT, A, B);
    * xor X1(XOR_OUT, A, B);
    * nand N1(NAND_OUT, A, B);
    * nor N2(NOR_OUT, A, B);
    * xnor X2(XNOR_OUT, A, B);
    * not N3(NOT_OUT, A);
    * buf B1(BUF_OUT, A);
    * bufif0 B2(B_I_0, A, Control);
    * bufif1 B3(B_I_1, A, Control);
    * notif B4(N_I_0, A, Control);
    * notif1 B5(N_I_1, A, Control);
    * Three identical outputs tracking one output
        - buf BIGBUF(O1, O2, O3, A);

- **Verilog Radices**
    * b = Binary
    * o = Octal
    * d = Decimal
    * h = Hexadecimal
    * A = 1'b0;  //One binary bit with value of 0
    * BYTEBUS = 8'HAA // eight-bit hex data with binary (10101010)

- **Timescale Units**
    * 1 ns / 1 ns = time unit / precision
    * only the numbers 1 , 10, and 100 can be used in `timescale 1 ns / 1ns
    * s = Seconds
    * ms = milliseconds
    * us = microseconds
    * ns = Nanoseconds
    * ps = picoseconds
    * fs = femoseconds
    * in SysVerilog use: timeunit 1ns; timeprecision 10ps;

## Chapter 3: Blocks, Variables, and Operators
- RTL = Register Transfer Level
- **Edge Specifiers**
    * always_ff @(posedge CLOCK, negedge RESET) //System Verilog
    * always @(posedge CLOCK, negedge RESET) //Verilog 2001
    * always @(posedge CLOCK or negedge RESET) //Verilog 95

- **Continuous Assignments**
    * Not Recomended due to Simulation Time increase.
    * Systemverilog example
    input A, B, CARRY_IN;
    output wire SUM, CARRY_OUT;
    assign SUM = DATA1 + DATA2

- **Implicit Continuous Assignments**
    * Avoid
    * Systemverilog example
    input [7:0] DATA1, DATA2;
    output wire [8:0] SUM = DATA1 + DATA2

- **Functional Blocks: always and initial**

