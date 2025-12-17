// Static function
module static_function;
  int count;
  
  function static void behaviour(int cnt);
    int value = 1;
    value++;
    cnt++;
    $display("In function The value = %0d | the count = %0d", value, cnt);
  endfunction
  
  initial begin
    // initialize
    count = 1;
    
    behaviour(count); #1;
    behaviour(count); #1;
    behaviour(count);
    behaviour(count);
    
  end
endmodule
    
