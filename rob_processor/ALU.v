module ALU(

	input[17:0] datA,
	input[17:0] datB,
	input[2:0]  ctrl,
	input			enable,
	output reg[17:0] alu_out,
	output reg  ovf,
	output reg  AgtB,				// A greater than B 
	output reg  N,
	output reg  Z
);
	//reg[17:0] alu_out;
	
	// ALU operations
	always @( ctrl or datA or datB )
	if( enable ) begin
			case ( ctrl )
				0: alu_out <= datA;			// Pass through A
				1: alu_out <= datB;			// Pass through B
				2: alu_out <= ~datA;			// Not A
				3: alu_out <= datA + datB; // 
				4: alu_out <= datA - datB; // 
				5: alu_out <= datA | datB;
				6: alu_out <= datA & datB;
				default: alu_out = 18'dz;
			endcase
		end
		// Appropriate signals determined by the result.
		always @( alu_out ) begin
			if ( alu_out[17] == 1)  // if output is negative
				N = 1;
			else
				N = 0;
			if ( alu_out == 0 ) 		// if output is zeros 
				Z = 1;
			else
				Z = 0;
			if (alu_out > 18'd131071 || alu_out < -18'd131071) // if the answer is > or < max, min signal overflow
				ovf = 1;
			else
				ovf = 0;
			if ( datA > datB )
				AgtB = 1;
			else
				AgtB = 0;
		end

endmodule








