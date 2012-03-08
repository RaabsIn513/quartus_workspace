module useClkDiv(clk50, LED );

	input clk50;
	output LED;
	reg LED;
	wire slowClk;
	
	clkDiv U0( clk50, slowClk, 26'd25_000_000 );
	
	always@( slowClk ) begin
		LED <= slowClk;
	end

endmodule
