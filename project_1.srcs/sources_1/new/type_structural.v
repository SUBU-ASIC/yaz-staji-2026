module type_structural(
    input [3:0] a,
    input [3:0] b,
    output esit,
    output buyuk,
    output kucuk
);

    wire e3, e2, e1, e0; 
    wire nb3, nb2, nb1, nb0; 
    wire na3, na2, na1, na0; 

    // Eşitlik (XNOR)
    xnor (e3, a[3], b[3]);
    xnor (e2, a[2], b[2]);
    xnor (e1, a[1], b[1]);
    xnor (e0, a[0], b[0]);
    and (esit, e3, e2, e1, e0); 

    // Değil (NOT) Kapıları
    not (nb3, b[3]); not (nb2, b[2]); not (nb1, b[1]); not (nb0, b[0]);
    not (na3, a[3]); not (na2, a[2]); not (na1, a[1]); not (na0, a[0]);

    // Büyüktür (a > b)
    wire g3, g2, g1, g0;
    and (g3, a[3], nb3);
    and (g2, e3, a[2], nb2);
    and (g1, e3, e2, a[1], nb1);
    and (g0, e3, e2, e1, a[0], nb0);
    or  (buyuk, g3, g2, g1, g0);

    // Küçüktür (a < b)
    wire k3, k2, k1, k0;
    and (k3, na3, b[3]);
    and (k2, e3, na2, b[2]);
    and (k1, e3, e2, na1, b[1]);
    and (k0, e3, e2, e1, na0, b[0]);
    or  (kucuk, k3, k2, k1, k0);

endmodule