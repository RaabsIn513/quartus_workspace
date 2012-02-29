
// Module name : Memory
// Description : This module implements memory


module Memory(DataOut,DataIn,address,clk,rst,re_en,wr_en);
  
  input [17:0] DataIn;              //Input data
  input clk,rst,re_en,wr_en;
  input [12:0]address;          	//I/O Address
  output [17:0] DataOut;
  reg [17:0] DataOut;
  //reg [17:0] Mem [12:0];       //Memory declaration
  reg [17:0] Mem [127:0];       //Memory declaration (A 13 bit address has this many values)
  
  always @(posedge clk)
  begin
    if(rst)
      begin             //Loading the values into memory on reset.
        //Mem[in_adrs]<=18'd0;
        //$readmemb ("Test.dat",Mem); // <--- I don't think this works!
		  
		  // *** This is how we program *** //
		  Mem[0]  <= 18'b001000000000010100;			// LOAD contents of Mem address 20 into AC
		  Mem[1]  <= 18'b000000000000001011;			// ADD  contents of Mem address 21 with AC
		  Mem[2]  <= 18'b000000000000111000;
		  Mem[3]  <= 18'b001010000000010100;			// LOAD contents of Mem address 20 into AC
		  Mem[4]  <= 18'b000010000000010101;			// ADD  contents of mem address 21 with AC			
		  Mem[5]  <= 18'b000000000000000000;
		  Mem[6]  <= 18'b000000000000000000;
		  Mem[7]  <= 18'b000000000000000000;
		  Mem[8]  <= 18'b000000000000000000;
		  Mem[9]  <= 18'b000000000000000000;
		  Mem[10] <= 18'b000000000000000000;
		  Mem[11] <= 18'b000000000000000000;
		  Mem[12] <= 18'b000000000000000000;
		  Mem[20] <= 18'b000000000000101010;			//The integer 42
		  Mem[21] <= 18'b000000000000000011;			//The integer 3
      end
    else
      begin
        if(re_en && ~wr_en) //Memory read
          begin
            DataOut<=Mem[address];
          end
        else if(~re_en && wr_en) //Memory write.
          begin
            Mem[address]<=DataIn;
          end
      end
    end
endmodule
            