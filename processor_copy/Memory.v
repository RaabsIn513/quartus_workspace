
// Module name : Memory
// Description : This module implements memory


module Memory(outD,inD,address,clk,rst,re_en,wr_en);
  
  input [17:0] inD;              //Input data
  input clk,rst,re_en,wr_en;
  input [12:0]address;          	//I/O Address
  output [17:0] outD;
  reg [17:0] outD;
  //reg [17:0] Mem [12:0];       //Memory declaration
  //reg [17:0] Mem [8191:0];     //Memory declaration (A 13 bit address has this many values)
  reg [17:0] Mem [127:0];       	//Memory declaration
  
  always @(posedge clk)
  begin
    if(rst)
      begin             //Loading the values into memory on reset.
        //Mem[in_adrs]<=18'd0;
        //$readmemb ("Test.dat",Mem); // <--- I don't think this works!
		  
		  // *** This is how we program *** //
		  Mem[0]  <= 18'b001000000000000011;			// LOAD 3 into AC
		  Mem[1]  <= 18'b000000000000000011;			// ADD  3 with AC
		  Mem[2]  <= 18'b111000000000000000;
		  Mem[3]  <= 18'b111000000000000000;
		  Mem[4]  <= 18'b111000000000000000;
		  Mem[5]  <= 18'b111000000000000000;
		  Mem[6]  <= 18'b111000000000000000;
		  Mem[7]  <= 18'b111000000000000000;
		  Mem[8]  <= 18'b111000000000000000;
		  Mem[9]  <= 18'b111000000000000000;
		  Mem[10] <= 18'b111000000000000000;
		  Mem[11] <= 18'b111000000000000000;
		  Mem[12] <= 18'b111000000000000000;
		  Mem[20] <= 18'b000000000000000111;			//The integer 7
		  Mem[21] <= 18'b000000000000000011;			//The integer 3
      end
    else
      begin
        if(re_en && ~wr_en) //Memory read
          begin
				$display("Mem["+ address +"]: " + Mem[address]);
            outD<=Mem[address];
          end
        else if(~re_en && wr_en) //Memory write.
          begin
            Mem[address]<=inD;
          end
      end
    end
endmodule
            