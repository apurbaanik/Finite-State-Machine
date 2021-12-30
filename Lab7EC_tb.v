`timescale 1ns/1ps
module testbench();
integer i;
reg [15:0] x;
reg clk = 0;
wire z;
patternDetector dut (.x(x), .clk(clk), .z(z));
	always for(i = 0; i < 65536; i = i+1)
	begin
		{x} = i;
		#10;
	end
	always
	begin
		clk = ~clk;
		#5;
	end
endmodule

