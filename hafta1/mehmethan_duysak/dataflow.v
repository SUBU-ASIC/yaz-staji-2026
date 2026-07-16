`timescale 1ns / 1ps


module dataflow(
    input [3:0] a,
    input [3:0] b,
    output esit, buyuk, kucuk
);
    assign kucuk = (a < b);
    assign buyuk = (a > b);
    assign esit = (a == b);
    
endmodule
