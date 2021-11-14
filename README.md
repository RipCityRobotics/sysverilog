#sysverilog

## Useful git Repos
1. [verilator](https://github.com/verilator/verilator)
2. [SystemVerilogReference](https://github.com/VerificationExcellence/SystemVerilogReference)
3. [clash-compiler](https://github.com/clash-lang/clash-compiler)
4. [hdmi](https://github.com/verilator/verilator)
5. [verible](https://github.com/chipsalliance/verible)
6. [vunit](https://github.com/VUnit/vunit)
7. [OpenLane](https://github.com/The-OpenROAD-Project/OpenLane)
8. [basic_vilog](https://github.com/pConst/basic_verilog)

## Useful Resources
1. [Icarus Verilog](http://iverilog.icarus.com/)
2. [fromReddit](https://www.reddit.com/r/FPGA/comments/omrnrk/list_of_useful_links_for_beginners_and_veterans/)
3. [Vivado Simulator Scripted flow](https://www.itsembedded.com/dhd/vivado_sim_1/)
4. [GNU Make](https://ftp.gnu.org/old-gnu/Manuals/make-3.79.1/html_chapter/make_6.html)
5. [Verilator Tutorial](https://www.itsembedded.com/dhd/verilator_1/)

***
## Book Notes
- [Book Link](https://learning.oreilly.com/library/view/digital-integrated-circuit/9780124080591/B9780124080591000020/B9780124080591000020.xhtml#s0010)

## Chapter 2: Bottom-up Design

### **Primitive instantiation**

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

- **Designing wiht primitives**
