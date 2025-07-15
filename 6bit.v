module counter_6bit(
     input clk, rst,
	 output reg [5:0] count
	 );
	 always @ (posedge clk) begin
	     if (rst) 
		     count <= 6'b0;
		 else 
		     count <= count + 1;
		end
	endmodule
	