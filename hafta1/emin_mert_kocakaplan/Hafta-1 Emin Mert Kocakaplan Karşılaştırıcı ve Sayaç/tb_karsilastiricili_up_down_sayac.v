`timescale 1ns / 1ps

module tb_karsilastiricili_up_down_sayac();
reg clk,reset;

reg [3:0]a1_tb,b1_tb;

wire [3:0]count_tb;

karsilastiricili_up_down_sayac uut(

.clk(clk),
.reset(reset),
.a1(a1_tb),
.b1(b1_tb),
.count(count_tb)
);

always #5 clk=~clk;
initial begin

        clk=1'b0;
        reset=1'b1;
        a1_tb=4'b0000;
        b1_tb=4'b0000;
        #30;
        reset=1'b0;
        
    a1_tb=4'b1001;
    b1_tb=4'b1111;
    #30;
    
a1_tb=4'b1101;
b1_tb=4'b1000;
#30;
        
        a1_tb=4'b1010;
        b1_tb=4'b1010;
        #30;
        
        a1_tb=4'b0100;
        b1_tb=4'b0011;
        #30;
    $finish;
end

endmodule
