`timescale 1ns / 1ps
module comparator_dataflow(
    input [3:0]a,b,

    output esit,buyuk,kucuk);
assign esit=(a==b);
assign buyuk=(a>b);
assign kucuk=(a<b);
 
endmodule

