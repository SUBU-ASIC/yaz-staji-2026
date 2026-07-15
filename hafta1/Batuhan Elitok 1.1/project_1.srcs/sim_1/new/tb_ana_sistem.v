`timescale 1ns / 1ps

module tb_ana_sistem();
    reg clk;
    reg reset;
    reg [3:0] test_a;
    reg [3:0] test_b;
    wire [3:0] out_count;

    ana_sistem test (
        .clk(clk),
        .reset(reset),
        .a(test_a),
        .b(test_b),
        .count(out_count)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk; 
    end

    initial begin
        reset = 1; test_a = 4'd0; test_b = 4'd0;
        #10; 
        reset = 0;

        // Durum 1: a > b (Sayaç Artar)
        test_a = 4'd5; test_b = 4'd2;
        #30;

        // Durum 2: a < b (Sayaç Azalır)
        test_a = 4'd1; test_b = 4'd8;
        #20;

        // Durum 3: a == b (Sayaç Durur)
        test_a = 4'd4; test_b = 4'd4;
        #30;
        
        $finish;
    end
endmodule