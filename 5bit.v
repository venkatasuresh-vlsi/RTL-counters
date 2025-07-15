module counter_5bit(
     input clk, rst,
	 output reg[4:0] count
	 );
	 always @ (posedge clk) begin
	     if (rst) 
		     count <= 5'b0;
		 else 
		     count <= count + 1;
		end
	endmodule
	