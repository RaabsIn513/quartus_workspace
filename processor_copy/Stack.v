
// Module name	: Stack
// Description	: This block implements a four level stack. Data is pushed and popped 
//               the stack


module Stack(ou_stckD,in_stckD,clk,rst,
					re_en_stckD,wr_en_stckD);
  input [17:0] in_stckD;      //Input to the stack
  input clk,rst,re_en_stckD,wr_en_stckD;
  output [17:0] ou_stckD;    //Output of the stack
  reg [17:0] ou_stckD;
  reg [17:0] Stack [3:0];     
  reg [1:0] SP;                    //Stack pointer
  always @(posedge clk)
  begin
    if(rst)                        //Reset condition
      begin
        ou_stckD<=18'd0;
        SP<=2'd0;
       end
    else
      begin
        if(re_en_stckD)         //Pop operation
          begin
            SP<=SP-1;
            ou_stckD<=Stack[SP-1];
          end
        else if(wr_en_stckD)    //Push operation
          begin
            Stack[SP]<=in_stckD;
            SP<=SP+1;
          end
      end
    end
endmodule
            