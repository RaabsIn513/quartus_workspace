
// Module name : tb_top
// Description : test for the Intergrated datapath, memory and control logic


module tb_top;
  
  reg clk, rst,glob_ie,en_i,en_o;
  reg [17:0] in_intp;
  top top1 (clk,rst); //instantiation
  
  initial
	begin
		rst <= 1'b1;
		in_intp <= 18'd0;
		clk <= 1'b0;
		#15 rst <= 1'b0;
		#800 glob_ie <= 1'b1;
		en_o <= 1'b1;
		
		#40
		rst <= 1'b1;
		#50
		rst <= 1'b0;
		en_i <= 1'b1;
		en_o <= 1'b0;
		in_intp <= 18'd5;
	end
  
  always                    //clock
  #5 clk<=~clk;
  
endmodule