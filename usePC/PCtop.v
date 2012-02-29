module PCtop(clk, reset, rPC, wPC, inPC, outPC);

	input clk, reset, rPC, wPC;
	input[17:0] inPC;
	output[17:0] outPC;
	reg[17:0] outPC;
	
	wire[17:0] idk;
	
	//PC(re_PC,wr_PC,clk,rst,PCin,PCout);
	//PC pc( .re_PC(rPC), .wr_PC(wPC), .clk(clk), .rst(reset), .PCin(inPC),  .PCout(idk) );
	PC pc( rPC, wPC, clk, reset, inPC, idk );
	
	always @(posedge clk) begin
		outPC <= idk;
	end

endmodule
