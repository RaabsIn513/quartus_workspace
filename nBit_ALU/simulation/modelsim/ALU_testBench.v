module ALU_testBench;
  
  reg clock;
  reg[17:0] Adata;
  reg[17:0] Bdata;
  reg[17:0] Zdata;
  reg overf;
  reg isZ;
    
  initial 
  begin
    #5 clock = 0;
    #5 Adata = 14;
    #5 Bdata = 16;
    #5 Zdata = 0;
    #5 overf = 0;
    #5 isZ = 0;
  end
  
  always begin
    #5 clock = !clock;
  end
  
  // bring in the instance of the alu
  ALU U0 (
    .A(Adata),
    .B(Bdata),
    .ALU_out(Zdata), 
    .ovf(overf), 
    .isZero(isZ),
    .clk( clock )
  );
  
endmodule