module LCD_top( clk, rstBt, LCD, LEDs, en, RS, RW );

	input clk, rstBt;
	output[7:0] LCD;
	output[9:0] LEDs;
	wire[7:0] LCD;
	reg[9:0] LEDs;
	output en, RS, RW;
	wire en, RS, RW;
	wire slowClk, oneHzClk, refreshClk;
	reg line;
	reg lineChange;
	reg writeData;
	reg[3:0] count, cnt;
	reg[17:0] myData[3:0];
	
	
	clkDiv clkDivSlow( clk, slowClk );
	clkDiv1Hz clkDiv1Hz( clk, oneHzClk );
	clkDivRF reClk( clk, refreshClk );
	/* LCD_Driver ports for reference */
	//LCD_Driver( lcdWrite, clk, rst, dataIn, dataOut, RS, RW, enableOut, line, setLine );
	/* Use slowClk for use on DE0 board (10kHz) */
	LCD_Driver driver(.lcdWrite(refreshClk), .clk(slowClk), .rst(~rstBt), .dataIn(myData[count]), .dataOut(LCD), .RS(RS), .RW(RW), .enableOut(en), .line(line), .setLine(lineChange));
	/* Use faster clock for simulation */
	//LCD_Driver U1(.enable(rstBt), .clk(clk), .rst(~rstBt), .dataIn(myData), .dataOut(LCD), .RS(RS), .RW(RW), .enableOut(en), .line(line), .setLine(lineChange));

	always @( posedge clk ) begin
		if( ~rstBt ) begin
			myData[0] <= 18'b000111000111000000;
			myData[1] <= 18'b111000111000111001;
			myData[2] <= 18'b000111000111000010;
			myData[3] <= 18'b111000111000111011;
		end
		LEDs[3:0] <= count;
		LEDs[4] <= oneHzClk; 
		
	end
	

	always@( posedge oneHzClk ) begin
		if( ~rstBt ) begin
			count <= 4'd0;
		end
		else begin
			if(count == 4'd4 ) begin
				count <= 4'd0;
			end
			else begin
				count <= count + 4'd1;
			end
		end
	end
endmodule
