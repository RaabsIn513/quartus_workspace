module ALU(in1,in2,sel,out,enable);
	input [17:0] in1,in2; //Inputs to the ALU
	wire [17:0] in1,in2;
	input enable; //Enable to the ALU
	input [2:0]sel; // Select lines
	output [17:0] out; //Output
	reg [17:0]out;
	reg CF;

	always @(sel or in1 or in2)
		begin
		if(enable)
			begin
				case(sel)
					3'd0:{CF,out}<=in1+in2; //add
					3'd1:out<=in1; //load
					3'd2:out<=in1; //store
					3'd3:out<=in2; //call
					3'd4:out<=in2; //Return
				endcase
			end
		end

endmodule
