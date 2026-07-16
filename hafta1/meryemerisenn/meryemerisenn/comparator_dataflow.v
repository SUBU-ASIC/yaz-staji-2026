module comparator_dataflow (
    input  [3:0] a,
    input  [3:0] b,
    output       esit,
    output       buyuk,
    output       kucuk
);

    assign esit  = (a == b);
    assign buyuk = (a > b);
    assign kucuk = (a < b);

endmodule