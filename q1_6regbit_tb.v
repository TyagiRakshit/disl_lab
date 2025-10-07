//q1 6bit register testbench code
`timescale 1ns/1ns 
`include "q1_6regbit.v"
module reg6bit_tb();
reg [5:0] I;   // Register for the input data
reg clk;       // Register for the clock signal
wire [5:0] A;  // Wire for the output data
reg6bit dut (
    .I(I), 
    .clk(clk), 
    .A(A)
);
initial begin
    clk = 0;
    forever #20 clk = ~clk; 
end
initial begin
    $dumpfile("reg6bit_tb.vcd");
    $dumpvars(0, reg6bit_tb);
    #5;
    I = 6'd63;
    $display("Time=%0t: I set to %d (%b)", $time, I, I);
    #40;
    I = 6'd21;
    $display("Time=%0t: I set to %d (%b)", $time, I, I);
    #40;
    I = 6'd34;
    $display("Time=%0t: I set to %d (%b)", $time, I, I);
    #40;
    $display("Time=%0t: Test complete. Final A=%d (%b)", $time, A, A);
    #5;
    $finish;
end
always @(A) begin
    $display("Time=%0t: Register A changed to %d (%b)", $time, A, A);
end
endmodule
