
`timescale 1ns / 1ps

module tb_comparator;
    reg [3:0] a;
    reg [3:0] b;
    wire esit, buyuk, kucuk;


 comparator_behavioral uut (
        .a(a),
        .b(b),
        .esit(esit),
        .buyuk(buyuk),
        .kucuk(kucuk)
    );

    initial begin
        // Durum 1: Eþitlik testi
        a = 4'b1010; b = 4'b1010; #10;
        
        // Durum 2: a > b testi
        a = 4'b1100; b = 4'b0111; #10;
        
        // Durum 3: a < b testi
        a = 4'b0101; b = 4'b0110; #10;
        
        // Durum 4: Sýnýr deðerleri testi
        a = 4'b1111; b = 4'b0000; #10;
        
        // Durum 5: Son bit farkýyla a > b testi
        a = 4'b1001; b = 4'b1000; #10;

        $finish;
    end
endmodule