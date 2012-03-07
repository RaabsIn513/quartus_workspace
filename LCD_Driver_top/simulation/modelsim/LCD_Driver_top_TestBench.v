module LCD_Driver_top_TestBench;
  
  //module LCD_top( clk, rstBt, LCD, LEDs, en, RS, RW );
  reg clock, reset;
  wire[7:0] dataOut;
  wire[9:0] LEDs;
  wire RS, RW, en;  
  
  initial begin
    clock <= 1'b0;
    #5 reset <= 1'b0;
    #265 reset <= 1'b1;
  end
  
  always begin
    #5 clock <= !clock;
  end
  
  // LCD_top( clk, rstBt, LCD, LEDs, en, RS, RW );
  LCD_top U0( .clk(clock), .rstBt(reset), .LCD(dataOut), .LEDs(LEDs), .en(en), .RS(RS), .RW(RW) );
  
endmodule