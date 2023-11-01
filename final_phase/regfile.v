module regfile (
  input wire clk,
  input wire RegWrite,
  input wire [4:0] rs1_addr,
  input wire [4:0] rs2_addr,
  input wire [4:0] rd_addr,
  input wire [31:0] write_data,
  output reg [31:0] rs1_data,
  output reg [31:0] rs2_data
  
);
  reg [31:0] registers [0:31]; // Array of registers

  // Read data from the registers
  assign rs1_data = registers[rs1_addr];
  assign rs2_data = registers[rs2_addr];

  // Write data to the registers
  always @(posedge clk) begin
    if (RegWrite) begin
      registers[rd_addr] <= write_data;
    end
  end
endmodule
