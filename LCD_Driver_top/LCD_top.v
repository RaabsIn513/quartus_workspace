module LCD_top( clk, switches, rstBt, lineToggleBt, LCD, LEDs, en, RS, RW );

	input clk, rstBt, lineToggleBt;
	input[9:0] switches;
	output[7:0] LCD;
	output[9:0] LEDs;
	wire[7:0] LCD;
	reg[9:0] LEDs;
	output en, RS, RW;
	wire en, RS, RW;
	wire slowClk;
	reg line;
	reg lineChange;
	
	clkDiv U0( clk, slowClk );
	/* LCD_Driver ports for reference */
	// LCD_Driver(enable, clk, rst, dataIn, dataOut, RS, RW, enableOut, line, setLine );
	/* Use slowClk for use on DE0 board (10kHz) */
	LCD_Driver U1(.enable(en), .clk(slowClk), .rst(~rstBt), .dataIn(switches), .dataOut(LCD), .RS(RS), .RW(RW), .enableOut(en), .line(line), .setLine(lineChange));
	/* Use faster clock for simulation */
	//LCD_Driver U1(.enable(en), .clk(clk), .rst(~rstBt), .dataIn(switches), .dataOut(LCD), .RS(RS), .RW(RW), .enableOut(en));

	always @( posedge slowClk ) begin
		LEDs[9:2] <= LCD;
		LEDs[1]   <= en;
		LEDs[0]   <= RS;
		if( ~lineToggleBt ) begin
			line <= ~line;
			lineChange <= 1'b1;
		end
		else begin
			lineChange <= 1'b0;
		end
	end
	
endmodule
