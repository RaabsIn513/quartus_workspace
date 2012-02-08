module SimpleCounter( clock, reset, count );
	input clock;
	input reset;
	output [2:0] count; 
	reg [2:0] count; 
	/* use positive clock edge for counter */ 
	always @(posedge clock or  posedge reset) 
	begin 
		if  (reset) 
			count = 0;  /* Reset Counter */ 
		else if  ( count < 3'b111 )  /* Check for maximum count */
			count = count + 1;  /* Increment Counter */ 
		else 
			count = 0;  /*  Counter set back to 0*/ 
	end 
endmodule
