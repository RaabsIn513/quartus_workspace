module LCD_top( clk, rstBt, LCD, LEDs, en, RS, RW );

	input clk, rstBt;
	output[7:0] LCD;
	output[9:0] LEDs;
	wire[7:0] LCD;
	reg[9:0] LEDs;
	output en, RS, RW;
	wire en, RS, RW;
	wire lcdClk, changeClk, refreshClk;
	reg line;
	reg lineChange;
	reg writeData;
	reg[3:0] count, cnt;
	reg[17:0] myData[5:0];
	
	
	clkDivSel U0( clk, lcdClk, 26'd10_000 );
	clkDivSel U1( clk, changeClk, 26'd1  );
	clkDivSel U3( clk, refreshClk, 26'd4 );
//	clkDivSel U0( clk, lcdClk, 26'd50_000_000 );
//	clkDivSel U1( clk, changeClk, 26'd5_000  );
//	clkDivSel U3( clk, refreshClk, 26'd20_000 );
	/* LCD_Driver ports for reference */
	//LCD_Driver( lcdWrite, clk, rst, dataIn, dataOut, RS, RW, enableOut, line, setLine );
	/* Use slowClk for use on DE0 board (10kHz) */
	LCD_Driver driver(.lcdWrite(refreshClk), .clk(lcdClk), .rst(~rstBt), .dataIn(myData[count]), .dataOut(LCD), .RS(RS), .RW(RW), .enableOut(en), .line(line), .setLine(lineChange));
	/* Use faster clock for simulation */
	//LCD_Driver U1(.enable(rstBt), .clk(clk), .rst(~rstBt), .dataIn(myData), .dataOut(LCD), .RS(RS), .RW(RW), .enableOut(en), .line(line), .setLine(lineChange));

	always @( posedge clk ) begin
		if( ~rstBt ) begin
			myData[0] <= 18'b000000000000000000;	// PC = 0
			myData[1] <= 18'b001010000000001101;	// load contents of 13
			myData[2] <= 18'b000000000000101010;	// contents of 13 (now AC) is 42
			myData[3] <= 18'b000000000000000010;	// PC = 1
			myData[4] <= 18'b000010000000001110;	// add contents of 14 to AC
			myData[5] <= 18'b000010000000101101;	// result is 45 stored to AC
			myData[6] <= 18'b010100000000001111;	// store contenst of AC to 15
		end
		LEDs[3:0] <= count;
		LEDs[4] <= changeClk; 
		
	end
	
	always@( posedge changeClk ) begin
		if( ~rstBt ) begin
			count <= 4'd0;
		end
		else begin
			if(count == 4'd6 ) begin
				count <= 4'd0;
			end
			else begin
				count <= count + 4'd1;
			end
		end
	end
endmodule
