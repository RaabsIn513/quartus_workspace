module MDR(re_MDR, wr_MDR_Mem, wr_MDR_Bus, clk, rst, MDRinMem, MDRinBus, MDRout);

	input re_MDR,wr_MDR_Mem, wr_MDR_Bus, clk, rst;
	input [17:0] MDRinMem, MDRinBus;    	//Input to the memory address register
	output [17:0] MDRout;   //Output of the MD register
	reg [17:0] MDRout,MDR;
	
	always @ (posedge clk)
	begin
	if(rst)               //Reset condition
		begin
			MDRout <= 18'd0;
			MDR <= 18'd0;
		end
	
	else if(re_MDR)  		//Reading the Memory data value
		begin
			MDRout <= MDR;
		end
	
	else if(wr_MDR_Mem) 		//Writing into MDR from memory input.
		begin
			MDR <= MDRinMem;
		end

	else if(wr_MDR_Bus) 		//Writing into MDR from bus input.
		begin
			MDR <= MDRinBus;
		end
		
	else
		begin
			MDRout <= 18'dz;
		end
	
	end

endmodule
