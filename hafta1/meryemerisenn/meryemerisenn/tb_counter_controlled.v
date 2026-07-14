`timescale 1ns / 1ps

module tb_counter_controlled;

    reg clk;
    reg rst;
    reg [3:0] a;
    reg [3:0] b;
    wire [3:0] count;

    counter_controlled uut (
        .clk(clk),
        .rst(rst),
        .a(a),
        .b(b),
        .count(count)
    );

    
    always begin
        clk = 1'b0;
        #10;
        clk = 1'b1;
        #10;
    end

    initial begin
        rst = 1'b1;
        a = 4'd0;
        b = 4'd0;
        #25; 
        
        rst = 1'b0;
        
        
        a = 4'd8; 
        b = 4'd3; 
        #80; 

        
        a = 4'd5;
        b = 4'd5;
        #40; 

        
        a = 4'd2;
        b = 4'd6;
        #80; 

        
        rst = 1'b1;
        #20;
        rst = 1'b0;
        
        #40;
        $finish;
    end

endmodule