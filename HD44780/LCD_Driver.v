module LCD_Driver(dataIn, dataOut, clk, en, RW, RS, rst, BLON, LEDs );

	input [7:0] dataIn;
	output[7:0] dataOut;
	reg   [7:0] dataOut;
	output[7:0] LEDs;
	reg   [7:0] LEDs;
	output BLON;
	reg BLON;
	input rst, clk;
	output en, RW, RS;
	reg    en, RW, RS;
	wire  [7:0] dataIn;
	reg   [3:0] count;
	wire slowClk;
	reg [7:0] rstVec [15:0]; 

	initial begin
		count <= 0;
		BLON <= 1;
		en <= 0;
		RW <= 0;
		RS <= 0;

		rstVec[0] 	<= 8'b00000001;
		rstVec[1] 	<= 8'b00000001;
		rstVec[2] 	<= 8'b00000011;
		rstVec[3] 	<= 8'b00000011;
		rstVec[4] 	<= 8'b00000111;
		rstVec[5] 	<= 8'b00000111;
		rstVec[6] 	<= 8'b00000111;
		rstVec[7] 	<= 8'b00000111;
		rstVec[8] 	<= 8'b00001111;
		rstVec[9] 	<= 8'b00001111;
		
		rstVec[10] 	<= 8'b00001111;
		rstVec[11] 	<= 8'b00001111;
		rstVec[12] 	<= 8'b00001111;
		rstVec[13] 	<= 8'b00001111;
		rstVec[14] 	<= 8'b00001111;
		rstVec[15] 	<= 8'b00001111;
	end
	
		clkDiv U0( clk, slowClk );
				
	//always @( posedge slowClk )	begin
	always @( posedge clk )	begin
		if( rst ) begin
			count <= count + 1;		
			en <= count[0];
			if( count == 4'd12 ) begin
				count <= 0;
			end
		end
		else begin
			en <= 0;
		end
	end
	
	//always@ (  slowClk ) begin
	always@ ( clk ) begin
		dataOut <= rstVec[count];
		LEDs <= dataOut;
		
	end
	
endmodule
