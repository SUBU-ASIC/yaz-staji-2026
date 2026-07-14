// Bu modül dýþarýdan gelen 2 sayýyý (4 bit) karþýlaþtýrýr.
module comparate_data_flow (
    input [3:0] sayi_a,       // 4 bitlik birinci sayý girer
    input [3:0] sayi_b,       // 4 bitlik ikinci sayý girer
    output d_esit,        // Sayýlar eþitse 1 
    output d_buyuk,       // sayi_a, sayi_b'den büyükse 1 
    output d_kucuk        // sayi_a, sayi_b'den küçükse 1 
);

    // En basit mantýkla karþýlaþtýrmalarý yapýp çýkýþlara aktarýyoruz
    assign d_esit  = (sayi_a == sayi_b);
    assign d_buyuk = (sayi_a > sayi_b);
    assign d_kucuk = (sayi_a < sayi_b);

endmodule
