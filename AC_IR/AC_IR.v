module AC_IR(out_data,in_data,clk,rst,read_inpr_en,write_outr_en,read_ac_en,
write_ac_en,read_ir_en,
write_ir_en,opcode,I_flag,O_flag,inpr_input);

	input [17:0] in_data,inpr_input; //Inputs for input register and other registers.
	input clk,rst,read_ac_en,read_inpr_en,write_outr_en,write_ac_en,
			read_ir_en,write_ir_en;
	output [17:0] out_data; 			//Common output of the module
	output [2:0]opcode; 					//Opcode of the instruction
	output I_flag,O_flag; 				//Flag bits for input and output interrupts.
	reg I_flag,O_flag;
	reg [2:0] opcode;
	reg [17:0] out_data; 				// Output data
	reg [17:0] inpr,outr,AC,IR; 		// The registers.

always @(posedge clk)
	begin
	if(rst) //Reset condition.
		begin
			outr<=18'd0;
			AC<=18'd54;
			IR<=18'd0;
			inpr<=18'b0;
			out_data<=18'd0;
		end
	else
		begin
			inpr<=inpr_input;
			opcode<=IR[17:15];
			if(inpr==18'd0) //Assigning Input flag
				I_flag<=1'b0;
			else
				I_flag<=1'b1;
			if (outr==18'b0) //Assigning output flag
				O_flag<=1'b1;
			else
				O_flag<=1'b0;
			if(read_inpr_en) //Output inpr on read enable
				out_data<=inpr;
			else if(write_outr_en) // Write data into output register
				outr<=in_data;
			else if(read_ac_en) //Output the Accumulator value
				out_data<=AC;
			else if(write_ac_en) //Write the input into accumulator
				AC<=in_data;
			else if(read_ir_en) //Read the IR value
				out_data<=IR;
			else if(write_ir_en) //Write the instruction register on enable
				IR<=in_data;
			end
	end
endmodule
