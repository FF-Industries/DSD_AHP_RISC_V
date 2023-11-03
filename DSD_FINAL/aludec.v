module aludec(input wire opb5,
 input wire [2:0] funct3,
 input wire funct7b5,
 input wire [1:0] ALUOp,
 output reg [2:0] ALUControl);
 always@(*)
 case(ALUOp)
 2'b00: ALUControl = 3'b000; 
 2'b01: ALUControl = 3'b001; 
 default: case(funct3) 
 3'b000: if (funct7b5 & opb5)
 ALUControl = 3'b001; 
 else
 ALUControl = 3'b000; 
 3'b010: ALUControl = 3'b101; 
 3'b110: ALUControl = 3'b011; 
 3'b111: ALUControl = 3'b010; 
 endcase
 endcase
endmodule
