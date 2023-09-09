// Code your testbench here
// or browse Examples
module testbench;

  reg [31:0] a;
  wire [31:0] rd;

  // Instantiate the imem module
  imem uut (
    .a(a),
    .rd(rd)
  );

  // Clock generation
  reg clk = 0;
  always #5 clk = ~clk;

  // Stimulus generation
  initial begin
    $display("Starting memory read testbench");

    // Perform memory reads at different addresses
    a = 32'd00000000;
    #10;
    
    a = 32'd00000004;
    #10;
    
    a = 32'd00000008;
    #10;
    a = 32'd00000012;
    #10;
    
    a = 32'd00000016;
    #10;
    
    a = 32'd00000020;
    #10;
    a = 32'd00000024;
    #10;
    
    a = 32'd00000028;
    #10;
    
    a = 32'd00000032;
    #10;
    a = 32'd00000036;
    #10;
    
    a = 32'd00000040;
    #10;
    
    a = 32'd00000044;
    #10;
    a = 32'd00000048;
    #10;
    
    a = 32'd00000052;
    #10;
    
    a = 32'd00000056;
    #10;
    a = 32'd00000060;
    #10;
    
    a = 32'd00000064;
    #10;
    
    a = 32'd00000068;
    #10;
    a = 32'd00000072;
    #10;
    
    a = 32'd00000076;
    #10;
    
    a = 32'd00000080;
    #10;
    a = 32'd00000084;
    #10;
    
    a = 32'd00000088;
    #10;
    
    a = 32'd00000092;
    #10;
    a = 32'd00000096;
    #10;
    
    a = 32'd000000100;
    #10;
    
    a = 32'd00000104;
    #10;
    
    a = 32'd00000108;
    #10;
    
    a = 32'd00000112;
    #10;
    
    a = 32'd00000116;
    #10;
    a = 32'd00000120;
    #10;
    
    a = 32'd00000124;
    #10;
    
    a = 32'd00000128;
    #10;
    a = 32'd00000132;
    #10;
    
    a = 32'd00000136;
    #10;
    
    a = 32'd00000140;
    #10;
    a = 32'd00000144;
    #10;
    
    a = 32'd00000148;
    #10;
    
    a = 32'd00000152;
    #10;
    a = 32'd00000156;
    #10;
    
    a = 32'd00000160;
    #10;
    
    a = 32'd00000164;
    #10;
    a = 32'd00000168;
    #10;
    
    a = 32'd00000172;
    #10;
    
    a = 32'd00000176;
    #10;
    a = 32'd00000180;
    #10;
    
    a = 32'd00000184;
    #10;
    
    a = 32'd00000188;
    #10;
    a = 32'd00000192;
    #10;
    
    a = 32'd00000196;
    #10;
    
    a = 32'd00000200;
    #10;
    a = 32'd00000204;
    #10;
    
    a = 32'd00000208;
    #10;
    
    a = 32'd00000212;
    #10;
    a = 32'd00000216;
    #10;
    
    a = 32'd00000220;
    #10;
    
    a = 32'd00000224;
    #10;
    a = 32'd00000228;
    #10;
    
    a = 32'd00000232;
    #10;
    
    a = 32'd00000236;
    #10;
    a = 32'd00000240;
    #10;
    
    a = 32'd00000244;
    #10;
    
    a = 32'd00000248;
    #10;
    a = 32'd00000252;
    
    // You can add more test cases here by changing the address 'a'
    
    $finish;
  end

  // Monitor process
  always @(posedge clk) begin
    // Display the read data whenever a memory read occurs
    $display("Read data at address %h: %h", a, rd);
  end
  initial begin
$dumpfile("dump.vcd");
$dumpvars(0);
end


endmodule
