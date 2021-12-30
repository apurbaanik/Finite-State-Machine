module patternDetector (input [15:0]x, input clk, output reg z);
parameter s0 = 1'b0, s1 = 1'b1;
reg [15:0] transition;
reg state = s0;
	always@ (posedge clk)
	begin
		transition <= x;
	end
	always@ (state)
	begin
		if(state == s0)
			z <= 0;
		else
			z <= 1;
	end
	always@ (transition)
	begin
		if(transition == 16'b0011100111000001)
			state <= s1;
		else
			state <= s0;
	end
endmodule