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
		count1 <= count1 + 26'd1;
		//if( count1 == 26'd12500000 ) begin 		// 4Hz
		//if( count1 == 26'd25000000 ) begin	// 2Hz
		//if( count1 == 26'd50000000 ) begin	// 1Hz
		//if( count1 == 26'd5000 ) begin	// 10kHz
		//if( count1 == 26'd250000 ) begin			// 20kHz
		//if( count1 == 26'd2 ) begin          // 25MHz
		if( count1 == 26'd50000000/freq ) begin // user passed in freq
			clkOut <= ~clkOut;
			count1 <= 26'd0;
		end
	end
	
endmodule
