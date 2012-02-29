module IR(re_IR,wr_IR,clk,rst,IRin,IRout);

	input re_IR,wr_IR,clk,rst,IRin;
	input [17:0] IRin;    	//Input to the memory address register
	output [17:0] IRout;   	//Output of the MD register
	reg [17:0] IRout,IR;
	
	always @ (posedge clk)
	begin
	if(rst)               	//Reset condition
		begin
			IRout <= 17'd0;
		end
	
	else if(re_IR)  			//Reading the Memory data value
		begin
			IRout <= IR;
		end
	
	else if(wr_IR) 			//Writing into IR.
		begin
			IR <= IRin;
		end
	
	end

endmodule
