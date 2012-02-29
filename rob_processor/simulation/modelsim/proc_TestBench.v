module proc_TestBench;
  //clk, reset, LEDs
  
  reg clock, rst;
  wire[9:0] lights;
  
  initial begin
    clock <= 0;
    #20 rst <= 1'b1;
    #20 rst <= 1'b0;
  end
  
  always begin
    #10 clock <= !clock;
  end
  
  proc U0(.clk(clock), .reset(rst), .LEDs(lights) );

  
endmodule