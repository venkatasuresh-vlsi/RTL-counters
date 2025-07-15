module counter_8bit(
     input clk, rst,
	 output reg [7:0] count
	 );
	 always @ (posedge clk) begin
	     if (rst) 
		     count <= 8'b0;
		 else 
		     count <= count + 1;
		end
	endmodule
	