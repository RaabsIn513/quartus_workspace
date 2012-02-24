module add
(
	input dataa,
	input datab,
	input clk,
	output  x 
);

	always @ (posedge clk)
	begin
		x <= dataa + datab;
	end

endmodule

