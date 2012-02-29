module AC(re_AC,wr_AC,clk,rst,ACin,ACout);

	input re_AC,wr_AC,clk,rst;
	input [17:0] ACin;    	//Input to the memory address register
	output [17:0] ACout;   	//Output of the MD register
	reg [17:0] ACout,AC;
	
	always @ (posedge clk)
	begin
	if(rst)               	//Reset condition
		begin
			ACout <= 17'd0;
		end
	
	else if(re_AC)  			//Reading the Memory data value
		begin
			ACout <= AC;
		end
	
	else if(wr_AC) 			//Writing into AC.
		begin
			AC <= ACin;
		end
		
	else
		begin
			ACout <= 18'dz;
		end
	
	end

endmodule
