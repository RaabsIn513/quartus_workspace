module verilog_readmemb;
reg [31:0]  data_ram [0:7];
integer     ii;
initial begin
  $readmemb("test_data_bin.dat",data_ram);
  for (ii=0;ii<8;ii=ii+1) $display("%x",data_ram[ii]);
  $stop;
end
endmodule