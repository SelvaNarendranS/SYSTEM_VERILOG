// FOREVER LOOP
// generate a free-running clock (period = 4 time units).
module forever_loop;
  reg clk; 
  int time_period = 4;

	// initial block
  initial begin
	clk = 1'b0;
    forever #(time_period /2) clk = ~clk;
  end	

  initial begin
	$monitor("Time = %0t | clk = %b", $time, clk);

	#23 $finish;
  end
endmodule
