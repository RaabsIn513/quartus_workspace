module LCD_Driver_TestBench;
  
  //LCD_Driver(enable, clk, rst, dataIn, dataOut, RS, RW, enableOut );
  reg en, clock, reset;
  reg[17:0] inData;
  wire[7:0] outData;
  wire rs, rw, outEn;
  
  initial begin
    clock <= 1'b0;
    #5 reset <= 1'b0;
    #10 reset <= 1'b1;
    #15 reset <= 1'b0;
    inData <= 18'b101010101010101011;
  end
  
  always begin
    #5 clock <= !clock;
  end
  
  LCD_Driver U0( .enable(en), .clk(clock), .rst(reset), .dataIn(inData), .dataOut(outData), .RS(rs), .RW(rw), .enableOut(outEn) );
  
endmodule
