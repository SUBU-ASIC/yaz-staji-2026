`timescale 1ns / 1ps

module counter(
    input clk,
    input reset,
    input [3:0] a,
    input [3:0] b,
    output reg [3:0] count
);
    wire esit, buyuk, kucuk;

    comparator_dataflow comp (
        .a(a),
        .b(b),
        .esit(esit), 
        .buyuk(buyuk),
        .kucuk(kucuk)
    );

    always @(posedge clk) begin
        if (reset) begin
            count <= 4'b0000;
        end else begin
            if (buyuk) begin
                count <= count + 1; // a > b ise artır
            end else if (kucuk) begin
                count <= count - 1; // a < b ise azalt
            end
        end
    end
endmodule