`timescale 1ns / 1ps

module comparator_structural (
    input [3:0] a,
    input [3:0] b,
    output esit,
    output buyuk,
    output kucuk
);
    wire [3:0] x;
    wire [3:0] not_a;
    wire [3:0] not_b;
    wire [3:0] b_term;
    wire [3:0] k_term;

    // Bit bit XNOR kapisi
    assign x[3] = ~(a[3] ^ b[3]);
    assign x[2] = ~(a[2] ^ b[2]);
    assign x[1] = ~(a[1] ^ b[1]);
    assign x[0] = ~(a[0] ^ b[0]);

    // Hepsi esitse esit = 1
    assign esit = x[3] & x[2] & x[1] & x[0];

    // Degil kapilari
    assign not_a = ~a;
    assign not_b = ~b;

    // buyuk logic (a > b)
    assign b_term[3] = a[3] & not_b[3];
    assign b_term[2] = x[3] & a[2] & not_b[2];
    assign b_term[1] = x[3] & x[2] & a[1] & not_b[1];
    assign b_term[0] = x[3] & x[2] & x[1] & a[0] & not_b[0];
    assign buyuk = b_term[3] | b_term[2] | b_term[1] | b_term[0];

    // kucuk logic (a < b)
    assign k_term[3] = not_a[3] & b[3];
    assign k_term[2] = x[3] & not_a[2] & b[2];
    assign k_term[1] = x[3] & x[2] & not_a[1] & b[1];
    assign k_term[0] = x[3] & x[2] & x[1] & not_a[0] & b[0];
    assign kucuk = k_term[3] | k_term[2] | k_term[1] | k_term[0];
endmodule