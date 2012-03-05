
// Module name : Memory
// Description : This module implements memory


module Memory(DataOut,DataIn,address,clk,rst,re_en,wr_en);
  
  input [17:0] DataIn;              //Input data
  input clk,rst,re_en,wr_en;
  input [12:0]address;          	//I/O Address
  output [17:0] DataOut;
  reg [17:0] DataOut;
  //reg [17:0] Mem [12:0];       //Memory declaration
  reg [17:0] Mem [15:0];       //Memory declaration (A 13 bit address has this many values)
  
  always @(posedge clk)
  begin
    if(rst)
      begin             //Loading the values into memory on reset.
        //Mem[in_adrs]<=18'd0;
        //$readmemb ("Test.dat",Mem); // <--- I don't think this works!
		  
		  // *** This is how we program *** //
		  Mem[0]  <= 18'b001010000000001101;			// LOAD  contents of Mem address 13 into AC
		  Mem[1]  <= 18'b000010000000001110;			// ADD   contents of Mem address 14 with AC
		  Mem[2]  <= 18'b010010000000001111;			// STORE contents of AC to Mem address 15
		  Mem[3]  <= 18'b111000000000000000;			// NOP   No Operation
		  Mem[4]  <= 18'b111000000000000001;			// NOP   No Operation			
		  Mem[5]  <= 18'b111000000000000010;			// NOP   No Operation
		  Mem[6]  <= 18'b111000000000000011;			// NOP   No Operation
		  Mem[7]  <= 18'b111000000000000100;
		  Mem[8]  <= 18'b111000000000000101;
		  Mem[9]  <= 18'b111000000000000110;
		  Mem[10] <= 18'b111000000000000111;
		  Mem[11] <= 18'b111000000000001000;
		  Mem[12] <= 18'b111000000000001001;
		  Mem[13] <= 18'b000000000000101010;			//The integer 42
		  Mem[14] <= 18'b000000000000000011;			//The integer 3
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
            