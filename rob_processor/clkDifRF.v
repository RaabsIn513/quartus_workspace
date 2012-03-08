// DE0 Board has a 50MHz clk on board
module clkDivRF( clkIn, clkOut );

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
		//if( count1 == 26'd25000000 ) begin	// 2Hz
		//if( count1 == 26'd12500000 ) begin		// 4Hz
		if( count1 == 26'd2500000 ) begin		// 20Hz
		//if( count1 == 26'd250000 ) begin		// 200Hz
		//if( count1 == 26'd25000 ) begin		// 2kHz
		//if( count1 == 26'd10000 ) begin		// 5kHz
		//if( count1 == 26'd5000 ) begin			// 10kHz
		//if( count1 == 26'd2500 ) begin			// 20kHz	// Little bit too fast for the LCD HD44780
		//if( count1 == 26'd250 ) begin			// 20kHz
		//if( count1 == 26'd25 ) begin			// 2MHz
		//if( count1 == 26'd2 ) begin          // 25MHz
		
			clkOut <= ~clkOut;
			count1 <= 26'd0;
		end
	end
	
endmodule
