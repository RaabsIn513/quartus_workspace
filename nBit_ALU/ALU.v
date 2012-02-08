// Input Width ns

module ALU( A, B, ALU_out, ovf, isZero, clk );

	input[17:0] A;
	input[17:0] B;		
	//input[2:0] ctrl;			// for hardware control unit
	input clk;					// used for shifting output
	output[17:0] ALU_out;
	output ovf;
	output isZero;
	
	//------------------------------------------------------
	// internal nodes
	//------------------------------------------------------
	reg [17:0] ALU_out;
	
	always @ (posedge clk)
	begin
		ALU_out <= A + B;
	end
	
endmodule
	