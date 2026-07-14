`timescale 1ns / 1ps

module tb_comparator_structural();
reg [3:0]ax;
reg [3:0]bx;


wire buyuk1,esit1,kucuk1;
comparator_structural co_1(

.a(ax),
.b(bx),
.buyuk(buyuk1),
.kucuk(kucuk1),
.esit(esit1)

);
initial begin
ax[3:0]=4'b1110;
bx[3:0]=4'b1010;
#10;
ax[3:0]=4'b1100;
bx[3:0]=4'b0010;
#10;
ax[3:0]=4'b0110;
bx[3:0]=4'b1000;
#10;
ax[3:0]=4'b1001;
bx[3:0]=4'b1001;
#10;
$finish;

end

endmodule
