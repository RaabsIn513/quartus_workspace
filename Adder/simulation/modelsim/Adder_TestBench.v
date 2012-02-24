module Adder_TestBench;
  
  reg clock;
  reg[7:0] datA, datB;
  wire[7:0] datZ;
  
  initial begin
    #5 clock = 0;
    #5 datA = 4;
    #5 datB = 9;
  end
  
  always begin
    #5 clock = !clock;
  end
  
  // insert instance
  
  Adder U0 (
    .dataa( datA ),
    .datab( datB ),
    .clk( clock ),
    .result( datZ )
  );
  
endmodule