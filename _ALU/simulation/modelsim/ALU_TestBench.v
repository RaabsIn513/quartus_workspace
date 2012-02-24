module ALU_TestBench;
  
  reg clock;
  reg[17:0] A, B;
  reg[3:0] control;
  wire[17:0] res;
  wire Neg;
  wire Zero;
  wire AgthanB;
  wire overflow;
  
  initial begin
    #5 clock = 0;
    #5 A = 14;
    #5 B = 29;
    #5 control = 4'b0001;  // 000: add, 001: sub, 010: mult, 011: div
  end
  
  always begin
    #5 clock = !clock;
  end
  
  // insert instance
  
  ALU U0 (
	.datA(A),
	.datB(B),
	.ctrl(control),
	.clk(clock),
	.result(res),
	.ovf(overflow),
	.AgtB(AgthanB),
	.N(Neg),
	.Z(Zero)
  );
  
endmodule