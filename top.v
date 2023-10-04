module top(input wire clk, reset,
 output reg [31:0] WriteData, DataAdr,
 output reg MemWrite);
 reg [31:0] PC, Instr, ReadData;
 // instantiate processor and memories
 riscvsingle rvsingle(clk, reset, PC, Instr, MemWrite,
DataAdr, WriteData, ReadData);
 imem imem1(PC, Instr);
 dmem dmem1(clk, MemWrite, DataAdr, WriteData, ReadData);
endmodule
