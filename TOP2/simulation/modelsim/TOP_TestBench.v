module TOP_TestBench;

reg clk, rst;
wire[17:0] aluOut;
TOP top1 (clk,rst, aluOut); //instantiation
  initial
    begin
      rst<=1'b1;
      clk<=1'b0;
      #15 rst<=1'b0;
       rst<=1'b1;
      #50 rst<=1'b0;
    end
  always //clock
  #5 clk<=~clk;

endmodule
