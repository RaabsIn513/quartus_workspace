module bottom1(a, b, c);

input     a, b;
output     c;
reg      c;

always
begin
     c<=a & b; 
	end 
endmodule