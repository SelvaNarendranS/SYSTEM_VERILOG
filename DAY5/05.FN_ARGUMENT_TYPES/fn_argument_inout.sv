// Function arguments - inout
module fn_argument_inout;
  int a;
  int rn_value;
  
  function int return_value(inout int value);
    int got;
    
    got = value;
    $display("before overwriting value = %0d", value);
    
    value = 130;						// returning by overwriting the given input argument value
    $display("after overwriting value = %0d", value);
    return got;
    
  endfunction
  
  initial begin
    $display("value => sent a = %0d - returned value from function overwritten = %0d", a, rn_value);
    
    // initialize
    a = 1634; #1;
    
    rn_value = return_value(a); #1;
    $display("value => a = %0d", a);				// avalue got changed by overwritten by function
   
  end
endmodule
    