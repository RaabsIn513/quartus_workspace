module clkDiv( clkIn, clkOut );

	input clkIn;
	output clkOut;
	reg clkOut;
	reg [25:0] count1;
	
	initial begin
		count1 <= 0;
		clkOut <= 0;
	end
	
	always@(posedge clkIn) begin
		count1 <= count1 + 1;
		//if( count1 == 26'd25000 ) begin		// 2kHz
		//if( count1 == 26'd1 ) begin				// 25MHz
		if( count1 == 26'd6250000 ) begin		// 8Hz
			clkOut <= ~clkOut;
			count1 <= 26'd0;
		end
	end
	
endmodule
