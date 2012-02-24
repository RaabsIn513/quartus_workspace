module LCD_TestBench;
  //dataIn, dataOut, clk, en, RW, RS, rst, BLON, led
  reg[7:0]  inData;
  wire[7:0] outData;
  wire en, RW, RS, BackL;
  wire[7:0] gLed;
  reg rst, clock;
  
  initial begin
    #15 inData <= 8'd0;
    #15 rst <= 1;
    //#20 rst <= 0;
    #10 clock <= 0;
  end
  
  always begin
    #5 clock = !clock;
  end
  
  LCD_Driver U0( .dataIn(inData), .dataOut(outData), .en(en), .RW(RW), .RS(RS), .rst(rst), .clk(clock), .BLON(BackL), .LEDs(gLed) );
  
endmodule