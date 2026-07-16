`timescale 1ns / 1ps

module top_modul (
    input clk,
    input reset,
    input [3:0] a,
    input [3:0] b,
    output [3:0] count
);
    wire w_esit, w_buyuk, w_kucuk;
     dataflow karsilastir(
        .a(a),
        .b(b),
        .esit(w_esit),
        .buyuk(w_buyuk),
        .kucuk(w_kucuk)
    );
    asagi_yukari sayac (
        .clk(clk),
        .reset(reset),
        .buyuk(w_buyuk),
        .kucuk(w_kucuk),
        .esit(w_esit),
        .count(count)
    );

endmodule