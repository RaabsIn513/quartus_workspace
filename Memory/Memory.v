
// Module name : Memory
// Description : This module implements memory


module Memory(ouD_add,inD,in_adrs,clk,rst,re_en,wr_en);
  
  input [17:0] inD;             //Input data
  input clk,rst,re_en,wr_en;
  input [12:0]in_adrs;          //Input address
  output [17:0] ouD_add;
  reg [17:0] ouD_add;
  reg [17:0] Mem [12:0];        //Memory deeclaration
  
  always @(posedge clk)
  begin
    if(rst)
      begin             //Loading the values into memory on reset.
        //Mem[in_adrs]<=18'd0;
        //$readmemb ("Test.dat",Mem); // <--- I don't think this works!
		  
		  // *** This is how we program *** //
		  Mem[0]  <= 18'b000000000000000000;
		  Mem[1]  <= 18'b001000000000000011;
		  Mem[2]  <= 18'b011000000000000001;
		  Mem[3]  <= 18'b000000000000000000;
		  Mem[4]  <= 18'b000000000000000000;
		  Mem[5]  <= 18'b000000000000000000;
		  Mem[6]  <= 18'b000000000000000000;
		  Mem[7]  <= 18'b000000000000000000;
		  Mem[8]  <= 18'b000000000000000000;
		  Mem[9]  <= 18'b000000000000000000;
		  Mem[10] <= 18'b000000000000000000;
		  Mem[11] <= 18'b000000000000000000;
		  Mem[12] <= 18'b111111111111111111;
		  
      end
    else
      begin
        if(re_en && ~wr_en) //Memory read
          begin
				$display("Mem["+ in_adrs +"]: " + Mem[in_adrs]);
            ouD_add<=Mem[in_adrs];
          end
        else if(~re_en && wr_en) //Memory write.
          begin
            Mem[in_adrs]<=inD;
          end
      end
    end
endmodule
            