module LCD_Driver(enable, clk, rst, dataIn, dataOut, RS, RW, enableOut );

	input enable, clk, rst;
	input[9:0] dataIn;	// for my rob_processor project
	output enableOut, RS, RW;
	output[7:0] dataOut;
	reg enableOut, RS, RW;
	reg[7:0]	dataOut;	
	reg[7:0] preOut;
	reg[7:0] count;
	reg[7:0] bitNum;
	reg irst;
	
	always @( negedge clk ) begin
		if( rst ) begin								//External reset signal (rst) needs to go high for a short period
			count <= count + 1'b0;
			irst <= 1'b1;								//Interal reset signal (irst) stays high until it finishes procedure
		end
		
		if( irst ) begin
			case(count) 
				8'd0:
				begin
					dataOut <= 8'b00001111;
					enableOut <= 1'b0;
					RS <= 1'b0;
					RW <= 1'b0;
					count <= count + 1'b1;
				end
				8'd1:
				begin
					dataOut <= 8'b00001111;
					enableOut <= 1'b1;
					RS <= 1'b0;
					RW <= 1'b0;
					count <= count + 1'b1;
				end
				8'd2:
				begin
					dataOut <= 8'b00001111;
					enableOut <= 1'b0;
					RS <= 1'b0;
					RW <= 1'b0;
					count <= count + 1'b1;
				end
				8'd3:
				begin
					dataOut <= 8'b00000111;
					enableOut <= 1'b0;
					RS <= 1'b0;
					RW <= 1'b0;
					count <= count + 1'b1;
				end
				8'd4:
				begin
					dataOut <= 8'b00000111;
					enableOut <= 1'b1;
					RS <= 1'b0;
					RW <= 1'b0;
					count <= count + 1'b1;
				end
				8'd5:
				begin
					dataOut <= 8'b00000111;
					enableOut <= 1'b0;
					RS <= 1'b0;
					RW <= 1'b0;
					count <= count + 1'b1;
				end
				8'd6:
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
				8'd9:
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
					bitNum <= 8'b0;
					count <= count + 8'd1;
					bitNum <= 8'b0;
				end
				8'd12:
				begin
					irst <= 1'b0;							// Done with the reset procedure
				end
				default:
				begin
					count <= 8'd0;
					bitNum <= 8'd0;
					irst <= 1'b1;
				end
			endcase
		end
		
		if( ~irst ) begin										// Don't begin until we're done with reset procedure
			if( 9 - bitNum >= 1 ) begin				// Make sure we're within the dataIn
				preOut <= dataIn[9 - bitNum];	
				case( count )									// We're writing the binary value of each bit to the LCD
					8'd0:
					begin
						if( preOut == 8'd0 ) begin
							dataOut <= 8'b00110000;
						end
						if( preOut == 8'd1 ) begin
							dataOut <= 8'b00110001;
						end
						RS <= 1'b1;
						enableOut <= 1'b0;
						count <= count + 1'b1;
					end
					8'd1:
					begin
						if( preOut == 8'd0 ) begin
							dataOut <= 8'b00110000;
						end
						if( preOut == 8'd1 ) begin
							dataOut <= 8'b00110001;
						end
						RS <= 1'b1;
						enableOut <= 1'b1;
						count <= count + 1'b1;
					end
					8'd2:
					begin
						if( preOut == 8'd0 ) begin
							dataOut <= 8'b00110000;
						end
						if( preOut == 8'd1 ) begin
							dataOut <= 8'b00110001;
						end
						RS <= 1'b1;
						enableOut <= 1'b0;
						count <= count + 8'b1;
					end
					8'd3:
					begin
						count <= 8'd0;
						bitNum <= bitNum + 1'b1;			// Proceed to next bit.
					end
				endcase
			end													// End bitNum check
			else begin											// Else outside of bitNum do nothing
				irst <= 1'b1;
				count <= 1'b0;
				//enableOut <= 1'b0;
				//bitNum <= 1'b0;
			end
		end
	end

endmodule
