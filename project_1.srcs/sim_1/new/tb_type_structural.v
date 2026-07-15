`timescale 1ns / 1ps

module tb_type_structural();
    reg [3:0] test_a;
    reg [3:0] test_b;
    wire out_esit, out_buyuk, out_kucuk;

    type_structural uut (
        .a(test_a), .b(test_b),
        .esit(out_esit), .buyuk(out_buyuk), .kucuk(out_kucuk)
    );

    initial begin
        test_a = 4'b0101; test_b = 4'b0101; #10;
        test_a = 4'b1100; test_b = 4'b0011; #10;
        test_a = 4'b0010; test_b = 4'b1000; #10;
        $finish;
    end
endmodule