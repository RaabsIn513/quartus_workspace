module TOP (clk,rst, aluOut);
	
	input clk,rst;
	wire [17:0] output1, output2, dataOut, regDataOut;
	wire [17:0] outData_add;
	wire [12:0] MAR_out;
	wire pc_write_en, pc_read_en, inc_pc, ir_read_en, ir_write_en, ma_read_en;
	wire ma_write_en, md_read_en, md_write_en, ac_read_en, ac_write_en, mem_read_en;
	wire mem_write_en, alu_en, stack_read_en, stack_write_en;
	wire inpr_read_en, outr_write_en, write_mem_md_en;
	wire [2:0]alu_sel, opcode;
	wire [17:0]stackData_out, inpr_input;
	
	output[17:0] aluOut;
	reg[17:0] aluOut;
	
	
	assign output2= (stack_read_en)?stackData_out:regDataOut;
	
	PC_MD mux1(regDataOut,dataOut,outData_add,clk,rst,inc_pc,pc_read_en,
		pc_write_en,md_read_en,md_write_en,write_mem_md_en);
	
	MAR mar1(ma_read_en,ma_write_en,clk,rst,dataOut[12:0],MAR_out);
	
	AC_IR mux(output1,dataOut,clk,rst,inpr_read_en_en,outr_write_en,
		ac_read_en,ac_write_en,ir_read_en,ir_write_en,opcode,I_flag,O_flag,inpr_input);
	
	Memory mem(outData_add,dataOut,MAR_out,clk,rst,mem_read_en,mem_write_en);
	
	ALU alu1(output1, output2,alu_sel, dataOut, alu_en);
	
	ControlBlock cb (clk,
		rst,opcode,pc_write_en,pc_read_en,inc_pc,ir_read_en,ir_write_en,ma_read_en,
		ma_write_en,md_read_en,md_write_en,ac_read_en,ac_write_en,mem_read_en,
		mem_write_en,alu_en,stack_read_en,stack_write_en,
		inpr_read_en_en,outr_write_en,alu_sel,write_mem_md_en);
	
	Stack stack1(stackData_out,dataOut,clk,rst,	
		stack_read_en,stack_write_en);

	always @(posedge clk) begin
		aluOut <= dataOut;
	end
		
		
endmodule
