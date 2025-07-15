module tb_8bit;
     reg clk, rst;
	 wire [7:0] count;
	 
	 counter_8bit uut(
	     .clk(clk),
		 .rst(rst),
		 .count(count)
		 );
	 initial clk = 0;
	 always #5 clk <= ~clk;
	 
	 initial begin
	     $monitor("Time=%0t | rst=%b | clk=%b | count=%b", $time, rst, clk, count);
		     rst = 1; #10;
			 rst = 0;
			 #2920;
			$finish;
		end
	endmodule