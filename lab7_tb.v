`timescale 1ns/1ps
module testbench();
integer i;
reg [3:0] x;
reg clk = 0;
wire z;
patternDetector dut (.x(x), .clk(clk), .z(z));
	always for(i = 0; i < 16; i = i+1)
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

