module adder(input wire [31:0] a, b,
 output reg [31:0] y);
always@(*)
 y=a+b;
endmodule
