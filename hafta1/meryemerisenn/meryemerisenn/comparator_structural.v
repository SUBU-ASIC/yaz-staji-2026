module comparator_structural (
    input  [3:0] a,
    input  [3:0] b,
    output       esit,
    output       buyuk,
    output       kucuk
);

    wire x3, x2, x1, x0;
    
    
    xnor g3(x3, a[3], b[3]);
    xnor g2(x2, a[2], b[2]);
    xnor g1(x1, a[1], b[1]);
    xnor g0(x0, a[0], b[0]);
    
    
    and and_esit(esit, x3, x2, x1, x0);
    
    wire b3, b2, b1, b0;
    wire not_b3, not_b2, not_b1, not_b0;
    
    not n3(not_b3, b[3]);
    not n2(not_b2, b[2]);
    not n1(not_b1, b[1]);
    not n0(not_b0, b[0]);
    
    and a3_b3(b3, a[3], not_b3);                       
    and a2_b2(b2, x3, a[2], not_b2);                   
    and a1_b1(b1, x3, x2, a[1], not_b1);               
    and a0_b0(b0, x3, x2, x1, a[0], not_b0);           
    
    or or_buyuk(buyuk, b3, b2, b1, b0);
    
    wire not_esit, not_buyuk;
    not n_esit(not_esit, esit);
    not n_buyuk(not_buyuk, buyuk);
    and and_kucuk(kucuk, not_esit, not_buyuk);

endmodule