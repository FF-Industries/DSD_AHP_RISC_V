module testbench_extend;

  reg [31:7] instr;
  reg [1:0] immsrc;
  wire [31:0] immext;

  
  extend uut (
    .instr(instr),
    .immsrc(immsrc),
    .immext(immext)
  );

  reg clk = 0;
  always #5 clk = ~clk;

  initial begin
    $display("Starting extend module testbench");

    // Test I-type
    instr = 32'h12345678;
    immsrc = 2'b00;
    #10;
    
    // Test S-type
    instr = 32'h9ABCDEF0;
    immsrc = 2'b01;
    #10;
    
    // Test B-type
    instr = 32'hFEDCBA09;
    immsrc = 2'b10;
    #10;
    
    // Test J-type
    instr = 32'h87654321;
    immsrc = 2'b11;
    #10;

    
    $finish;
  end
  

endmodule
