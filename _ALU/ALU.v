module ALU(

	input[17:0] datA,
	input[17:0] datB,
	input[3:0]  ctrl,
	input       clk,
	output reg[18:0] result,
	output reg  ovf,
	output reg  AgtB,				// A greater than B 
	output reg  N,
	output reg  Z
);
	reg[17:0] alu_out;
	
	// ALU operations
	always @( ctrl or datA or datB )
	case ( ctrl )
		0: alu_out = datA + datB;
		1: alu_out = datA - datB;
		2: alu_out = datA * datB;
		3: alu_out = datA / datB; // remainder situation?
		4: alu_out = datA % datB; // modulus for the remainder situation?
		5: alu_out = datA | datB;
		6: alu_out = datA & datB;
		default: alu_out = 0;
	endcase
	
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
	
	// ALU shift and final output. 
	always @( posedge clk )
		if( ctrl[3] == 1)
			result = alu_out << 1;
		else
			result = alu_out;

endmodule








