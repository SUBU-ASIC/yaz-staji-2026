`timescale 1ns / 1ps

module comparate_df_tb; // Vivado'da oluþturduðun yeni modül ismi
    reg [3:0] sayi_a;
    reg [3:0] sayi_b;
    wire d_esit;
    wire d_buyuk;
    wire d_kucuk;

    // Test edilecek tasarým modülü çaðrýlýyor
    comparate_data_flow uut (
        .sayi_a(sayi_a),
        .sayi_b(sayi_b),
        .d_esit(d_esit),
        .d_buyuk(d_buyuk),
        .d_kucuk(d_kucuk)
    );

    initial begin //1 kez calýsacak
        // Senaryo 1: Sayýlar eþit
        sayi_a = 4'd5; sayi_b = 4'd5; #10;
        
        // Senaryo 2: A sayýsý büyük
        sayi_a = 4'd9; sayi_b = 4'd4; #10;
        
        // Senaryo 3: B sayýsý büyük
        sayi_a = 4'd2; sayi_b = 4'd7; #10;
        
        $finish;
    end
endmodule