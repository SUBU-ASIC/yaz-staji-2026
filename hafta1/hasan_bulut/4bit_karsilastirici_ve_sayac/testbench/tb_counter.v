`timescale 1ns / 1ps

module tb_counter();
    reg clk;
    reg reset;
    reg [3:0] a;
    reg [3:0] b;
    wire [3:0] count;

    counter uut (
        .clk(clk),
        .reset(reset),
        .a(a),
        .b(b),
        .count(count)
    );

    always #5 clk = ~clk;

    initial begin
        clk = 0; reset = 1; a = 0; b = 0;
        #20; reset = 0;
        
        // a > b
        a = 4'd5; b = 4'd2;
        #50; 
        
        // a == b
        a = 4'd3; b = 4'd3;
        #40;
        
        // a < b
        a = 4'd1; b = 4'd8;
        #50;
        
        // Reset
        reset = 1;
        #20;
        
        $finish;
    end
endmodule