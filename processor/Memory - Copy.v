
// Module name : Memory
// Description : This module implements memory


module Memory(ouD_add,inD,in_adrs,clk,rst,re_en,wr_en);
  
  input [17:0] inD;  //Input data
  input clk,rst,re_en,wr_en;
  input [12:0]in_adrs;//Input address
  output [17:0] ouD_add;
  reg [17:0] ouD_add;
  reg [17:0] Mem [12:0];  //Memory deeclaration
  
  always @(posedge clk)
  begin
    if(rst)
      begin             //Loading the values into memory on reset.
        ouD_add<=18'd0;
        $readmemb ("Test.txt",Mem);
      end
    else
      begin
        if(re_en && ~wr_en) //Memory read
          begin
            ouD_add<=Mem[in_adrs];
          end
        else if(~re_en && wr_en) //Memory write.
          begin
            Mem[in_adrs]<=inD;
          end
      end
    end
endmodule
            