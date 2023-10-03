module imem(
  input [31:0] a,
  output [31:0] rd
);
  reg [31:0] RAM[0:63];
initial begin
  $readmemh("memory.mem",RAM);
end
// Perform word-aligned read
  assign rd = RAM[a[31:2]];
endmodule


