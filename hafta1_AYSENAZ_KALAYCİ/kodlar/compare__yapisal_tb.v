`timescale 1ns / 1ps

module compare_yapisal_tb;
    reg [3:0] sayi_a;
    reg [3:0] sayi_b;
    wire d_esit;

    // Test edilecek yapýsal modül çaðrýlýyor
    compare_yapisal uut (
        .sayi_a(sayi_a),
        .sayi_b(sayi_b),
        .durum_esit(d_esit) // Eðer compare_yapisal.v içinde çýkýþ ismini farklý verdiysen burayý onunla deðiþtir
    );

    initial begin
        // Senaryo 1: Giriþler eþit (Çýkýþ 1 olmalý)
        sayi_a = 4'd12; sayi_b = 4'd12; #10;
        
        // Senaryo 2: Giriþler farklý (Çýkýþ 0 olmalý)
        sayi_a = 4'd10; sayi_b = 4'd2;  #10;
        
        $finish;
    end
endmodule