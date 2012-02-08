module RippleAdder
(
	input [1:0] A,
	input [1:0] B,
	output [2:0] sum
);	
	
	wire[2:0] carry_out;
	
	full_adder fa0 (.a(A[0]), .b(B[0]), .cin(1'b0),
						 .cout(carry_out[1]), .sum(sum[0]) );
	full_adder fa1 (.a(A[1]), .b(B[1]), .cin(carry_out[1]),
						 .cout(carry_out[2]),.sum(sum[1]));
	
	assign sum[2] = carry_out[2];
endmodule

module full_adder
(
  input  a,
  input  b,
  input  cin,
  output sum,
  output cout
);
 
assign sum = a ^ b ^ cin;
assign cout = (a & b) | ((a^b) & cin);
 
endmodule

