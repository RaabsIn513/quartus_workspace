module useClkDive_TestBench;
  
  reg clock;
  wire gLED;
  
  initial begin
    #10 clock <= 0;
  end
  
  always begin
    #10 clock <= !clock;
  end
  
endmodule