`timescale 1ns / 1ps
module comparator_1bit(
input x,y,
output b,k,e

    );
    assign e= ~(x^y);
    assign b= x&~y;
    assign k= ~x&y;
endmodule
