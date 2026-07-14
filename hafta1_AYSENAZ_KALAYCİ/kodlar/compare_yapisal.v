module compare_yapisal (
    input [3:0] sayi_a,
    input [3:0] sayi_b,
    output d_esit
);
    // Her bir biti karþýlýklý XNOR alýp, aralarýný AND ile baðlýyoruz.
    assign d_esit = (~(sayi_a[3] ^ sayi_b[3])) & 
                    (~(sayi_a[2] ^ sayi_b[2])) & 
                    (~(sayi_a[1] ^ sayi_b[1])) & 
                    (~(sayi_a[0] ^ sayi_b[0]));
endmodule