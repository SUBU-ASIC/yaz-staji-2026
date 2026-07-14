`timescale 1ns / 1ps
module karsilastiricili_up_down_sayac(
        input clk,reset,
        input [3:0]a1,b1,
        output reg[3:0]count
    );
    wire esit1,kucuk1,buyuk1;
    comparator_dataflow comp(
    .a(a1),
    .b(b1),
    .esit(esit1),
    .buyuk(buyuk1),
    .kucuk(kucuk1)
    );
    always@(posedge clk or posedge reset)begin
    
    if(reset)begin
    count<=4'd0;
    end
    else if(buyuk1)begin
        count<=count+1'b1;
    end
    else if(esit1)begin
    count<=count;
    end
    else if(kucuk1)begin
    count<=count-1'b1;
    end
    end
endmodule
