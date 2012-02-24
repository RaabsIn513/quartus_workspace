module Memory(out_dat_add,in_data,in_address,clk,rst,read_en,write_en);
input [17:0] in_data; //Input data
input clk,rst,read_en,write_en;
input [12:0]in_address;//Input address
output [17:0] out_dat_add;
reg [17:0] out_dat_add;
reg [17:0] Mem [12:0]; //Memory deeclaration
always @(posedge clk)
	begin
		if(rst)
			begin //Loading the values into memory on reset.
				out_dat_add<=18'd0;
				$readmemb ("Test.txt",Mem);
			end
			else
				begin
					if(read_en && ~write_en) //Memory read
						begin
							out_dat_add<=Mem[in_address];
						end
						else if(~read_en && write_en) //Memory write.
						begin
							Mem[in_address]<=in_data;
						end
					end
			end
endmodule
