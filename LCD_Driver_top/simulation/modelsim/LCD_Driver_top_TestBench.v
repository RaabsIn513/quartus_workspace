module LCD_Driver_top_TestBench;
  
  //module LCD_top( clk, switches, rstBt, LCD, LEDs, en, RS, RW );
  reg clock, reset;
  reg[17:0] inData;
  wire[7:0] dataOut;
  wire[9:0] LEDs;
  wire RS, RW, en;  
  
  initial begin
    clock <= 1'b0;
    #5 reset <= 1'b0;
    #25 reset <= 1'b1;
    #20 inData <= 17'b000111000111000111;
  end
  
  always begin
    #5 clock <= !clock;
  end
  
  // LCD_top( clk, switches, rstBt, LCD, LEDs, en, RS, RW );
  LCD_top U0( .clk(clock), .switches(inData), .rstBt(reset), .LCD(dataOut), .LEDs(LEDs), .en(en), .RS(RS), .RW(RW) );
  
endmodule