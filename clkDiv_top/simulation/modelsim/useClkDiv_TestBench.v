module useClkDive_TestBench;
  
  reg clock;
  wire gLED;
  
  initial begin
    #10 clock = 0;
  end
  
  always begin
    #10 clock = !clock;
  end
  
  useClkDiv U0( .clk50(clock), .LED(gLED) );
  
endmodule