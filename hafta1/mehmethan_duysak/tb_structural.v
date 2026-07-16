`timescale 1ns / 1ps

module tb_comparator();

    reg [3:0] a;
    reg [3:0] b;
    wire esit, buyuk, kucuk;
    
    structural uut (
        .a(a), 
        .b(b), 
        .esit(esit), 
        .buyuk(buyuk), 
        .kucuk(kucuk)
    );

    initial begin
       
        a = 4'd5;  b = 4'd5;  #10; 
        a = 4'd8;  b = 4'd3;  #10; 
        a = 4'd2;  b = 4'd10; #10; 
        a = 4'd15; b = 4'd15; #10; 
        
        $finish;
    end

endmodule