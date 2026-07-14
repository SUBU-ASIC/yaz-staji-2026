`timescale 1ns / 1ps

module tb_comparator_behavioral();

    reg [3:0]ax,bx;

    wire buyuk1,esit1,kucuk1;
    
  comparator_behavioral uut(
  .a(ax),
  .b(bx),
  .buyuk(buyuk1),
  .kucuk(kucuk1),
  .esit(esit1)
  );
  initial begin
  
        ax=4'b1001;
        bx=4'b1001;
        #10;
    
    ax=4'b0010;
    bx=4'b1100;
    #10;
            ax=4'b1111;
            bx=4'b0011;
            #10;
    ax=4'b0000;
    bx=4'b0000;
    #10;
    $finish;
    
  
  end
endmodule
