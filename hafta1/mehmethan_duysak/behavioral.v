`timescale 1ns / 1ps

module behavioral(
    input [3:0] a,
    input [3:0] b,
    output reg buyuk, 
    output reg esit, 
    output reg kucuk
    
);
    always @(*) begin
        if (a == b) begin
            esit = 1; buyuk = 0; kucuk = 0;
        end 
        else if (a > b) begin
            esit = 0; buyuk = 1; kucuk = 0;
        end 
        else begin
            esit = 0; buyuk = 0; kucuk = 1;
        end
    end

endmodule


