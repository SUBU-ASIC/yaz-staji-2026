`timescale 1ns / 1ps

module comparator_behavioral(
    input [3:0] a,
    input [3:0] b,
    output reg esit,
    output reg buyuk,
    output reg kucuk
);
    always @(*) begin
        esit  = 1'b0;
        buyuk = 1'b0;
        kucuk = 1'b0;
        
        if (a == b)
            esit = 1'b1;
        else if (a > b)
            buyuk = 1'b1;
        else
            kucuk = 1'b1;
    end
endmodule