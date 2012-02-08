module simpleRAM( address, data,
	rw, clock, reset); 
	
	inout [7:0] data; // in-out
	
	input [2:0] address;
	input rw;
	input clock;
	input reset;
	
	// Does not support dual-port RAM logic!
	// reg [7:0] RAM [2:0];
	// Must have individual bytes & case 
	// statements :( <-- sad face
	reg [7:0] RAM0;
	reg [7:0] RAM1;
	reg [7:0] RAM2;
	reg [7:0] RAM3;
	reg [7:0] RAM4;
	reg [7:0] RAM5;
	reg [7:0] RAM6;
	reg [7:0] RAM7;
	
	reg [7:0] word; 
	
	// bidirectional port, rw determines if data is an input
	assign data = rw ? word : 8'bZ; 
	
	// Read
	always @( posedge rw )
		begin
			if ( rw ) 
				begin
					case ( address )
						0: word = RAM0;
						1: word = RAM1;
						2: word = RAM2;
						3: word = RAM3;
						4: word = RAM4;
						5: word = RAM5;
						6: word = RAM6;
						7: word = RAM7;
						default: word = RAM0;
					endcase
			end
		end
	
	// Write
	always @( posedge clock or posedge reset or negedge rw )
		begin
			if ( ~rw ) begin
					case ( address )
					0: RAM0 = data;
					1: RAM1 = data;
					2: RAM2 = data;
					3: RAM3 = data;
					4: RAM4 = data;
					5: RAM5 = data;
					6: RAM6 = data;
					7: RAM7 = data;
					default: RAM0 = data;
				endcase
			end
			
			if ( reset ) begin
				RAM0 = 8'h00;
				RAM1 = 8'h00;
				RAM2 = 8'h00;
				RAM3 = 8'h00;
				RAM4 = 8'h00;
				RAM5 = 8'h00;
				RAM6 = 8'h00;
				RAM7 = 8'h00;
			end
		end
endmodule

/*
module simpleRAM ( read-data, read-address, write-data, write-address, 
	memwrite, clock, reset); 

	// 3-bit addressable locations of 8 bit r/w memory
	output [7:0] read-data;
	input [2:0] read-address;
	input [7:0] write-data;
	input [2:0] write-address;
	input memwrite;
	input clock; 
	input reset; 
	reg [7:0] read-data,  mem0, mem1; 
	
	// Block for memory read
	always @(read-address  or  mem0 or mem1) 
		begin 
			case(read-address) 
				3'b 000: read-data  = mem0; 
				3'b 001: read-data  = mem1; 
				// Unimplemented memory
				default: read-data  = 8'hFF; 
			endcase 
		end 

		// Block for memory write 
		always @(posedge clock or posedge reset) 
			begin 
				if (reset) 
					begin 
						// Initial values for memory (optional) 
						mem0 = 8'hAA; 
						mem1 = 8'h55; 
					end 
				else if  (memwrite) 
				//  write new value to memory
				case (write-address) 
					3'b000 : mem0 = write-data; 
					3'b001 : mem1 = write-data; 
				endcase 
			end 
			
endmodule 
*/