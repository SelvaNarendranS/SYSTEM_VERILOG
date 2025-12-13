// function definition methods
// function pass by value 
module pass_by_value;
  int a;
  int rn_value;
  
  function int return_value(int value);
    return value;				// returning the passed argument value 
  endfunction
  
  initial begin
    // initialize
    a = 1634; #1;
    
    rn_value = return_value(a); #1;
    
    $display("pass by value => sent = %0d - returned value from function = %0d", a, rn_value);
  end
endmodule
    