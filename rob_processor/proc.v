module proc( clk, reset, LCD, lcdRS, lcdRW, lcdEn );

	input clk, reset;
	output[7:0] LCD;								// LCD - 8 bit LCD character/command data
	wire[7:0] LCD;
	output lcdRS, lcdEn, lcdRW;				// lcdRS - lcd command/data select, lcdEn - execute command/data to display
	wire lcdRS, lcdEn, lcdRW;
	
	wire slowClk;									// slowClk - used to see the execution on the DE0 board better
	
	wire lcdLineSel, lcdLine;					// When lcdLineSel goes high, lcd cursor changes to lcdLine (0=line1, 1=line2)	
	wire lcdRst, lcdW, lcdClk;					// lcdRst - lcd reset, lcdW - internal lcd enable, lcdClk - faster clock 10kHz
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
	clkDiv10Khz U1( clk, lcdClk );
	
	// -------------------- SLOWCLK for DE0 board -----------------------------------------------------	
	//ControlBlock( clk, reset, rMAR, wMAR, rMem, wMem, rMDR, wMDRmem, wMDRbus, rPC, wPC, incPC, rIR, wIR, rAC, wAC, cALU, eALU, getInst, lcdLineSel, lcdLine, lcdRst, lcdW );
	ControlBlock ctrlBlock( slowClk, ~reset, marR, marW, memR, memW, mdrR, mdrWmem, mdrWbus, pcR, pcW, pcInc, irR, irW, acR, acW, aluCtrl, aluEn, aluOutBus, lcdLineSel, lcdLine, lcdRst, lcdW );
	
	//LCD_Driver(enable, clk, rst, dataIn, dataOut, RS, RW, enableOut, line, setLine );
	LCD_Driver lcd( lcdW, lcdClk, lcdRst, aluOutBus, LCD, lcdRS, lcdRW, lcdEn, lcdLine, lcdLineSel );
	
	//MAR(re_MAR, wr_MAR, clk, rst, MARin, MARout);
	MAR 	 mar( marR, marW, slowClk, ~reset, aluOutBus[12:0], MAR_to_mem );
	//Memory(DataOut,DataIn,address,clk,rst,re_en,wr_en);
	Memory mem( mem_to_MDR, aluOutBus, MAR_to_mem, slowClk, ~reset, memR, memW );
	//MDR(re_MDR, wr_MDR_Mem, wr_MDR_Bus, clk, rst, MDRinMem, MDRinBus, MDRout);
	MDR	 mdr( mdrR, mdrWmem, mdrWbus, slowClk, ~reset, mem_to_MDR, aluOutBus, bBus );
	//PC(re_PC,wr_PC, PCinc, clk,rst,PCin,PCout);
	PC		 pc( pcR, pcW, pcInc, slowClk, ~reset, aluOutBus, bBus );
	//IR(re_IR,wr_IR,clk,rst,IRin,IRout);
	IR		 ir( irR, irW, slowClk, ~reset, aluOutBus, aBus );
	//AC(re_AC,wr_AC,clk,rst,ACin,ACout);
	AC		 ac( acR, acW, slowClk, ~reset, aluOutBus, aBus );
	//	ALU ( datA, datB, ctrl, enable, alu_out, ovf, AgtB, N, Z );
	ALU	 alu( aBus, bBus, aluCtrl, aluEn, aluOutBus, ovf, AgtB, Neg, Zero );
		
	// ------------ FAST CLK FOR DEBUG -----------------------------------------------
	
//	//	//ControlBlock( clk, reset, rMAR, wMAR, rMem, wMem, rMDR, wMDRmem, wMDRbus, rPC, wPC, incPC, rIR, wIR, rAC, wAC, cALU, eALU, getInst, lcdLineSel, lcdLine, lcdRst, lcdW );
//	ControlBlock ctrlBlock( clk, reset, marR, marW, memR, memW, mdrR, mdrWmem, mdrWbus, pcR, pcW, pcInc, irR, irW, acR, acW, aluCtrl, aluEn, aluOutBus, lcdLineSel, lcdLine, lcdRst, lcdW );
//	
//	//	//LCD_Driver(enable, clk, rst, dataIn, dataOut, RS, RW, enableOut, line, setLine );
//	LCD_Driver lcd( lcdW, clk, lcdRst, mem_to_MDR, LCD, lcdRS, lcdRW, lcdEn, lcdLine, lcdLineSel );
//	
//	//MAR(re_MAR, wr_MAR, clk, rst, MARin, MARout);
//	MAR 	 mar( marR, marW, clk, reset, aluOutBus[12:0], MAR_to_mem );
//	//Memory(DataOut,DataIn,address,clk,rst,re_en,wr_en);
//	Memory mem( mem_to_MDR, aluOutBus, MAR_to_mem, clk, reset, memR, memW );
//	//MDR(re_MDR, wr_MDR_Mem, wr_MDR_Bus, clk, rst, MDRinMem, MDRinBus, MDRout);
//	MDR	 mdr( mdrR, mdrWmem, mdrWbus, clk, reset, mem_to_MDR, aluOutBus, bBus );
//	//PC(re_PC,wr_PC, PCinc, clk,rst,PCin,PCout);
//	PC		 pc( pcR, pcW, pcInc, clk, reset, aluOutBus, bBus );
//	//IR(re_IR,wr_IR,clk,rst,IRin,IRout);
//	IR		 ir( irR, irW, clk, reset, aluOutBus, aBus );
//	//AC(re_AC,wr_AC,clk,rst,ACin,ACout);
//	AC		 ac( acR, acW, clk, reset, aluOutBus, aBus );
//	//	ALU ( datA, datB, ctrl, enable, alu_out, ovf, AgtB, N, Z );
//	ALU	 alu( aBus, bBus, aluCtrl, aluEn, aluOutBus, ovf, AgtB, Neg, Zero );

	
endmodule
