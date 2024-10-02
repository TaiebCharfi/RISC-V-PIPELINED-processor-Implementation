module main_decoder(op,zero,RegWrite,MemWrite,ResultScr,ALUSrc,ImmSrc,ALUop,PCSrc);
	input zero;
	input [6:0] op;
	
	output ResultScr,MemWrite,ALUSrc,RegWrite,PCSrc;
	output [1:0] ImmSrc,ALUop;
	
	wire [6:0] op;
	wire [2:0] funct3,ALUControl;
	wire zero,funct7,branch,ResultScr,MemWrite,ALUSrc,RegWrite,PCSrc;
	wire [1:0] ImmSrc,ALUop;
	
	assign RegWrite=((op==7'b0000011)|(op==7'b0110011)) ? 1'b1:1'b0;
	assign ImmSrc=(op==7'b1100011) ? 2'b10:
				  (op==7'b0100011) ? 2'b01:2'b00;
	assign MemWrite = (op==7'b0100011) ? 1'b1:1'b0;
	assign ResultScr = (op==7'b0000011) ? 1'b1:1'b0;
	assign ALUSrc =((op==7'b0000011) | (op==7'b0100011))? 1'b1:1'b0;
	assign branch=(op==7'b1100011)? 1'b1:1'b0;
	assign ALUop=(op==7'b0110011) ? 2'b10:
				  (op==7'b1100011) ? 2'b01:2'b00;
	
	
	assign PCSrc= zero & branch;
	



endmodule
