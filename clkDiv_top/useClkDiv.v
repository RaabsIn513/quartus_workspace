module useClkDiv(clk50, LED );

	input clk50;
	output LED;
	reg LED;
	wire slowClk;
	
	clkDiv U0( clk50, slowClk );
	
	always@( slowClk ) begin
		LED <= slowClk;
	end

endmodule
