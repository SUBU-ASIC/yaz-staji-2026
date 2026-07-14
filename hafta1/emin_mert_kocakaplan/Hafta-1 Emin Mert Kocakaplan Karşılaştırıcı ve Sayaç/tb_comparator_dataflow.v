`timescale 1ns / 1ps

module tb_comparator_dataflow();
reg [3:0]ax,bx;
wire buyuk1,kucuk1,esit1;

comparator_dataflow uut(
.a(ax),
.b(bx),
.buyuk(buyuk1),
.kucuk(kucuk1),
.esit(esit1)
);
initial begin
ax[3:0]=4'b1000;
bx[3:0]=4'b0001;
#10;
ax[3:0]=4'b0100;
bx[3:0]=4'b0010;
#10;
ax[3:0]=4'b1000;
bx[3:0]=4'b1000;
#10;
ax[3:0]=4'b0001;
bx[3:0]=4'b1101;
#10;
$finish;
end
endmodule
