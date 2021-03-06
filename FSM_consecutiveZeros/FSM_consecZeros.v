module FSM_consecZeros ( inBit, outBit, clock, reset );

	input inBit;
	input clock;
	input reset;
	output outBit;
	reg outBit;
	reg[1:0] state;
	
	//initial state?
	parameter[1:0] q0 = 0, q1 = 1, qf = 2;
	
	always @( negedge clock or posedge reset ) begin
		if (reset)
			state = q0;
		else
			case( state )
				q0:
					if( inBit == 0 )
						state = q1;
					else
						state = q0;
				q1:
					if( inBit ==  0 )
						state = qf;
					else
						state = q0;
				qf:
					state = q0; // lambda transition to q0
				default: 
					state = q0;
			endcase
		end
		
	always @(state) begin
		case( state )
			q0: outBit = 0;
			q1: outBit = 0;
			qf: outBit = 1;
			default: outBit = 0;
		endcase
	end

endmodule
