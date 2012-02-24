module shitBox();
task convert;
input [7:0] temp_in;
output [7:0] temp_out;
temp_out = (9/5) * ( temp_in + 32);
endtask
endmodule
