module testbench_datapath;

  reg clk = 0;
  reg reset = 0;
  reg PCSrc = 0;
  wire [31:0] PC;

  datapath uut (
    .clk(clk),
    .reset(reset),
    .PCSrc(PCSrc),
    .PC(PC)
  );

  always #5 clk = ~clk;

  initial begin
    $display("Starting datapath module testbench");

    reset = 1;
    #10 reset = 0;

    PCSrc = 0;
    #10;
    
    PCSrc = 1;
    #10;


    $finish;
  end

endmodule
