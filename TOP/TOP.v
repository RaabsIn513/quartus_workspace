module TOP (clk,rst,inpr_input);
	
	input clk,rst;
	input [17:0] inpr_input;
	wire [17:0] out_data_1, out_data_2, out_data,out_data_reg;
	wire [17:0] out_data_add;
	wire [12:0] MAR_Output;
	wire pc_write,pc_read,inc_pc,ir_read,ir_write,ma_read;
	wire ma_write,md_read,md_write,ac_read,ac_write,mem_read;
	wire mem_write,alu_enable,stack_read,stack_write;
	wire inpr_read,outr_write,write_mem_md;
	wire [2:0]aluop,opcode;
	wire [17:0]inpr_input,out_data_stack;
	
	
	assign out_data_2= (stack_read)?out_data_stack:out_data_reg;
	
	PC_MD mux1(out_data_reg,out_data,out_data_add,clk,rst,inc_pc,pc_read,
	pc_write,md_read,md_write,write_mem_md);
	MAR mar1(ma_read,ma_write,clk,rst,out_data[12:0],MAR_Output);
	
	AC_IR mux(out_data_1,out_data,clk,rst,inpr_read,outr_write,
	ac_read,ac_write,ir_read,ir_write,opcode,I_flag,O_flag,inpr_input);
	
	Memory mem(out_data_add,out_data,MAR_Output,clk,rst,mem_read,mem_write);
	
	ALU alu1(out_data_1, out_data_2,aluop,out_data,alu_enable);
	
	ControlBlock cb (clk,
	rst,opcode,pc_write,pc_read,inc_pc,ir_read,ir_write,ma_read,
	ma_write,md_read,md_write,ac_read,ac_write,mem_read,
	mem_write,alu_enable,stack_read,stack_write,
	inpr_read,outr_write,aluop,write_mem_md);
	
	Stack stack1(out_data_stack,out_data,clk,rst,	
	stack_read,stack_write);

endmodule
