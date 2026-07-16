module counter_controlled (
    input        clk,
    input        rst,
    input  [3:0] a,
    input  [3:0] b,
    output reg [3:0] count
);

    wire esit;
    wire buyuk;
    wire kucuk;

    // Dataflow karþýlaþtýrýcýyý buraya baðlýyoruz
    comparator_dataflow comp_inst (
        .a(a),
        .b(b),
        .esit(esit),
        .buyuk(buyuk),
        .kucuk(kucuk)
    );

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            count <= 4'b0000;
        end else begin
            if (buyuk) begin
                count <= count + 1'b1;
            end else if (kucuk) begin
                count <= count - 1'b1;
            end else if (esit) begin
                count <= count;
            end
        end
    end

endmodule