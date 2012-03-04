module LCD_top( clk, switches, rstBt, LCD, LEDs, en, RS, RW );

	input clk, rstBt;
	input[9:0] switches;
	output[7:0] LCD;
	output[9:0] LEDs;
	wire[7:0] LCD;
	reg[9:0] LEDs;
	output en, RS, RW;
	wire en, RS, RW;
	wire slowClk;
	
	clkDiv U0( clk, slowClk );
	  
	//LCD_Driver(enable, clk, rst, dataIn, dataOut, RS, RW, enableOut );
	LCD_Driver U1(.enable(en), .clk(slowClk), .rst(~rstBt), .dataIn(switches), .dataOut(LCD), .RS(RS), .RW(RW), .enableOut(en));
	//LCD_Driver U1(.enable(en), .clk(clk), .rst(~rstBt), .dataIn(switches), .dataOut(LCD), .RS(RS), .RW(RW), .enableOut(en));

	always @( posedge slowClk ) begin
		LEDs[9:2] <= LCD;
		LEDs[1]   <= en;
		LEDs[0]   <= RS;
	end
	
endmodule
