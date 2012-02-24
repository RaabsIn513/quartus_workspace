module clkDiv_TestBench;
  
  reg fClk;
  wire sClk;
  
  initial begin
    #10 fClk <= 0;
  end
  
  always begin
    #10 fClk = !fClk;
  end
  
  clkDiv U0( .clkIn(fClk), .clkOut(sClk) );

  
endmodule