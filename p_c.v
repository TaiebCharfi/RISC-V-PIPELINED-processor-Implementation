module p_c (Pc_NEXT,PC,rst,clk);
	input [31:0] Pc_NEXT;
	input clk,rst;
	
	output reg [31:0] PC ;
	always @ (posedge clk)
		begin 
			if (rst==1'b0)
				PC<=32'h00000000;
			else 
				pc<=Pc_NEXT
		end 

	
	
endmodule