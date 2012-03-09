// DE0 Board has a 50MHz clk on board
module clkDivSel( clkIn, clkOut, freq );

	input clkIn;
	input[25:0] freq;
	output clkOut;
	reg clkOut;
	reg [25:0] count1;
	
	initial begin
		count1 <= 0;
		clkOut <= 0;
	end
	
	always@(posedge clkIn) begin
		count1 <= count1 + 1;
		if( count1 == 26'd50000000/freq ) begin	
			clkOut <= ~clkOut;
			count1 <= 26'd0;
		end
	end
	
endmodule
