module MAR(MAR_read_en, MAR_write_en, clk, rst, MAR_in, MAR_out);

input MAR_read_en, MAR_write_en, clk, rst;
input[12:0] MAR_in;
output[12:0] MAR_out;
reg [12:0] MAR_out, MAR;


always @ (posedge clk)
	begin
		if(rst) //Reset condition
			begin
				MAR_out<=13'd0;
			end
		else if(MAR_read_en) //Reading the MA value
			begin
				MAR_out<=MAR;
			end
		else if(MAR_write_en) //Writing onto MAR.
			begin
				MAR<=MAR_in;
			end
	end
endmodule
