`timescale 1ns / 1ps

module tb_dataflow;
    reg [3:0] a;
    reg [3:0] b;
    wire esit;
    wire buyuk;
    wire kucuk;

    comparator_dataflow uut (
        .a(a),
        .b(b),
        .esit(esit),
        .buyuk(buyuk),
        .kucuk(kucuk)
    );

    initial begin
        // A = B durumu
        a = 4'b1010; b = 4'b1010; #10;
        
        // A > B durumu
        a = 4'b1100; b = 4'b0100; #10;
        
        // A < B durumu
        a = 4'b0011; b = 4'b0111; #10;
        
        $finish;
    end
endmodule