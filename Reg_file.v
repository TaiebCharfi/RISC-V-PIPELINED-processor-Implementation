module Reg_file(A1,A2,A3,WE3,RD1,RD2,WD3,clk,rst);
	input clk,rst;
	input [31:0] WD3;
	input[4:0]A1,A2,A3;
	
	output [31:0] RD1,RD2;
	
	reg [31:0] Registers[31:0];
	//read funct
	
	assign RD1=(!rst)? 32'b00000000 : Registers[A1] ;
	
	assign RD2=(!rst)? 32'b00000000 :Registers[A2] ;
	
	always @ ( posedge clk) begin 
		if (WE3) begin
			Registers[A3]<=WD3;
		end
		
		
	end
	
endmodule 