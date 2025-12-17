// Static task
module static_task;
  int count;
  
  task static behaviour(input int cnt);
    int value = 0;
    $display("Time = %0t | In task The value = %0d | the global count = %0d", $time, value, cnt);
    value++;
    cnt++;						
  endtask
  
  initial begin
    // initialize
    count = 1;
    
    repeat(5) begin
      behaviour(count); #5;
    end
    
  end
endmodule
    