`timescale 1ns / 1ps

module structural(
    input [3:0] a,
    input [3:0] b,
    output esit, buyuk, kucuk
);
    wire x3, x2, x1, x0;
    wire not_b3, not_b2, not_b1, not_b0;
    wire w1, w2, w3, w4;
    
    xnor (x3, a[3], b[3]);
    xnor (x2, a[2], b[2]);
    xnor (x1, a[1], b[1]);
    xnor (x0, a[0], b[0]);
    and  (esit, x3, x2, x1, x0);

    not (not_b3, b[3]);
    not (not_b2, b[2]);
    not (not_b1, b[1]);
    not (not_b0, b[0]);

    and (w1, a[3], not_b3);
    and (w2, x3, a[2], not_b2);
    and (w3, x3, x2, a[1], not_b1);
    and (w4, x3, x2, x1, a[0], not_b0);
    or  (buyuk, w1, w2, w3, w4);

    nor (kucuk, esit, buyuk);

endmodule