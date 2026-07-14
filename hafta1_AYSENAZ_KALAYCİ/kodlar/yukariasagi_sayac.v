// Bu modül, karþýlaþtýrýcýdan gelen sinyallere göre yukarý veya aþaðý sayar.
module yukariasagi_sayac (
    input saat,               // Saat sinyali (clk)
    input sifirla,            // Sayacý sýfýrlayan reset sinyali
    input [3:0] sayi_a,       // Karþýlaþtýrýcýya gidecek sayý A
    input [3:0] sayi_b,       // Karþýlaþtýrýcýya gidecek sayý B
    output reg [3:0] sayac_degeri // sayaç çýkýþý
);

    // Karþýlaþtýrýcý bloðundan gelen sonuçlarý buraya baðlýyoruz
    wire s_esit, s_buyuk, s_kucuk;

    // modülünü yeni sinyal isimleriyle çaðýr
    comparate_data_flow karsilastirici_blok (
        .sayi_a(sayi_a), 
        .sayi_b(sayi_b), 
        .d_esit(s_esit), 
        .d_buyuk(s_buyuk), 
        .d_kucuk(s_kucuk)
    );

    // Saat sinyalinin her yükselen kenarýnda (posedgede) çalýþacak blok
    always @(posedge saat) begin
        if (sifirla == 1'b1) begin
            sayac_degeri <= 4'b0000; // Reset aktifse sayacý sýfýrla 4 býtlýk býnary sayý 0000
        end 
        else begin
            if (s_buyuk == 1'b1)
             begin
                sayac_degeri <= sayac_degeri + 1'b1; // A > B ise yukarý say
            end 
            else if (s_kucuk == 1'b1) begin
                sayac_degeri <= sayac_degeri - 1'b1; // A < B ise aþaðý say
            end 
            else if (s_esit == 1'b1) begin
                sayac_degeri <= sayac_degeri;        // Eþitse deðerini koru
            end
        end
    end

endmodule