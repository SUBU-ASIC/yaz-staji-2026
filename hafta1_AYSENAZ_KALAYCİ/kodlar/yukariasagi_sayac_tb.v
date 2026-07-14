`timescale 1ns / 1ps

module yukariasagi_sayac_tb;

    // Giriþ sinyalleri (reg olarak tanýmla)
    reg saat;
    reg sifirla;
    reg [3:0] sayi_a;
    reg [3:0] sayi_b;

    // Çýkýþ sinyali (wire olarak tanýmlýyoruz)
    wire [3:0] sayac_degeri;

    // Test edeceðimiz ana modülü (unit under test) baglanACAK
    yukariasagi_sayac uut (
        .saat(saat), 
        .sifirla(sifirla), 
        .sayi_a(sayi_a), 
        .sayi_b(sayi_b), 
        .sayac_degeri(sayac_degeri)
    );

    // 10ns periyotlu saat sinyali üretilecek kýsým
    always #5 saat = ~saat;

    initial begin
        // Baþlangýç deðerleri
        saat = 0;
        sifirla = 1;
        sayi_a = 4'b0000;
        sayi_b = 4'b0000;

        // 20ns boyunca reset (sifirla) aktif kalsýn
        #20;
        sifirla = 0;

        // A > B (Yukarý Saymasý Lazým) ---
        // A = 8, B = 3 -> d_buyuk aktif olacak, sayaç yukarý sayacak
        sayi_a = 4'd8;
        sayi_b = 4'd3;
        #80; // 80ns boyunca bu durumda beklesin (sayaç artacak)

        //  A < B (Aþaðý Saymasý Lazým) ---
        // A = 2, B = 6 -> d_kucuk aktif olacak, sayaç aþaðý sayacak
        sayi_a = 4'd2;
        sayi_b = 4'd6;
        #80; // 80ns boyunca bu durumda beklesin (sayaç azalacak)

        //  A == B (Deðerini Korumasý Lazým)
        // A = 5, B = 5 -> d_esit aktif olacak, sayaç duracak
        sayi_a = 4'd5;
        sayi_b = 4'd5;
        #50;
        $finish;
    end
      
endmodule
