module blockEd ( in_pin, out_pin );
	input in_pin;
	output out_pin;
	
	assign out_pin = ~in_pin;

endmodule
