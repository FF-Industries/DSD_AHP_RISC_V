module flopr #(parameter WIDTH = 8)
(
    input  wire clk,
    input  wire reset,
    input  wire [WIDTH-1:0] d,
    output reg [WIDTH-1:0] q // Use wire
);

    always @(posedge clk or posedge reset)
    begin
        if (reset)
            q <= 'b0;
        else
            q <= d;
    end

endmodule

