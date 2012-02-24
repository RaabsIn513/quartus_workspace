module Stack(out_stack_data,in_stack_data,clk,rst,
	read_stack_en,write_stack_en);
	input [17:0] in_stack_data; //Input to the stack
	input clk,rst,read_stack_en,write_stack_en;
	output [17:0] out_stack_data; //Output of the stack
	reg [17:0] out_stack_data;
	reg [17:0] Stack [3:0];
	reg [1:0] SP; //Stack pointer
	
	always @(posedge clk)
		begin
			if(rst) //Reset condition
				begin
					out_stack_data<=18'd0;
					SP<=2'd0;
				end
			else
				begin
					if(read_stack_en) //Pop operation
						begin
							SP<=SP-1;
							out_stack_data<=Stack[SP-1];
						end
					else if(write_stack_en) //Push operation
						begin
							Stack[SP]<=in_stack_data;
							SP<=SP+1;
					end
				end
			end
endmodule
