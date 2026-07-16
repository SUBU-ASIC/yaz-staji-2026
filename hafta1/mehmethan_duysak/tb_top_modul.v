`timescale 1ns / 1ps

module tb_top_modul();

    reg clk;
    reg reset;
    reg [3:0] a;
    reg [3:0] b;
    wire [3:0] count;
    
    top_modul uut (
        .clk(clk),
        .reset(reset),
        .a(a),
        .b(b),
        .count(count)
    );
    always #5 clk = ~clk;

    initial begin
        clk = 0;
        reset = 1; 
        a = 4'd0;
        b = 4'd0;

        #15; 
        reset = 0; 
 
        a = 4'd8; b = 4'd3; 
        #40; 
   
        a = 4'd2; b = 4'd5; 
        #40;
  
        a = 4'd7; b = 4'd7; 
        #40;

        reset = 1; 
        #10;
        reset = 0; 
        #20;

        $finish; 
    end

endmodule