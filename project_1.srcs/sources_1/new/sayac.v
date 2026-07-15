module sayac(
    input clk,
    input reset,
    input buyuk,
    input kucuk,
    input esit,
    output reg [3:0] count
);

    always @(posedge clk) begin
        if (reset) begin
            count <= 4'b0000;
        end else if (buyuk) begin
            count <= count + 1;
        end else if (kucuk) begin
            count <= count - 1;
        end else if (esit) begin
            count <= count;end
    end

endmodule