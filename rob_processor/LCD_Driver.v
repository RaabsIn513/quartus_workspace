module LCD_Driver(enable, clk, rst, dataIn, dataOut, RS, RW, enableOut, line, setLine );

	input enable, clk, rst, line, setLine;	// line = 0 is top, line = 1 is bottom of the 2x16 char disp
	input[17:0] dataIn;							// for my rob_processor project
	output enableOut, RS, RW;
	output[7:0] dataOut;
	reg enableOut, RS, RW;
	reg[7:0]	dataOut;	
	reg[7:0] preOut;
	reg bit;
	reg[7:0] count, cntCurPos;					// count - blah blah, cntCurPos - used to set cursor position
	reg[7:0] bitNum;
	reg irst, isetLine, iline, ienable;
	
	always @( negedge clk ) begin
		// Trigger for reset
		if( rst ) begin								//External reset signal (rst) needs to go high for a short period
			count <= 8'd0;
			irst <= 1'b1;									//Interal reset signal (irst) stays high until it finishes procedure
		end
		
		// Trigger to set top or bottom line
		if( setLine ) begin
			isetLine <= 1'b1;
			iline <= line;
		end
		
		if( enable ) begin
			ienable <= 1'b1;
		end
		
		// Reseting the entire display
		if( irst ) begin
			case(count) 
				8'd0:											// Display on, blink off, cursor off
				begin
					dataOut <= 8'b00001110;
					enableOut <= 1'b0;
					RS <= 1'b0;
					RW <= 1'b0;
					count <= count + 1'b1;
				end
				8'd1:
				begin
					dataOut <= 8'b00001110;
					enableOut <= 1'b1;
					RS <= 1'b0;
					RW <= 1'b0;
					count <= count + 1'b1;
				end
				8'd2:
				begin
					dataOut <= 8'b00001110;
					enableOut <= 1'b0;
					RS <= 1'b0;
					RW <= 1'b0;
					count <= count + 1'b1;
				end
				8'd3:											// Entry mode: increase cursor position, no scroll
				begin
					dataOut <= 8'b00000110;
					enableOut <= 1'b0;
					RS <= 1'b0;
					RW <= 1'b0;
					count <= count + 1'b1;
				end
				8'd4:
				begin
					dataOut <= 8'b00000110;
					enableOut <= 1'b1;
					RS <= 1'b0;
					RW <= 1'b0;
					count <= count + 1'b1;
				end
				8'd5:
				begin
					dataOut <= 8'b00000110;
					enableOut <= 1'b0;
					RS <= 1'b0;
					RW <= 1'b0;
					count <= count + 1'b1;
				end
				8'd6:											// Clear Display
				begin
					dataOut <= 8'b00000001;
					enableOut <= 1'b0;
					RS <= 1'b0;
					RW <= 1'b0;
					count <= count + 1'b1;
				end
				8'd7:
				begin
					dataOut <= 8'b00000001;
					enableOut <= 1'b1;
					RS <= 1'b0;
					RW <= 1'b0;
					count <= count + 8'b1;
				end
				8'd8:
				begin
					dataOut <= 8'b00000001;
					enableOut <= 1'b0;
					RS <= 1'b0;
					RW <= 1'b0;
					count <= count + 8'b1;
				end
				8'd9:											// Cursor home
				begin
					dataOut <= 8'b00000010;
					enableOut <= 1'b0;
					RS <= 1'b0;
					RW <= 1'b0;
					count <= count + 1'b1;
				end
				8'd10:
				begin
					dataOut <= 8'b00000010;
					enableOut <= 1'b1;
					RS <= 1'b0;
					RW <= 1'b0;
					count <= count + 8'b1;
				end
				8'd11:
				begin
					dataOut <= 8'b00000010;
					enableOut <= 1'b0;
					RS <= 1'b0;
					RW <= 1'b0;
					count <= count + 8'b1;
				end
				8'd12:											// Cursor home
				begin
					dataOut <= 8'b00000010;
					enableOut <= 1'b0;
					RS <= 1'b0;
					RW <= 1'b0;
					count <= count + 1'b1;
				end
				8'd13:
				begin
					dataOut <= 8'b00000010;
					enableOut <= 1'b1;
					RS <= 1'b0;
					RW <= 1'b0;
					count <= count + 8'b1;
				end
				8'd14:
				begin
					dataOut <= 8'b00000010;
					enableOut <= 1'b0;
					RS <= 1'b0;
					RW <= 1'b0;
					count <= count + 8'b1;
				end
				8'd15:
				begin
					irst <= 1'b0;							// Done with the reset procedure
					count <= 8'd0;
					bitNum <= 8'd0;
					dataOut <= 8'd0;
					RS <= 1'b0;
					cntCurPos <= 8'd0;
					iline <= 1'b0;							// default top line
					ienable <= 1'b0;
				end
//				default:
//				begin
//					irst <= 1'b1;
//				end
			endcase
		end
		
		// Choosing between top or bottom line
		if( isetLine && ~irst ) begin
			case( count )
				8'd0:											// 
				begin
					if( iline == 1'b1 ) begin
						dataOut <= 8'b11000000;
					end
					else if( iline == 1'b0 )begin
						dataOut <= 8'b10000000;
					end
					enableOut <= 1'b0;
					RS <= 1'b0;
					RW <= 1'b0;
					count <= count + 1'b1;
				end
				8'd1:											// 
				begin
					if( iline == 1'b1 ) begin
						dataOut <= 8'b11000000;
					end
					else if( iline == 1'b0 )begin
						dataOut <= 8'b10000000;
					end
					enableOut <= 1'b1;
					RS <= 1'b0;
					RW <= 1'b0;
					count <= count + 1'b1;
				end
				8'd2:											// 
				begin
					if( iline == 1'b1 ) begin
						dataOut <= 8'b11000000;
					end
					else if( iline == 1'b0 )begin
						dataOut <= 8'b10000000;
					end
					enableOut <= 1'b0;
					RS <= 1'b0;
					RW <= 1'b0;
					count <= count + 1'b1;
				end
				8'd3:
				begin
					isetLine <= 1'b0;						// We're done setting cursor location
					count <= 8'd0;
				end
				endcase
		end
		
		
		// Writing bits
		if( ~irst && ~isetLine && ienable ) begin	// Don't interfear reset procedure
			
			// first check if our bitNum is 0 or 3 so we can set our cursor address before writing 
			if( bitNum == 8'd0 || bitNum == 8'd3 ) begin		// put the 3 msb on the second line
				if( bitNum == 8'd0 ) begin
					iline <= 1'b1;										// set to line 2
				end
				if( bitNum == 8'd3 ) begin
					iline <= 1'b0;										// put the 3 msb on the second line, rest on first
				end
				case( cntCurPos )					// use top or bottom line by setting ddram address (overwrite any existing)
					8'd0:
					begin
						if( iline == 1'b0 ) begin
							dataOut <= 8'b10000000;
						end
						else if( iline == 1'b1 ) begin
							dataOut <= 8'b11000000;
						end
						RS <= 1'b0;
						enableOut <= 1'b0;
						cntCurPos <= cntCurPos + 1'b1;
					end
					8'd1:
					begin
						if( iline == 1'b0 ) begin
							dataOut <= 8'b10000000;
						end
						else if( iline == 1'b1 ) begin
							dataOut <= 8'b11000000;
						end
						RS <= 1'b0;
						enableOut <= 1'b1;
						cntCurPos <= cntCurPos + 1'b1;
					end
					8'd2:
					begin
						if( iline == 1'b0 ) begin
							dataOut <= 8'b10000000;
						end
						else if( iline == 1'b1 ) begin
							dataOut <= 8'b11000000;
						end
						RS <= 1'b0;
						enableOut <= 1'b0;
						cntCurPos <= cntCurPos + 1'b1;
					end
					8'd3:
					begin
						cntCurPos <= 8'd0;							// make ready for next time
					end
				endcase
			end
			
			// Finally write bit
			if( bitNum < 8'd18 ) begin					// Make sure we're within the dataIn
				bit <= dataIn[17 - bitNum];			// Zero or one
				case( count )								// We're writing the binary value of each bit to the LCD
					8'd0:
					begin
						dataOut <= 8'b00110000 + bit;
						RS <= 1'b1;
						enableOut <= 1'b0;
						count <= count + 1'b1;
					end
					8'd1:
					begin
						dataOut <= 8'b00110000 + bit;
						RS <= 1'b1;
						enableOut <= 1'b1;
						count <= count + 1'b1;
					end
					8'd2:
					begin
						dataOut <= 8'b00110000 + bit;
						RS <= 1'b1;
						enableOut <= 1'b0;
						count <= count + 1'b1;
					end
					8'd3:
					begin
						bitNum <= bitNum + 1'b1;
						count <= 8'd0;
					end
					default:
					begin
						count <= 8'd0;								// ready for next time
					end
				endcase
			end														// End bitNum check
			else if( bitNum >= 8'd18 ) begin
				ienable <= 1'b0;
			end
		end
	
	end

endmodule
