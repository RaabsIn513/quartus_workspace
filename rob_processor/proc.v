module proc( clk, reset, LEDs );

	input clk, reset;
	output[9:0] LEDs;
	reg[9:0] LEDs;
	
	wire slowClk;
	
	wire marR, marW;								// Memory Address Reg signals
	wire memR, memW;								// Memory signals
	wire mdrR, mdrWmem, mdrWbus;				// Memory Data Reg signals (Read, write from mem, write from bus)
	wire pcR, pcW, pcInc;						// Program Counter signals
	wire irR, irW;									// Instruction Reg signals
	wire acR, acW;									// Accumulator Reg signals
	wire[2:0]  opcode;							// The opcode
	wire aluEn, ovf, AgtB, Neg, Zero;		// Arithmetic Logic Unit signals
	wire[2:0]  aluCtrl;							// Arithmetic Logic Unit signals
	wire[17:0] aBus;
	wire[17:0] bBus;
	wire[17:0] aluOutBus;
	wire[12:0] MAR_to_mem;
	wire[17:0] mem_to_MDR;
	
	clkDiv U0( clk, slowClk );
	
	always@( posedge slowClk ) begin
		LEDs <= aluOutBus[9:0];
	end
	
	//ControlBlock( clk, reset, rMAR, wMAR, rMem, wMem, rMDR, wMDRmem, wMDRbus, rPC, wPC, incPC,	rIR, wIR, rAC, wAC, cALU, eALU );
	ControlBlock ctrlBlock( slowClk, reset, marR, marW, memR, memW, mdrR, mdrWmem, mdrWbus, pcR, pcW, pcInc, irR, irW, acR, acW, aluCtrl, aluEn, aluOutBus );
	
	//MAR(re_MAR, wr_MAR, clk, rst, MARin, MARout);
	MAR 	 mar( marR, marW, slowClk, reset, aluOutBus[12:0], MAR_to_mem );
	//Memory(DataOut,DataIn,address,clk,rst,re_en,wr_en);
	Memory mem( mem_to_MDR, aluOutBus, MAR_to_mem, slowClk, reset, memR, memW );
	//MDR(re_MDR, wr_MDR_Mem, wr_MDR_Bus, clk, rst, MDRinMem, MDRinBus, MDRout);
	MDR	 mdr( mdrR, mdrWmem, mdrWbus, slowClk, reset, mem_to_MDR, aluOutBus, bBus );
	//PC(re_PC,wr_PC, PCinc, clk,rst,PCin,PCout);
	PC		 pc( pcR, pcW, pcInc, slowClk, reset, aluOutBus, bBus );
	//IR(re_IR,wr_IR,clk,rst,IRin,IRout);
	IR		 ir( irR, irW, slowClk, reset, aluOutBus, aBus );
	//AC(re_AC,wr_AC,clk,rst,ACin,ACout);
	AC		 ac( acR, acW, slowClk, reset, aluOutBus, aBus );
	//	ALU ( datA, datB, ctrl, enable, alu_out, ovf, AgtB, N, Z );
	ALU	 alu( aBus, bBus, aluCtrl, aluEn, aluOutBus, ovf, AgtB, Neg, Zero );
		

	
endmodule
