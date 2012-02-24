
// Module name : ControlBlock
// Description : This module generates the control signals for the entire processor. 
//               Depending on the instruction the signals are asserted or deaaserted 
//               for desired functionalities.



module ControlBlock(clk,rst,opcode,wr_pc,re_pc,pc_inc,re_ir,wr_ir,re_ma,
                     wr_ma,re_md,wr_md,
                     re_ac,wr_ac,re_mem,wr_mem,en_alu,re_stck,wr_stck,
                     re_inpr,wr_ouR,aluop,wr_md_mem,flg_i,flg_o,en_glbe,en_i,en_o);
	input clk,rst,en_i,en_o,en_glbe,flg_i,flg_o; //Inputs
	input [2:0] opcode;
	output wr_pc,re_pc,pc_inc,re_ir,wr_ir,re_ma,wr_ma,re_inpr,wr_ouR;
	output re_md,wr_md,re_ac,wr_md_mem;
	output wr_ac,re_mem,wr_mem,en_alu,wr_stck,re_stck;
	output [2:0] aluop;    //Select line for the ALU
	reg wr_pc,re_pc,pc_inc,re_ir,wr_ir,re_ma,wr_ma,re_md,re_inpr,wr_ouR;
	reg wr_md, re_ac,wr_ac,re_mem;
	reg wr_mem,en_alu,wr_md_mem;
	reg wr_stck;   
	reg re_stck;    
	reg [3:0] count;       //Count for the number of cycles.
	reg [2:0] aluop;
	wire [2:0] opcode;

	always @(posedge clk)
		begin
		if(rst)               //Asserting all signals to be zero on reset
			begin
			wr_pc<=0;
			re_pc<=0;
			pc_inc<=0;
			re_ir<=0;
			wr_ir<=0;
			count<=3'b0;
			re_ma<=0;
			wr_ma<=0;
			re_md<=0;
			wr_md<=0;
			re_ac<=0;
			wr_ac<=0;
			re_mem<=0;
			re_stck<=1'b0;
			wr_mem<=0;
			en_alu<=0;
			re_inpr<=1'b0;
		end
/*
		else if(en_glbe)                   //When global interrupt enable is present.
			begin
				 if(en_i & flg_i)     //Checking input interrupt
					begin
					  en_alu<=1'b1;
					  case(count)
						4'd0:
						begin
						 re_ir<=1'b0;   //Read the input into the bus
						 re_inpr<=1'b1;
						 aluop<=3'd1;
						 count<=count+1'b1;
						end
						4'd1:
						begin
						 wr_ac<=1'b1;
						 re_inpr<=1'b0;  //Store it into the accumulator
						 count<=count+1'b1;
						end  
						4'd2:
						begin
						  wr_ac<=1'b0;  
						  count<=4'd0;
					  end
					endcase
				end
			
				 else if(en_o & flg_o)    //Output interrupt
				 begin             
				case(count)
					4'd0:
					begin
					 re_ir<=1'b0;        //Read the accumulator and put it into the bus
					 re_ac<=1'b1;
					 aluop<=3'd1;
					 count<=count+1'b1;
					end
							
					4'd1:
				  begin
					re_ac<=1'b0;        //Write it into the accumulator
					wr_ouR<=1'b1;
					count<=count+1'b1;
					end  
					
					4'd2:
					begin
					wr_ouR<=1'b0;
					count<=4'd0;
				 end  
				 endcase
			  end
			end	  
		  else        
		
	*/		
			begin
			  case(count)
			  4'd0:                    //Count=0
				begin
				re_pc<=1'b1;				//Reading the value from the PC
				wr_ma<=1'b0;       		
				en_alu<=1'b1;
				aluop<=3'd3;
				count<=count+1'b1;
				end
				
			  4'd1:                    //Count=1
				begin
				re_pc<=1'b0;        		//Writing to memory address register
				wr_ma<=1'b1;
				count<=count+1'b1;
				end
				
			  4'd2: 							//Count=2
			   begin              
				pc_inc<=1'b1;         	//Increment PC
				wr_ma<=1'b0;
				re_mem<=1'b0;
				re_ma<=1'b1;        		//Reading the memory address
				count<=count+1'b1;
				end
				
			  4'd3: 
			   begin              		//Count=3
				pc_inc<=1'b0;
				wr_ma<=1'b0;
				re_mem<=1'b1;       		// Read instruction from memory
				re_ma<=1'b0;
				count<=count+1'b1;
				end
				
			  4'd4:                   	//Count=4
				begin
				re_mem<=1'b0;     
				re_ma<=1'b0;        		//Writing into MD
				wr_md_mem<=1'b1;
				count<=count+1'b1;
				end
				
			  4'd5:                   	//Count=5
				begin
				wr_md_mem<=1'b0;
				re_md<=1'b1;				//Reading from MD.
				aluop<=3'd3;
				count<=count+1'b1;
			  end
			  
			  4'd6:             			//Count=6
			  begin
				wr_ir<=1'b1;       		//Writing into IR.
				re_md<=1'b0;
				aluop<=3'd3;
				count<=count+1'b1;
			  end
			  
			  // ----------- OPCODE determined behavior (Execute) ----------- //
				4'd7:									//Count=7
				begin
				  if(opcode==3'b000) 			//ADD
					  begin
						wr_ir<=1'b0;
						re_ir<=1'b1;  				//Read the IR register
						aluop<=3'd1;
						count<=count+1'b1;
					  end
				  else if(opcode==3'b001)		//Load
					  begin
						wr_ir<=1'b0;
						re_ir<=1'b1;
						aluop<=3'd1;
						count<=count+1'b1;      
					  end
					else if(opcode==3'b010)		//Store
						begin
						wr_ir<=1'b0;
						re_ir<=1'b1;
						aluop<=3'd1;
						count<=count+1'b1;      
						end
					else if (opcode==3'b011) 	//Call
						begin
						wr_ir<=1'b0;
						 count<=count+1'b1;
						end
					else if (opcode==3'b100)	//Return
						begin
						 wr_ir<=1'b0;
						 count<=count+1'b1;
						end
				end
				 
			  4'd8:            					//Count=8
			  begin
				if(opcode==3'b000)  				//ADD
				begin
				  re_ir<=1'b0;   					//Write the address to MAR
				  wr_ma<=1'b1;
				  aluop<=3'd0;
				  count<=count+1'b1;      
				end
			  else if (opcode==3'b001)			//Load
				begin
				  re_ir<=1'b0;    				//Write the address to MAR
				  wr_ma<=1'b1;
				  aluop<=3'd1;
				  count<=count+1'b1;      
				end
				else if (opcode==3'b010)		//Store
				  begin
					re_ir<=1'b0;
					wr_ma<=1'b1; 					//Write the address to MAR
					aluop<=3'd2;
					count<=count+1'b1;      
				  end
				else if (opcode==3'b011)		//Call
				  begin
					count<=count+1'b1;
				  end
			  else if (opcode==3'b100)			//Return
				begin
					count<=count+1'b1;    		//Incrementing count
				end
			  end
			  
			  4'd9:            					//Count=9
			  begin 
			   if(opcode==3'b000)  				//ADD
					begin
					 wr_ma<=1'b0;
					 re_ma<=1'b1;     			//Reading the MAR
					 re_mem<=1'b0;
					 count<=count+1'b1;
					end
				  else if (opcode==3'b001)		//Load
					begin
					 wr_ma<=1'b0;
					 re_ma<=1'b1;    
					 re_mem<=1'b0;
					 count<=count+1'b1;
				 end
				
				else if (opcode==3'b010)  		//Store
				begin
				  wr_ma<=1'b0;
				  re_ma<=1'b1;
				  re_mem<=1'b0;
				  count<=count+1'b1;     
				 end
				
				else if (opcode==3'b011) 		//Call
				 begin
					wr_ma<=1'b0;
					re_ir<=1'b0;
					re_pc<=1'b1;     				//Reading the PC value onto the bus.
					aluop<=3'd3;
					count<=count+1'b1;
				 end
				 
				else if (opcode==3'b100) 		//Return
				 begin
				  re_ir<=1'b0;     				//Reading the stack value.
				  re_stck<=1'b1;
				  aluop<=3'd3;
				  count<=count+1'b1;
				 end

			  end
					
			 4'd10:           					//Count=10
			 begin
				  if(opcode==3'd0)				//ADD
					begin
					re_ma<=1'b0;    				//Memory read
					re_mem<=1'b1;
					count<=count+1'b1;
					end
					
					else if (opcode==3'b001)	//LOAD
					begin
					re_ma<=1'b0;
					re_mem<=1'b1;    				//Memory read
					count<=count+1'b1;
					end
				
				else if (opcode==3'b010)		//STORE
				 begin
				  re_ac<=1'b1;     				//Reading the accumulator
				  re_ma<=1'b0;
				  count<=count+1'b1;  
				 end
				
				else if (opcode==3'b011)		//CALL
				 begin
				 re_pc<=1'b0;      				//Writing to the stack
				 wr_stck<=1'b1;
				 aluop<=3'd3;
				 count<=count+1'b1;
				 end
				 else if (opcode==3'b100)		//RETURN
				 begin
				 wr_pc<=1'b1;     				//Reading from stack
				 re_stck<=1'b1;
				 aluop<=3'd3;
				 count<=count+1'b1;
				 end
			  end
				
				4'd11:         					//Count=11
				begin
				   if(opcode==3'b000)			//ADD
				   begin
					re_mem<=1'b0;
					re_ac<=1'b1;     				//Writing into MD
					wr_md_mem<=1'b1;
					aluop<=3'b000;
					count<=count+1'b1;
					end
				
					else if (opcode==3'b001)
					begin
					re_mem<=1'b0;     			//Writing into MD
					wr_md_mem<=1'b1;
					count<=count+1'b1;
					end
				
					else if (opcode==3'b010)
					begin
					re_ac<=1'b0;
					wr_md<=1'b1;   				//MD write
					count<=count+1'b1; 
					end
				 
					else if (opcode==3'b011)
					begin
					re_ir<=1'b1;     				//Reading from the IR.
					aluop<=3'd1;
					wr_stck<=1'b0;
					count<=count+1'b1;
					end
					
				   else if (opcode==3'd4)
					begin
					re_stck<=1'b0;  
					wr_pc<=1'b0;
					count<=4'd0;
					end
			  end
			  
			  4'd12:               				//Count=12
			  begin
				  if(opcode==3'b000)
				  begin
					 re_ac<=1'b0;
					 wr_md_mem<=1'b0;  			//Writing the accumulator
					 wr_ac<=1'b1;
					 count<=count+1'b1;
				  end
				  
				  else if (opcode==3'b001)
				  begin
					wr_ac<=1'b1;
					wr_md_mem<=1'b0;  			//Writing the accumulator
					count<=count+1'b1;
				  end
					
				  else if (opcode==3'b010)
				  begin
					wr_mem<=1'b1;      			//Memory write
					wr_md<=1'b0;
					count<=count+1'b1; 
				  end
					  
				  else if (opcode==3'b011)
				  begin
					re_ir<=1'b0;
					wr_pc<=1'b1;        			//Writing to PC
					count<=count+1'b1;
				  end
			  end
				
			 4'd13:                  			//Count=13
			 begin
				re_ir<=1'b0;
				wr_pc<=1'b0;      				//Done
				wr_ac<=1'b0;
				wr_mem<=1'b0;
				count<=4'd0;						//Reset count
			 end

		  endcase
		end
	end
endmodule