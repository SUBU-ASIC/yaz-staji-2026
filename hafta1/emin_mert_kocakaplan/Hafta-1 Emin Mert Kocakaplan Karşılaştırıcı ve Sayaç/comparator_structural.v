`timescale 1ns / 1ps

module comparator_structural(
    input [3:0]a,[3:0]b,
    output esit,buyuk,kucuk
    );
wire b3,e3,k3,b2,e2,k2,b1,e1,k1,b0,e0,k0;
comparator_1bit co_3(

.x(a[3]),
.y(b[3]),
.b(b3),
.e(e3),
.k(k3)

);
comparator_1bit co_2(

.x(a[2]),
.y(b[2]),
.b(b2),
.e(e2),
.k(k2)

);
comparator_1bit co_1(

.x(a[1]),
.y(b[1]),
.b(b1),
.e(e1),
.k(k1)

);
comparator_1bit co_0(

.x(a[0]),
.y(b[0]),
.b(b0),
.e(e0),
.k(k0)

);
assign buyuk=b3|e3&b2|e3&e2&b1|e3&e2&e1&b0;
assign esit=e3&e2&e1&e0;
assign kucuk=k3|e3&k2|e3&e2&k1|e3&e2&e1&k0;
    
endmodule

