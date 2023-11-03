module testbench;

reg clk;
reg reset;
reg [31:0] WriteData;
reg [31:0] DataAdr;
reg MemWrite;

// instantiate device to be tested
top dut(clk, reset, WriteData, DataAdr, MemWrite);

// initialize test
initial begin
    reset = 1;
    #22 reset = 0;
end

// generate clock to sequence tests
always begin
    #5 clk = 1;
    #5 clk = 0;
end

// check results
always @(negedge clk) begin
    if (MemWrite) begin
        if ((DataAdr === 32'h00000064) && (WriteData === 32'h00000019)) begin
            $display("Simulation succeeded");
            $stop;
        end else if (DataAdr !== 32'h00000060) begin
            $display("Simulation failed");
            $stop;
        end
    end
end

endmodule

