module patternDetector (input [3:0]x, input clk, output reg z);
parameter s0 = 1'b0, s1 = 1'b1;
reg [3:0] transition; 
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
		if((transition == 4'b1011) || (transition == 4'b0110) || (transition == 4'b0100))
			state <= s1;
		else
			state <= s0;
	end
endmodule