module datapath(
    input reg clk, 
    input reg reset,
    input reg PCSrc,
    output wire [31:0] PC // Changed reg to wire
);

    wire [31:0] PCNext, PCPlus4, PCTarget; // Changed reg to wire for these as well
    wire [31:0] ImmExt;  // NOTE: You still need to define or provide this somewhere!

    // next PC logic
    flopr #(32) pcreg(
        .clk(clk), 
        .reset(reset), 
        .d(PCNext), 
        .q(PC)
    );

    adder #(32) pcadd4( 
    .a(PC), 
    .b(32'd4), 
    .y(PCPlus4)
    );

adder #(32) pcaddbranch(
    .a(PC), 
    .b(ImmExt), 
    .y(PCTarget)
);


    mux2 #(32) pcmux(
        .d0(PCPlus4), 
        .d1(PCTarget), 
        .s(PCSrc), 
        .y(PCNext)
    );

endmodule

