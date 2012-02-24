
// Module name : MAR
// Description : The module implements the memory address regiter


module MAR(re_en_MAR,wr_en_MAR,clk,rst,in_MAR,ou_MAR);

	input re_en_MAR,wr_en_MAR,clk,rst;
	input [12:0] in_MAR;    //Input to the memory address register
	output [12:0]ou_MAR;   //Output of the MA register
	reg [12:0] ou_MAR,MAR;
	
	always @ (posedge clk)
	begin
	if(rst)               //Reset condition
		begin
			ou_MAR<=13'd0;
		end
	
	else if(re_en_MAR)  //Reading the MA value
		begin
			ou_MAR<=MAR;
		end
	
	else if(wr_en_MAR) //Writing onto MAR.
		begin
			MAR<=in_MAR;
		end
	
	end
	

endmodule
