module counter_3bit(
     input clk, rst,
	 output  reg [2:0] count
	 );
	 always @ (posedge clk) begin
	     if (rst) 
		     count <= 3'b0;
		 else 
		     count <= count + 1;
		end
	endmodule
	