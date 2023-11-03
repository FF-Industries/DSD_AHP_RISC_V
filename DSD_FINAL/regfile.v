module regfile (
  input wire clk,
input wire reset,
  input wire RegWrite,
  input wire [4:0] rs1_addr,
  input wire [4:0] rs2_addr,
  input wire [4:0] rd_addr,
  input wire [31:0] write_data,
  output reg [31:0] rs1_data,
  output reg [31:0] rs2_data
  
);
  reg [31:0] registers [0:31]; // Array of registers

  always@(*)
begin
  rs1_data = registers[rs1_addr];
  rs2_data = registers[rs2_addr];
end

  // Write data to the registers
  always@(posedge clk) begin
    if (RegWrite) begin
      registers[rd_addr] <= write_data;
    end
  end
  // Initial values of registers
  always@(posedge clk or posedge reset) begin
    if (reset) begin
            registers[0] <= 32'h00000000;
registers[1] <= 32'h00000000;
registers[2] <= 32'h00000000;
registers[3] <= 32'h00000000;
registers[4] <= 32'h00000000;
registers[5] <= 32'h00000000;
registers[6] <= 32'h00000000;
registers[7] <= 32'h00000000;
registers[8] <= 32'h00000000;
registers[9] <= 32'h00000000;
registers[10] <= 32'h00000000;
registers[11] <= 32'h00000000;
registers[12] <= 32'h00000000;
registers[13] <= 32'h00000000;
registers[14] <= 32'h00000000;
registers[15] <= 32'h00000000;
registers[16] <= 32'h00000000;
registers[17] <= 32'h00000000;
registers[18] <= 32'h00000000;
registers[19] <= 32'h00000000;
registers[20] <= 32'h00000000;
registers[21] <= 32'h00000000;
registers[22] <= 32'h00000000;
registers[23] <= 32'h00000000;
registers[24] <= 32'h00000000;
registers[25] <= 32'h00000000;
registers[26] <= 32'h00000000;
registers[27] <= 32'h00000000;
registers[28] <= 32'h00000000;
registers[29] <= 32'h00000000;
registers[30] <= 32'h00000000;
registers[31] <= 32'h00000000;

       
    end
end

endmodule
