
// Module name : MAR
// Description : The module implements the memory address regiter


module MAR(re_MAR, wr_MAR, clk, rst, MARin, MARout);

	input re_MAR, wr_MAR, clk, rst;
	input [12:0] MARin;    //Input to the memory address register
	output [12:0] MARout;   //Output of the MA register
	reg [12:0] MARout,MAR;
	
	always @ (posedge clk)
	begin
	if(rst)               //Reset condition
		begin
			MARout<=13'd0;
			MAR <= 13'd0;
		end
	
	else if(re_MAR)  //Reading the MA value
		begin
			MARout<=MAR;
		end
	
	else if(wr_MAR) //Writing onto MAR.
		begin
			MAR<=MARin;
		end
	else
		begin
			MARout <= 13'dz;
		end
		
	end

endmodule
