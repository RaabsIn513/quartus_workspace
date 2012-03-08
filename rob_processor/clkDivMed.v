module clkDivMed( clkIn, clkOut );

	input clkIn;
	output clkOut;
	reg clkOut;
	reg [25:0] count1;
	
	initial begin
		count1 <= 0;
		clkOut <= 0;
	end
	
	always@(posedge clkIn) begin
		count1 <= count1 + 26'd1;
		//if( count1 == 26'd25000000 ) begin	// 2Hz
		if( count1 == 26'd1250000 ) begin		// 4Hz
		//if( count1 == 26'd200000 ) begin			// 250hz
		//if( count1 == 26'd5000 ) begin	// 10kHz
		//if( count1 == 26'd250000 ) begin			// 20kHz
		//if( count1 == 26'd2 ) begin          // 25MHz
			clkOut <= ~clkOut;
			count1 <= 26'd0;
		end
	end
	
endmodule
