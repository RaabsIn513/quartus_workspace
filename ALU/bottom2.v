module bottom2(l, m, n);

input     l, m;
output    n;
reg       n;

always
begin
     n<=l | m;
	end
endmodule
