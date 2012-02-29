module ControlBlock( clk, reset, rMAR, wMAR, rMem, wMem, rMDR, wMDRmem, wMDRbus, rPC, wPC, incPC, rIR, wIR, rAC, wAC, cALU, eALU, getInst );
	
	input clk, reset;
	input[17:0] getInst;			// get Instruction
	output rMAR, wMAR;
	output rMem, wMem;
	output rMDR, wMDRmem, wMDRbus; 
	output rPC, wPC, incPC;
	output rIR, wIR;
	output rAC, wAC;
	output[2:0] cALU;
	output eALU;
	
	reg rMAR, wMAR;
	reg rMem, wMem;
	reg rMDR, wMDRmem, wMDRbus; 
	reg rPC, wPC, incPC;
	reg rIR, wIR;
	reg rAC, wAC;
	reg[2:0] cALU;
	reg[3:0] count;
	reg eALU;	
	reg[17:0] instruction;
	
	always @(posedge clk) begin		// Takes the value off of aluOutBus when 	
		if( wIR ) begin
			instruction = getInst;
		end									// see top level proc.v
	end
	
	always @(negedge clk ) begin
		if( reset ) begin
			count <= 4'd0;
			incPC <= 1'b0;
			rMAR	<= 1'b0;
			wMAR	<= 1'b0;
			rMem  <= 1'b0;
			wMem  <= 1'b0;
			rMDR 	<= 1'b0;
			wMDRmem <= 1'b0;
			wMDRbus <= 1'b0;
			rPC   <= 1'b0;
			wPC   <= 1'b0;
			rIR   <= 1'b0;
			wIR	<= 1'b0;
			rAC   <= 1'b0;
			wAC   <= 1'b0;
			cALU  <= 3'd0;
			eALU  <= 1'b0;
		end
		else if( ~reset )
			begin
				case(count)
				4'd0:								// NOTE TO SELF: Signals are commited in the next state. Reg are out immediately
				begin								// FETCH 0					
					incPC <= 1'b0;				// MAR <- #PC;
					rPC   <= 1'b1;				// MDR <- Mem[MAR];
					wPC   <= 1'b0;				// IR  <- MDR;
					rMAR	<= 1'b0;
					wMAR	<= 1'b0;
					rMem  <= 1'b0;
					wMem  <= 1'b0;
					rMDR  <= 1'b0;
					wMDRmem <= 1'b0;
					wMDRbus <= 1'b0;
					rIR   <= 1'b0;
					wIR	<= 1'b0;
					rAC   <= 1'b0;
					wAC   <= 1'b0;
					cALU  <= 3'b001;			// 
					eALU  <= 1'b1;				// 
					count <=count+1'b1;		//
				end
				4'd1:
				begin								// FETCH 1					
					incPC <= 1'b0;				// #MAR <- PC;
					rPC   <= 1'b0;				// MDR <- Mem[MAR];
					wPC   <= 1'b0;				// IR  <- MDR
					rMAR	<= 1'b0;				
					wMAR	<= 1'b1;
					rMem  <= 1'b0;
					wMem  <= 1'b0;
					rMDR  <= 1'b0;
					wMDRmem <= 1'b0;
					wMDRbus <= 1'b0;
					rIR   <= 1'b0;
					wIR	<= 1'b0;
					rAC   <= 1'b0;
					wAC   <= 1'b0;
					cALU  <= 3'd001;
					eALU  <= 1'b1;
					count <=count+1'b1;
				end
				4'd2:
				begin								// FETCH 2					
					incPC <= 1'b0;				// MAR <- PC;
					rPC   <= 1'b0;				// MDR <- #Mem[MAR];
					wPC   <= 1'b0;				// IR  <- MDR
					rMAR	<= 1'b1;				
					wMAR	<= 1'b0;
					rMem  <= 1'b1;
					wMem  <= 1'b0;
					rMDR  <= 1'b0;
					wMDRmem <= 1'b0;
					wMDRbus <= 1'b0;
					rIR   <= 1'b0;
					wIR	<= 1'b0;
					rAC   <= 1'b0;
					wAC   <= 1'b0;
					cALU  <= 3'b000;
					eALU  <= 1'b0;
					count <=count+1'b1;
				end
				4'd3:
				begin								// FETCH 3					
					incPC <= 1'b0;				// MAR <- PC;
					rPC   <= 1'b0;				// MDR <- #Mem[#MAR];
					wPC   <= 1'b0;				// IR  <- MDR
					rMAR	<= 1'b1;
					wMAR	<= 1'b0;
					rMem  <= 1'b1;
					wMem  <= 1'b0;
					rMDR  <= 1'b0;
					wMDRmem  <= 1'b1;
					wMDRbus <= 1'b0;
					rIR   <= 1'b0;
					wIR	<= 1'b0;
					rAC   <= 1'b0;
					wAC   <= 1'b0;
					cALU  <= 3'b001;
					eALU  <= 1'b0;
					count <=count+1'b1;
				end
				4'd4:
				begin								// FETCH 4
					incPC <= 1'b0;				// MAR <- PC;
					rPC   <= 1'b0;				// #MDR <- Mem[MAR];
					wPC   <= 1'b0;				// IR  <- MDR
					rMAR	<= 1'b0;
					wMAR	<= 1'b0;
					rMem  <= 1'b0;
					wMem  <= 1'b0;
					rMDR  <= 1'b0;
					wMDRmem <= 1'b1;
					wMDRbus <= 1'b0;
					rIR   <= 1'b0;
					wIR	<= 1'b0;
					rAC   <= 1'b0;
					wAC   <= 1'b0;
					cALU  <= 3'b001;
					eALU  <= 1'b1;
					count <=count+1'b1;
				end
				4'd5:
				begin
					incPC <= 1'b1;				// MAR <- PC; #incPC;
					rPC   <= 1'b0;				// MDR <- Mem[MAR];
					wPC   <= 1'b0;				// IR  <- #MDR
					rMAR	<= 1'b0;
					wMAR	<= 1'b0;
					rMem  <= 1'b0;
					wMem  <= 1'b0;
					rMDR  <= 1'b1;
					wMDRmem  <= 1'b0;				
					wMDRbus <= 1'b0;
					rIR   <= 1'b0;
					wIR	<= 1'b1;
					rAC   <= 1'b0;
					wAC   <= 1'b0;
					cALU  <= 3'b001;
					eALU  <= 1'b1;
					count <=count+1'b1;
				end
				4'd6:
				begin
					incPC <= 1'b0;				// MAR <- PC;
					rPC   <= 1'b0;				// MDR <- Mem[MAR];
					wPC   <= 1'b0;				// #IR  <- MDR
					rMAR	<= 1'b0;
					wMAR	<= 1'b0;
					rMem  <= 1'b0;
					wMem  <= 1'b0;
					rMDR  <= 1'b0;
					wMDRmem  <= 1'b0;				
					wMDRbus <= 1'b0;
					rIR   <= 1'b0;
					wIR	<= 1'b1;
					rAC   <= 1'b0;
					wAC   <= 1'b0;
					cALU  <= 3'b000;
					eALU  <= 1'b0;
					count <=count+1'b1;
				end
				// **** Execute?
				4'd7:
				begin
					if( instruction[17:15] == 3'b000 )		// ADD (AC + aNumber)
						begin
							if( instruction[14:13] == 2'b01 )// if address mode is mem (address in the instruction)
								begin									// MAR <- #IR[12:0]
									incPC <= 1'b0;					// MDR <- Mem[MAR]
									rPC   <= 1'b0;					// AC  <- MDR + AC
									wPC   <= 1'b0;
									rMAR	<= 1'b0;
									wMAR	<= 1'b0;
									rMem  <= 1'b0;
									wMem  <= 1'b0;
									rMDR  <= 1'b0;				// 
									wMDRmem <= 1'b0;
									wMDRbus <= 1'b0;
									rIR   <= 1'b1;				// 
									wIR   <= 1'b0;
									rAC   <= 1'b0;
									wAC   <= 1'b0;
									cALU  <= 3'b000;			// Pass through aBus
									eALU  <= 1'b1;
									count <=count+1'b1;
								end
						end
					if( instruction[17:15] == 3'b001 )		// LOAD (AC <- aNumber)
						begin			
							if( instruction[14:13] == 2'b01) // if address mode is mem (address in the instruction)
								begin									// MAR <- #IR[12:0]
									incPC <= 1'b0;					// MDR <- Mem[MAR]
									rPC   <= 1'b0;					// AC  <- MDR
									wPC   <= 1'b0;
									rMAR	<= 1'b0;
									wMAR	<= 1'b0;
									rMem  <= 1'b0;
									wMem  <= 1'b0;
									rMDR  <= 1'b0;				// 
									wMDRmem <= 1'b0;
									wMDRbus <= 1'b0;
									rIR   <= 1'b1;				// 
									wIR   <= 1'b0;
									rAC   <= 1'b0;
									wAC   <= 1'b0;
									cALU  <= 3'b000;			// Pass through aBus
									eALU  <= 1'b1;
									count <=count+1'b1;
								end
						end
				end

				4'd8:
				begin
					if( instruction[17:15] == 3'b000 )		// ADD (AC + aNumber)
						begin
							if( instruction[14:13] == 2'b01 )// if address mode is mem (address in the instruction)
								begin									// #MAR <- IR[12:0]
									incPC <= 1'b0;					// MDR <- Mem[MAR]
									rPC   <= 1'b0;					// AC  <- MDR + AC
									wPC   <= 1'b0;
									rMAR	<= 1'b0;
									wMAR	<= 1'b1;
									rMem  <= 1'b0;
									wMem  <= 1'b0;
									rMDR  <= 1'b0;				// 
									wMDRmem <= 1'b0;
									wMDRbus <= 1'b0;
									rIR   <= 1'b0;				// 
									wIR   <= 1'b0;
									rAC   <= 1'b0;
									wAC   <= 1'b0;
									cALU  <= 3'b000;			// Pass through aBus
									eALU  <= 1'b0;
									count <=count+1'b1;
								end
						end
					if( instruction[17:15] == 3'b001 )		// LOAD (AC <- aNumber)
						begin											
							if( instruction[14:13] == 2'b01) // if address mode is mem (address in the instruction)
								begin									// #MAR <- IR[12:0]
									incPC <= 1'b0;					// MDR <- Mem[MAR]
									rPC   <= 1'b0;					// AC  <- MDR
									wPC   <= 1'b0;
									rMAR	<= 1'b0;
									wMAR	<= 1'b1;
									rMem  <= 1'b0;
									wMem  <= 1'b0;
									rMDR  <= 1'b0;				// 
									wMDRmem <= 1'b0;
									wMDRbus <= 1'b0;
									rIR   <= 1'b0;				// 
									wIR   <= 1'b0;
									rAC   <= 1'b0;
									wAC   <= 1'b0;
									cALU  <= 3'b000;				// Pass through aBus
									eALU  <= 1'b0;
									count <=count+1'b1;
								end
						end
				end
				
				4'd9:
				begin
					if( instruction[17:15] == 3'b000 )		// ADD (AC + aNumber)
						begin
							if( instruction[14:13] == 2'b01 )// if address mode is mem (address in the instruction)
								begin									// MAR <- IR[12:0]
									incPC <= 1'b0;					// MDR <- #Mem[#MAR]
									rPC   <= 1'b0;					// AC  <- MDR + AC
									wPC   <= 1'b0;
									rMAR	<= 1'b1;
									wMAR	<= 1'b0;
									rMem  <= 1'b1;
									wMem  <= 1'b0;
									rMDR  <= 1'b0;				
									wMDRmem <= 1'b0;
									wMDRbus <= 1'b0;
									rIR   <= 1'b0;
									wIR   <= 1'b0;
									rAC   <= 1'b0;				
									wAC   <= 1'b0;
									cALU  <= 3'b011;				// A + B
									eALU  <= 1'b0;
									count <=count+1'b1;
								end
						end
						
					if( instruction[17:15] == 3'b001 )		// LOAD (AC <- aNumber)
						begin											
							if( instruction[14:13] == 2'b01) // if address mode is mem (address in the instruction)
								begin									// MAR <- IR[12:0]
									incPC <= 1'b0;					// MDR <- #Mem[#MAR]
									rPC   <= 1'b0;					// AC  <- MDR
									wPC   <= 1'b0;
									rMAR	<= 1'b1;
									wMAR	<= 1'b0;
									rMem  <= 1'b1;
									wMem  <= 1'b0;
									rMDR  <= 1'b0;				// 
									wMDRmem <= 1'b0;
									wMDRbus <= 1'b0;
									rIR   <= 1'b0;				// 
									wIR   <= 1'b0;
									rAC   <= 1'b0;
									wAC   <= 1'b0;
									cALU  <= 3'b000;				// Pass through aBus
									eALU  <= 1'b0;
									count <=count+1'b1;
								end
						end
				end
				
				4'd10:
				begin
					if( instruction[17:15] == 3'b000 )		// ADD (AC + aNumber)
						begin
							if( instruction[14:13] == 2'b01 )// if address mode is mem (address in the instruction)
								begin									// MAR <- IR[12:0]
									incPC <= 1'b0;					// MDR <- #Mem[#MAR]
									rPC   <= 1'b0;					// AC  <- MDR + AC
									wPC   <= 1'b0;
									rMAR	<= 1'b0;
									wMAR	<= 1'b0;
									rMem  <= 1'b0;
									wMem  <= 1'b0;
									rMDR  <= 1'b1;				// to bBus
									wMDRmem <= 1'b0;
									wMDRbus <= 1'b0;
									rIR   <= 1'b0;
									wIR   <= 1'b0;
									rAC   <= 1'b0;				// 
									wAC   <= 1'b1;
									cALU  <= 3'b011;
									eALU  <= 1'b0;
									count <=count+1'b1;
								end
						end
						
					if( instruction[17:15] == 3'b001 )		// LOAD (AC <- aNumber)
						begin											
							if( instruction[14:13] == 2'b01) // if address mode is mem (address in the instruction)
								begin									// MAR <- IR[12:0]
									incPC <= 1'b0;					// MDR <- #Mem[#MAR]
									rPC   <= 1'b0;					// AC  <- MDR
									wPC   <= 1'b0;
									rMAR	<= 1'b1;
									wMAR	<= 1'b0;
									rMem  <= 1'b1;
									wMem  <= 1'b0;
									rMDR  <= 1'b0;				// 
									wMDRmem <= 1'b0;
									wMDRbus <= 1'b0;
									rIR   <= 1'b0;				// 
									wIR   <= 1'b0;
									rAC   <= 1'b0;
									wAC   <= 1'b0;
									cALU  <= 3'b000;				// Pass through aBus
									eALU  <= 1'b0;
									count <=count+1'b1;
								end
						end
				end				
				
				4'd11:
				begin
					if( instruction[17:15] == 3'b000 )		// ADD (AC + aNumber)
						begin
							if( instruction[14:13] == 2'b01 )// if address mode is mem (address in the instruction)
								begin									// MAR <- IR[12:0]
									incPC <= 1'b0;					// #MDR <- Mem[MAR]
									rPC   <= 1'b0;					// AC  <- MDR + AC
									wPC   <= 1'b0;
									rMAR	<= 1'b0;
									wMAR	<= 1'b0;
									rMem  <= 1'b0;
									wMem  <= 1'b0;
									rMDR  <= 1'b0;				// to bBus
									wMDRmem <= 1'b1;
									wMDRbus <= 1'b0;
									rIR   <= 1'b0;
									wIR   <= 1'b0;
									rAC   <= 1'b0;				// 
									wAC   <= 1'b0;
									cALU  <= 3'b011;			// A + B
									eALU  <= 1'b1;
									count <=count+1'b1;
							end
					end
					
					if( instruction[17:15] == 3'b001 )		// LOAD (AC <- aNumber)
						begin
							if( instruction[14:13] == 3'b01 )
								begin									// MAR <- IR[12:0]
									incPC <= 1'b0;					// #MDR <- Mem[MAR]
									rPC   <= 1'b0;					// AC  <- MDR
									wPC   <= 1'b0;
									rMAR	<= 1'b0;
									wMAR	<= 1'b0;
									rMem  <= 1'b0;
									wMem  <= 1'b0;
									rMDR  <= 1'b0;					// 
									wMDRmem <= 1'b1;
									wMDRbus <= 1'b0;
									rIR   <= 1'b0;					// 
									wIR   <= 1'b0;
									rAC   <= 1'b0;
									wAC   <= 1'b0;
									cALU  <= 3'b001;				// 
									eALU  <= 1'b1;
									count <=count+1'b1;									
							end
					end
				end
				
				4'd12:
				begin
					if( instruction[17:15] == 3'b000 )		// ADD
						begin
							if( instruction[14:13] == 2'b01 )// if address mode is mem (address in the instruction)
								begin									// MAR <- IR[12:0]
									incPC <= 1'b0;					// MDR <- Mem[MAR]
									rPC   <= 1'b0;					// AC  <- #MDR + #AC
									wPC   <= 1'b0;
									rMAR	<= 1'b0;
									wMAR	<= 1'b0;
									rMem  <= 1'b0;
									wMem  <= 1'b0;
									rMDR  <= 1'b1;				// read MDR
									wMDRmem <= 1'b0;
									wMDRbus <= 1'b0;
									rIR   <= 1'b0;
									wIR   <= 1'b0;
									rAC   <= 1'b1;				// read AC
									wAC   <= 1'b0;
									cALU  <= 3'b011;			// A + B
									eALU  <= 1'b1;
									count <=count+1'b1;
							end
					end
					if( instruction[17:15] == 3'b001 )		// LOAD (AC <- aNumber)
						begin
							if( instruction[14:13] == 3'b01 )
								begin									// MAR <- IR[12:0]
									incPC <= 1'b0;					// MDR <- Mem[MAR]
									rPC   <= 1'b0;					// AC  <- #MDR
									wPC   <= 1'b0;
									rMAR	<= 1'b0;
									wMAR	<= 1'b0;
									rMem  <= 1'b0;
									wMem  <= 1'b0;
									rMDR  <= 1'b1;					// 
									wMDRmem <= 1'b0;
									wMDRbus <= 1'b0;
									rIR   <= 1'b0;					// 
									wIR   <= 1'b0;
									rAC   <= 1'b0;
									wAC   <= 1'b0;
									cALU  <= 3'b001;				// 
									eALU  <= 1'b1;
									count <=count+1'b1;									
							end
					end
				end

				4'd13:
				begin
					if( instruction[17:15] == 3'b000 )		// ADD
						begin
							if( instruction[14:13] == 2'b01 )// if address mode is mem (address in the instruction)
								begin									// MAR <- IR[12:0]
									incPC <= 1'b0;					// MDR <- Mem[MAR]
									rPC   <= 1'b0;					// #AC  <- MDR + AC
									wPC   <= 1'b0;
									rMAR	<= 1'b0;
									wMAR	<= 1'b0;
									rMem  <= 1'b0;
									wMem  <= 1'b0;
									rMDR  <= 1'b0;				// to bBus
									wMDRmem <= 1'b0;
									wMDRbus <= 1'b0;
									rIR   <= 1'b0;
									wIR   <= 1'b0;
									rAC   <= 1'b0;				// 
									wAC   <= 1'b1;
									cALU  <= 3'b011;			// A + B
									eALU  <= 1'b0;
									count <=count+1'b1;
							end
					end
					
					if( instruction[17:15] == 3'b001 )		// LOAD (AC <- aNumber)
						begin
							if( instruction[14:13] == 3'b01 )
								begin									// MAR <- IR[12:0]
									incPC <= 1'b0;					// MDR <- Mem[MAR]
									rPC   <= 1'b0;					// #AC  <- MDR
									wPC   <= 1'b0;
									rMAR	<= 1'b0;
									wMAR	<= 1'b0;
									rMem  <= 1'b0;
									wMem  <= 1'b0;
									rMDR  <= 1'b0;					// 
									wMDRmem <= 1'b0;
									wMDRbus <= 1'b0;
									rIR   <= 1'b0;					// 
									wIR   <= 1'b0;
									rAC   <= 1'b0;
									wAC   <= 1'b1;
									cALU  <= 3'b001;				// 
									eALU  <= 1'b0;
									count <=count+1'b1;									
							end
					end
				end
				
				// --------------------------------------------------------------
				default:
				begin
					incPC <= 1'b0;					// 
					rPC   <= 1'b0;					// 
					wPC   <= 1'b0;
					rMAR	<= 1'b0;
					wMAR	<= 1'b0;
					rMem  <= 1'b0;
					wMem  <= 1'b0;
					rMDR  <= 1'b0;					// 
					wMDRmem <= 1'b0;
					wMDRbus <= 1'b0;
					rIR   <= 1'b0;					// 
					wIR   <= 1'b0;
					rAC   <= 1'b0;
					wAC   <= 1'b0;
					cALU  <= 3'b001;				// 
					eALU  <= 1'b0;
					count <= 4'd0;	
				end
				endcase
			end
	end
	
endmodule
