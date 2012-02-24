//////////////////////////////////////////////////////////////////////////////////////
//
// Module name : mux21
// Description : This block implements IR,AC,INPR and OUTR registers.
// Author      : Shaival Jhaveri
// Date: 2/8/2011
// Date Modified : 2/10/2011
///////////////////////////////////////////////////////////////////////////////////////


module mux21(ouD,inD,clk,rst,re_en_inpr,wr_en_outr,re_en_ac,
             wr_en_ac,re_en_ir, wr_en_ir,opcode,flg_i,flg_o,in_intp);

	input [17:0] inD,in_intp; //Inputs for input register and other registers.
	input clk,rst,re_en_ac,re_en_inpr,wr_en_outr,wr_en_ac, re_en_ir,wr_en_ir;
	output [17:0] ouD;          		//Common output of the module
	output [2:0]opcode;              //Opcode of the instruction
	output flg_i,flg_o;            	//Flag bits for input and output interrupts.
	reg flg_i,flg_o;
	reg [2:0] opcode;
	reg [17:0] ouD;             		// Output data
	reg [17:0] inpr,outr,AC,IR;      // The registers.
  
	  always @(posedge clk)
	  begin
		if(rst)                      //Reset condition.
		  begin
		   outr<=18'd0;
		   AC<=18'd54;
		   IR<=18'd0;
		   inpr<=18'b0;
		   ouD<=18'd0;
		  end
		else
		  begin
			inpr<=in_intp;
			 opcode<=IR[17:15];
			  if(inpr==18'd0)        //Assigning Input flag
				flg_i<=1'b0;
			else
			  flg_i<=1'b1;
			  if (outr==18'b0)       //Assigning output flag
				flg_o<=1'b1;
			  else
				flg_o<=1'b0;
			if(re_en_inpr)       //Output inpr on read enable
			  ouD<=inpr;
			else if(wr_en_outr) // Write data into output register
			 outr<=inD;
			else if(re_en_ac)    //Output the Accumulator value
			  ouD<=AC;
			else if(wr_en_ac)   //Write the input into accumulator
			 AC<=inD;
			else if(re_en_ir)    //Read the IR value
			  ouD<=IR;
			else if(wr_en_ir)   //Write the instruction register on enable
			  IR<=inD;
		  end
		end
endmodule
