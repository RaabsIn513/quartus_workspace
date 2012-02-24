module
ControlBlock(clk,rst,opcode,pc_write,pc_read,inc_pc,ir_read,ir_write,ma_read,
				 ma_write,md_read,md_write,ac_read,ac_write,mem_read,mem_write,
				 alu_enable,stack_read,stack_write,inpr_read,outr_write,aluop,
				 md_write_mem);
	input clk,rst; //Inputs
	input [2:0] opcode;
	output pc_write,pc_read,inc_pc,ir_read,ir_write,ma_read,ma_write,inpr_read,outr_write;
	output md_read,md_write,ac_read,md_write_mem;
	output ac_write,mem_read,mem_write,alu_enable,stack_write,stack_read;
	output [2:0] aluop; //Select line for the ALU
	reg pc_write,pc_read,inc_pc,ir_read,ir_write,ma_read,ma_write,md_read,inpr_read,
	outr_write;
	reg md_write, ac_read, ac_write,mem_read;
	reg mem_write, alu_enable, md_write_mem;
	reg stack_write;
	reg stack_read;
	reg [3:0] count; //Count for the number of cycles.
	reg [2:0] aluop;
	wire [2:0] opcode;
	always @(posedge clk)
		begin
			if(rst) //Asserting all signals to be zero on reset
				begin
					pc_write<=0;
					pc_read<=0;
					inc_pc<=0;
					ir_read<=0;
					ir_write<=0;
					count<=3'b0;
					ma_read<=0;
					ma_write<=0;
					md_read<=0;
					md_write<=0;
					ac_read<=0;
					ac_write<=0;
					mem_read<=0;
					stack_read<=1'b0;
					mem_write<=0;
					alu_enable<=0;
					inpr_read<=1'b0;
				end
				
				else
						begin
							case(count)
							4'd0: //Count=0
								begin
									pc_read<=1'b1;
									ma_write<=1'b0; //Reading the value from the PC
									alu_enable<=1'b1;
									aluop<=3'd3;
									count<=count+1'b1;
								end
							4'd1: //Count=1
								begin
									pc_read<=1'b0; //Writing to memory address register
									ma_write<=1'b1;
									count<=count+1'b1;
								end
							4'd2: 
								begin //Count=2
									inc_pc<=1'b1; //Increment PC
									ma_write<=1'b0;
									mem_read<=1'b0;
									ma_read<=1'b1; //Reading the memory address
									count<=count+1'b1;
								end
							4'd3: 
								begin //Count=3
									inc_pc<=1'b0;
									ma_write<=1'b0;
									mem_read<=1'b1; // Read instruction from memory
									ma_read<=1'b0;
									count<=count+1'b1;
								end
							4'd4: //Count=4
								begin
									mem_read<=1'b0;
									ma_read<=1'b0; //Writing into MD
									md_write_mem<=1'b1;
									count<=count+1'b1;
								end
							4'd5: //Count=5
								begin
									md_write_mem<=1'b0;
									md_read<=1'b1; //Reading from MD.
									aluop<=3'd3;
									count<=count+1'b1;
								end
							4'd6: //Count=6
								begin
									ir_write<=1'b1; //Writing into IR.
									md_read<=1'b0;
									aluop<=3'd3;
									count<=count+1'b1;
								end
							4'd7: //Count=7
								begin
								if(opcode==3'b000) //ADD
									begin
										ir_write<=1'b0;
										ir_read<=1'b1; //Read the IR register
										aluop<=3'd1;
										count<=count+1'b1;
									end
								else if (opcode==3'b001) //Load
									begin
										ir_write<=1'b0;
										ir_read<=1'b1;
										aluop<=3'd1;
										count<=count+1'b1;
									end
								else if (opcode==3'b010)//Store
									begin
										ir_write<=1'b0;
										ir_read<=1'b1;
										aluop<=3'd1;
										count<=count+1'b1;
									end
								else if (opcode==3'b011) //Call
									begin
										ir_write<=1'b0;
										count<=count+1'b1;
									end
								else if (opcode==3'b100)//Return
									begin
										ir_write<=1'b0;
										count<=count+1'b1;
									end
								end
							4'd8: //Count=8
							begin
							if(opcode==3'b000) //ADD
								begin
									ir_read<=1'b0; //Write the address to MAR
									ma_write<=1'b1;
									aluop<=3'd0;
									count<=count+1'b1;
								end
							else if (opcode==3'b001)
								begin
									ir_read<=1'b0; //Write the address to MAR
									ma_write<=1'b1;
									aluop<=3'd1;
									count<=count+1'b1;
								end
							else if (opcode==3'b010)
								begin
									ir_read<=1'b0;
									ma_write<=1'b1; //Write the address to MAR
									aluop<=3'd2;
									count<=count+1'b1;
								end
							else if (opcode==3'b011)
								begin
									count<=count+1'b1;
								end
							else if (opcode==3'b100)
								begin
									count<=count+1'b1; //Incrementing count
								end
							end
							4'd9: //Count=9
							begin
							if(opcode==3'b000) //ADD
								begin
									ma_write<=1'b0;
									ma_read<=1'b1; //Reading the MAR
									mem_read<=1'b0;
									count<=count+1'b1;
								end
							else if (opcode==3'b001)//Load
								begin
									ma_write<=1'b0;
									ma_read<=1'b1;
									mem_read<=1'b0;
									count<=count+1'b1;
								end
							else if (opcode==3'b010) //Store
								begin
									ma_write<=1'b0;
									ma_read<=1'b1;
									mem_read<=1'b0;
									count<=count+1'b1;
								end
							else if (opcode==3'b011) //Call
								begin
									ma_write<=1'b0;
									ir_read<=1'b0;
									pc_read<=1'b1; //Reading the PC value onto the bus.
									aluop<=3'd3;
									count<=count+1'b1;
								end
							else if (opcode==3'b100) //Return
								begin
									ir_read<=1'b0; //Reading the stack value.
									stack_read<=1'b1;
									aluop<=3'd3;
									count<=count+1'b1;
								end
							end
							4'd10: //Count=10
							begin
							if(opcode==3'd0)
								begin
									ma_read<=1'b0; //Memory read
									mem_read<=1'b1;
									count<=count+1'b1;
								end
							else if (opcode==3'b001)
								begin
									ma_read<=1'b0;
									mem_read<=1'b1; //Memory read
									count<=count+1'b1;
								end
							else if (opcode==3'b010)
								begin
									ac_read<=1'b1; //Reading the accumulator
									ma_read<=1'b0;
									count<=count+1'b1;
								end
							else if (opcode==3'b011)
								begin
									pc_read<=1'b0; //Writing to the stack
									stack_write<=1'b1;
									aluop<=3'd3;
									count<=count+1'b1;
								end
							else if (opcode==3'b100)
								begin
									pc_write<=1'b1; //Reading from stack
									stack_read<=1'b1;
									aluop<=3'd3;
									count<=count+1'b1;
								end
							end
							4'd11: //Count=11
							begin
							if(opcode==3'b000)
								begin
									mem_read<=1'b0;
									ac_read<=1'b1; //Writing into MD
									md_write_mem<=1'b1;
									aluop<=3'b000;
									count<=count+1'b1;
								end
							else if (opcode==3'b001)
								begin
									mem_read<=1'b0; //Writing into MD
									md_write_mem<=1'b1;
									count<=count+1'b1;
								end
							else if (opcode==3'b010)
								begin
									ac_read<=1'b0;
									md_write<=1'b1; //MD write
									count<=count+1'b1;
								end
							else if (opcode==3'b011)
								begin
									ir_read<=1'b1; //Reading from the IR.
									aluop<=3'd1;
									stack_write<=1'b0;
									count<=count+1'b1;
								end
							else if (opcode==3'd4)
								begin
									stack_read<=1'b0;
									pc_write<=1'b0;
									count<=4'd0;
								end
							end
							4'd12: //Count=12
							begin
							if(opcode==3'b000)
								begin
									ac_read<=1'b0;
									md_write_mem<=1'b0; //Writing the accumulator
									ac_write<=1'b1;
									count<=count+1'b1;
								end
							else if (opcode==3'b001)
								begin
									ac_write<=1'b1;
									md_write_mem<=1'b0; //Writing the accumulator
									count<=count+1'b1;
								end
							else if (opcode==3'b010)
								begin
									mem_write<=1'b1; //Memory write
									md_write<=1'b0;
									count<=count+1'b1;
								end
							else if (opcode==3'b011)
								begin
									ir_read<=1'b0;
									pc_write<=1'b1; //Writing to PC
									count<=count+1'b1;
								end
							end
							4'd13: //Count=13
							begin
								ir_read<=1'b0;
								pc_write<=1'b0; //Done
								ac_write<=1'b0;
								mem_write<=1'b0;
								count<=4'd0;
							end
						endcase
					end
				end
endmodule
