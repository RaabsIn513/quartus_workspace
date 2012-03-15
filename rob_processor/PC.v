module PC(re_PC,wr_PC, PCinc, clk,rst,PCin,PCout);

	input re_PC,wr_PC, PCinc, clk, rst;
	input [17:0] PCin;    	//Input to the memory address register
	output [17:0] PCout;   	//Output of the MD register
	reg [17:0] PCout,PC;
	
	always @ ( posedge clk )
	begin
		if(rst)               	//Reset condition
			begin
				PC <= 18'd0;
				PCout <= 18'd0;
			end
		
		else if(re_PC)  			//Reading the Memory data value
			begin
				PCout <= PC;
			end
		
		else if(wr_PC) 			//Writing into PC.
			begin
				PC <= PCin;
			end
		
		else if( PCinc )
			begin
				PC <= PC + 1'b1;
			end

		else
			begin
				PCout <= 18'dz;
			end
		
	end

endmodule
