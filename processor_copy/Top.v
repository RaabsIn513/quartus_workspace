//////////////////////////////////////////////////////////////////////////////////////
//
// Module name : top
// Description : Intergration of the datapath, memory and control logic
// Author      : 
// Date: 2/8/2011
// Date Modified : 2/10/2011
///////////////////////////////////////////////////////////////////////////////////////
module top (clk, rst, LEDout);

	input clk, rst;
	output[15:0] LEDout;
	reg	[15:0] LEDout;
	wire  [17:0] out_ACIR, ouD_b, out_data, ouD_reg;
	wire  [17:0] ouD_add;
	wire  [12:0] ou_mar;
	wire pc_write, pc_read, inc_pc, ir_read, ir_write, ma_read;
	wire ma_write, md_read, md_write, ac_read, ac_write, mem_read;
	wire mem_write, alu_enable, stack_read, stack_write;
	wire inpr_read, outr_write, write_mem_md;
	wire flg_i,flg_o,glob_ie,en_i,en_o;
	wire [2:0]aluop, opcode;
	wire [17:0]in_intp, ouD_stck;  
  
	assign ouD_b = (stack_read)?ouD_stck:ouD_reg;
	 
	PC_MD mux1(ouD_reg,out_data,ouD_add,clk,rst,inc_pc,pc_read,
		pc_write,md_read,md_write,write_mem_md);
	 
	MAR mar1(ma_read,ma_write,clk,rst,out_data[12:0],ou_mar);
	 
	IR_AC mux(out_ACIR,out_data,clk,rst,inpr_read,outr_write,
	  ac_read,ac_write,ir_read,ir_write,opcode,flg_i,flg_o,in_intp);
	 
	Memory mem (ouD_add,out_data,ou_mar,clk,rst,mem_read,mem_write);
	 
	ALU alu1(out_ACIR, ouD_b,aluop,out_data,alu_enable);
	 
	ControlBlock cb (clk, rst,opcode,pc_write,pc_read,inc_pc,ir_read,ir_write,ma_read,
					 ma_write,md_read,md_write,ac_read,ac_write,mem_read,
					 mem_write,alu_enable,stack_read,stack_write,
					 inpr_read,outr_write,aluop,write_mem_md,flg_i,flg_o,glob_ie,en_i,en_o);
	 
	Stack stack1(ouD_stck,out_data,clk,rst,
		stack_read,stack_write);
	
	always @(posedge clk) begin
			LEDout <= out_data[15:0];
	end
			 
 endmodule
  
