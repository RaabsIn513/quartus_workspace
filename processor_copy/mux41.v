
// Module name : mux41
// Description : This block implements the PC and MD registers.


module mux41(out_data,in_data,in_data_mem,clk,rst,inc_pc,
              read_pc_en,write_pc_en,read_md_en,write_md_en,write_mem_md);
  input [17:0] in_data,in_data_mem;
  input clk,rst,inc_pc,read_pc_en,write_pc_en,read_md_en,write_md_en,write_mem_md;
  output [17:0] out_data;
  reg [17:0] out_data;     //Output data
  reg [12:0] PC;           //Program counter
  reg [17:0] MD;           //Memory data register
  
  always @(posedge clk)
  begin
    if(rst)                //Reset condition
      begin
       PC<=13'd0;
       MD<=18'd0;
       out_data<=18'd0;
      end
    else
      begin
        if(read_md_en)    //Reading MD value
          out_data<=MD;
        else if (write_mem_md) //Writing MD from the output of memory
          MD<=in_data_mem;
        else if(write_md_en)  //Writing MD from the data bus.
          MD<=in_data;
        else if(read_pc_en)   //Output the value of PC
          out_data<=PC;
        else if(write_pc_en)  //Writing PC
         PC<=in_data[12:0];
         if (inc_pc)          //PC increment
         PC<=PC+1;
      end
    end
endmodule
