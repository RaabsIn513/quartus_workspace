module Adder
(
	input [7:0] dataa,
	input [7:0] datab,
	input clk,
	output reg [8:0] result
);

	always @ (posedge clk)
	begin
		result <= dataa + datab;
	end

endmodule
