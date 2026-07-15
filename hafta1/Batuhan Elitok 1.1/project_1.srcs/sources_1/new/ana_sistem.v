module ana_sistem(
    input clk,
    input reset,
    input [3:0] a,
    input [3:0] b,
    output [3:0] count
);

    wire w_esit, w_buyuk, w_kucuk;

    type_dataflow karsilastirici (
        .a(a), 
        .b(b),
        .esit(w_esit), 
        .buyuk(w_buyuk), 
        .kucuk(w_kucuk)
    );

    sayac sayac_1 (
        .clk(clk),
        .reset(reset),
        .buyuk(w_buyuk),
        .kucuk(w_kucuk),
        .esit(w_esit),
        .count(count)
    );

endmodule