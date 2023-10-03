module datapath(
    input wire clk, 
    input wire reset,
    input wire PCSrc,
    output wire [31:0] PC 
);

    wire [31:0] PCNext, PCPlus4, PCTarget; 
    wire [31:0] ImmExt; 

    
    flopr #(32) pcreg(clk,reset,PCNext,PC);

    adder #(32) pcadd4(PC, 32'd4, PCPlus4);

adder #(32) pcaddbranch(PC,ImmExt, PCTarget);


    mux2 #(32) pcmux(PCPlus4, PCTarget, PCSrc, PCNext);

endmodule

