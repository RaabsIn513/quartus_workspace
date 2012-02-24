
// Module name : tb_top
// Description : test for the Intergrated datapath, memory and control logic


module tb_top;
  
  reg clk, rst;
  wire[15:0] LEDs;
  top top1 (clk,rst, LEDs); //instantiation
  
  initial
	begin
		rst <= 1'b1;
		clk <= 1'b0;
		#15 rst <= 1'b0;
		end
  
  always                    //clock
  #5 clk<=~clk;
  
endmodule