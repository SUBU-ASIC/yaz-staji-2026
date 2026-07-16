`timescale 1ns / 1ps

module asagi_yukari (
    input clk,
    input reset,
    input buyuk,
    input kucuk,
    input esit,
    output reg [3:0] count
);

    always @(posedge clk) begin
        if (reset == 1) begin
            count <= 4'b0000;
        end 
        else if (buyuk == 1) begin
            count <= count + 1;
        end 
        else if (kucuk == 1) begin
            count <= count - 1;
        end 
        else if (esit == 1) begin
            count <= count;
        end
    end

endmodule