//if else kullanarak sayı karşılaştıran modül
module comparate_davranissal (
    input [3:0] sayi_a,       // 1.sayı girişi
    input [3:0] sayi_b,       // 2.sayı girişi
    output reg d_esit,       
    output reg d_buyuk,       
    output reg d_kucuk        // always(yani clock ile çalışan sıralı devre) içinde değer atandığı için "reg" tanımladık
);

    // Girişlerden biri (sayi_a veya sayi_b) değiştiğinde burası çalışacak demek
    always @(sayi_a or sayi_b)
     begin
        if (sayi_a == sayi_b)
         begin
            d_esit  = 1'b1; // Eşitlik durumu aktif
            d_buyuk = 1'b0;
            d_kucuk = 1'b0;
        end 
        else if (sayi_a > sayi_b) begin
            d_esit  = 1'b0;
            d_buyuk = 1'b1; //2lik tabanda 1 bitlikte Büyüklük durumu aktif
            d_kucuk = 1'b0;
        end 
        else begin
            d_esit  = 1'b0;
            d_buyuk = 1'b0;
            d_kucuk = 1'b1; 
        end
    end

endmodule