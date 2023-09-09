module testbench_datapath;

  reg clk = 0;
  reg reset = 0;
  reg PCSrc = 0;
  wire [31:0] PC;

  // Instantiate the datapath module
  datapath uut (
    .clk(clk),
    .reset(reset),
    .PCSrc(PCSrc),
    .PC(PC)
  );

  // Clock generation
  always #5 clk = ~clk;

  // Stimulus generation
  initial begin
    $display("Starting datapath module testbench");

    // Initialize reset to reset the datapath
    reset = 1;
    #10 reset = 0;

    // Test with different values of PCSrc and ImmExt
    PCSrc = 0;
    #10;
    
    PCSrc = 1;
    #10;

    // You can add more test cases here by changing PCSrc and ImmExt values
    
    $finish;
  end

  initial begin 
    $dumpfile("tb_datapath.vcd");
    $dumpvars(0);
  end

endmodule
