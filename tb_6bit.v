module tb_6bit;
     reg clk, rst;
	 wire [5:0] count;
	 
	 counter_6bit uut(
	     .clk(clk),
		 .rst(rst),
		 .count(count)
		 );
	 initial clk = 0;
	 always #5 clk <= ~clk;
	 
	 initial begin
	     $monitor("Time=%0t | rst=%b | clk=%b | count=%b", $time, rst, clk, count);
		     rst = 1; #10;
			 rst =0;
			 #720;
			$finish;
		end
	endmodule