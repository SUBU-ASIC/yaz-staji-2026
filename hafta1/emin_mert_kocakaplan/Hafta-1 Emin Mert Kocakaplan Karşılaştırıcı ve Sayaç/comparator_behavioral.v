`timescale 1ns / 1ps

module comparator_behavioral(
    input [3:0]a,[3:0]b,
    output reg esit,buyuk,kucuk

    );
    always@(*) begin
    if(a<b)begin 
    
    kucuk=1'b1;
    buyuk=1'b0;
    esit=1'b0;
    end
    else if(a>b)begin 
    
    buyuk=1'b1;
    kucuk=1'b0;
    esit=1'b0;
    
    end
    else begin
       
        kucuk=1'b0;
        buyuk=1'b0;
        esit=1'b1;

    end
    end
endmodule
