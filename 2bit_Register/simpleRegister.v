module simpleRegister(dataIn, clock, enable, reset, dataOut);

 	input [1:0] dataIn; 
	input clock;
	input enable;
	input reset;
   output [1:0] dataOut;
	reg[1:0] dataOut;
 
always @(posedge clock or posedge reset) 
	if (reset) 
		dataOut = 2'b00; 
	else if  (enable) 
		dataOut = dataIn; 
	
endmodule
		