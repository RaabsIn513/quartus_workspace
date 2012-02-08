module simpleMux(A, B, mux_control, mux_out); 
input A;  /* Input Signals and Mux Control */
input B;
input mux_control;
output mux_out; 
reg mux_out; 

always @(A or B or mux_control)

	case( mux_control )
		0: mux_out = A;
		1: mux_out = B;
		default: mux_out = A;
	endcase

endmodule
	
