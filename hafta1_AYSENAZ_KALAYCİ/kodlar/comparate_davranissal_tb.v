
`timescale 1ns / 1ps

module comparate_davranissal_tb;
    reg [3:0] sayi_a;
    reg [3:0] sayi_b;
    wire d_esit;
    wire d_buyuk;
    wire d_kucuk;

    // Davranýþsal (Behavioral) karþýlaþtýrýcý modülünü test etmek için çaðýrýyoruz
    comparate_davranissal uut (
        .sayi_a(sayi_a),
        .sayi_b(sayi_b),
        .d_esit(d_esit),
        .d_buyuk(d_buyuk),
        .d_kucuk(d_kucuk)
    );

    initial begin
        // Senaryo 1: Sayýlar eþit (Eþit çýkýþý 1 olmalý)
        sayi_a = 4'd3; sayi_b = 4'd3; #10;
        
        // Senaryo 2: A sayýsý büyük (Büyük çýkýþý 1 olmalý)
        sayi_a = 4'd8; sayi_b = 4'd2; #10;
        
        // Senaryo 3: B sayýsý büyük (Küçük çýkýþý 1 olmalý)
        sayi_a = 4'd1; sayi_b = 4'd5; #10;
        
        $finish;
    end
endmodule