module Memory_TestBench;
  //ouD_add, inD, in_adrs, clk, rst, re_en, wr_en
  reg clock, reset, enR, enW;
  reg[17:0] count;
  reg[17:0] dataIn;
  reg[12:0] dataAddr;
  wire[17:0] dataOut;
  
  initial begin
     dataIn = 18'd10;   // start with dataIn = 10;
     dataAddr = 13'd0;  // start at address 0
     enW = 1;           // intial Write
     enR = 0;   
     reset = 0;
     count = 0;
     clock = 0;   
  end
  
  always begin
    #5 clock = !clock;
  end
  
  always begin
    
    #10 count = count + 1;
    
    if( count == 50 ) begin
        enW = 1'b0;                 // the switch
        enR = 1'b1;
        dataAddr = 0;                // reset to the first address
        dataIn = 0;                  // no need for data in
    end
    
    if( enR == 1 ) begin
      #10 dataIn = 0;
      #10 dataAddr = dataAddr + 1;  // increment the address we're reading/writing
    end
    
    #10 dataAddr = dataAddr + 1;
    #10 dataIn = dataIn + 1;
    
  end
    
  // insert instance
  //ouD_add, inD, in_adrs, clk, rst, re_en, wr_en
  Memory U0 (
  .ouD_add(dataOut), 
  .inD(dataIn), 
  .in_adrs(dataAddr), 
  .clk(clock), 
  .rst(reset), 
  .re_en(enR),
  .wr_en(enW)
  );
  
endmodule