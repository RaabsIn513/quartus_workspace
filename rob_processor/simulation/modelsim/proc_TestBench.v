module proc_TestBench;
  //proc( clk, reset, LCD, lcdRS, lcdRW, lcdEn );
  
  reg clock, rst;
  wire[7:0] LCD;
  wire lcdRS, lcdRW, lcdEn;
  
  initial begin
    clock <= 0;
    #20 rst <= 1'b1;
    #20 rst <= 1'b0;
  end
  
  always begin
    #10 clock <= !clock;
  end
  //proc( clk, reset, LCD, lcdRS, lcdRW, lcdEn );
  proc U0(.clk(clock), .reset(rst), .LCD(LCD), .lcdRS(lcdRS), .lcdEn(lcdEn) );

  
endmodule