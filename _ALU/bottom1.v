module bottom1(a, b, c);

input     a, b;
output    c;
reg C;
always
begin
     C<=a & b; 
	end
	
	c <= C;
endmodule
