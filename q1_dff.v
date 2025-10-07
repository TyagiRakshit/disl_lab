//lab 8 
//q1-> dff -> n bit register
//dff module
module dffp (D, Clock, Q);
    input D, Clock;
    output Q;
    reg Q;
    always @(posedge Clock)
        Q <= D;
endmodule

