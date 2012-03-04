module LCD_top( clk, rstBt, lineToggleBt, LCD, LEDs, en, RS, RW );

	input clk, rstBt, lineToggleBt;
	output[7:0] LCD;
	output[9:0] LEDs;
	wire[7:0] LCD;
	reg[9:0] LEDs;
	output en, RS, RW;
	wire en, RS, RW;
	wire slowClk;
	reg line;
	reg lineChange;
	reg[17:0] myData;
	
	clkDiv U0( clk, slowClk );
	/* LCD_Driver ports for reference */
	//LCD_Driver(enable, clk, rst, dataIn, dataOut, RS, RW, enableOut, line, setLine );
	/* Use slowClk for use on DE0 board (10kHz) */
	LCD_Driver U1(.enable(rstBt), .clk(slowClk), .rst(~rstBt), .dataIn(myData), .dataOut(LCD), .RS(RS), .RW(RW), .enableOut(en), .line(line), .setLine(lineChange));
	/* Use faster clock for simulation */
	//LCD_Driver U1(.enable(rstBt), .clk(clk), .rst(~rstBt), .dataIn(myData), .dataOut(LCD), .RS(RS), .RW(RW), .enableOut(en), .line(line), .setLine(lineChange));

	always @( posedge clk ) begin
		myData = 18'b111000111000111000;
	end
	
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
