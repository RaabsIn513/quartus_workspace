module TOP_TestBench;

reg clk, rst;
reg [17:0] inpr_input;
TOP top1 (clk,rst,inpr_input); //instantiation
  initial
    begin
      rst<=1'b1;
      inpr_input<=18'd0;
      clk<=1'b0;
      #15 rst<=1'b0;
       rst<=1'b1;
      #50 rst<=1'b0;
      inpr_input<=18'd5;
    end
  always //clock
  #5 clk<=~clk;

endmodule
