`timescale 1ns / 1ps

module comparator_behavioral (
    input [3:0] a,
    input [3:0] b,
    output reg esit,
    output reg buyuk,
    output reg kucuk
);

    always @(*) begin
        // default (varsayılan) değerler
        esit  = 1'b0;
        buyuk = 1'b0;
        kucuk = 1'b0;
        
        if (a > b) begin
            buyuk = 1'b1;
        end else if (a < b) begin
            kucuk = 1'b1;
        end else begin
            esit  = 1'b1;
        end
    end

endmodule
