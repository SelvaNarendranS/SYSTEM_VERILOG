// Basic task
module basic_task;
  int initialize_value;
  
  task initialize(output int value);
    value = 10; #1;				// initialize value to variable and return 
    $display("Time = %0t | value in task = %0d", $time, value);
  endtask
  
  initial begin
    
    initialize(initialize_value); #1;
    
    $display("Time = %0t | the value after task = %0d", $time, initialize_value);
  end
endmodule
    