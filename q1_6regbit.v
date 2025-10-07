//q1 6-bit register module verilog
`include "q1_dff.v"
module reg6bit(I, clk, A);
    input [5:0]I;
    input clk;
    output [5:0]A;
    
    // Flip-flop for bit 5 (MSB)
    dffp s5(I[5], clk, A[5]);
    
    // Flip-flop for bit 4
    dffp s4(I[4], clk, A[4]);
    
    // Flip-flop for bit 3
    dffp s3(I[3], clk, A[3]);
    
    // Flip-flop for bit 2
    dffp s2(I[2], clk, A[2]);
    
    // Flip-flop for bit 1
    dffp s1(I[1], clk, A[1]);
    
    // Flip-flop for bit 0 (LSB)
    dffp s0(I[0], clk, A[0]);
    
endmodule
