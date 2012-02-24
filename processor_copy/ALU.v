
// Module name	: Arthematic and Logic Unit
// Description	: This module does addition of the two 18 bit input data

module ALU(ina,inb,sig,out,en);

	input [17:0] ina,inb;	//Inputs to the ALU
	input en;          		//Enable to the ALU
	input [2:0]sig;       	// Select lines
	output [17:0] out;      //Output
	
	wire [17:0] ina,inb;
	
	reg [17:0]out;
	reg CF;

	always @(sig or ina or inb)
	begin
	if(en)
		begin
			case(sig)
			3'd0:{CF,out}<=ina+inb;	//add
			3'd1:out<=ina;          //load
			3'd2:out<=ina;          //store
			3'd3:out<=inb;          //call
			3'd4:out<=inb;          //Return

			endcase
		end
	end
endmodule


