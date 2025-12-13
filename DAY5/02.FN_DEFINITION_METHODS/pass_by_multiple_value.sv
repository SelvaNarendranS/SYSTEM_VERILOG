// function definition methods
// function pass by value - multiple inputs 
module pass_by_multiple_value;
  int a, b, c, d;
  longint concatenate;
  
  function longint return_value(int value1, value2, value3, value4);

    $display("Received argument to function value1 = %0d | value2 = %0d | value3 = %0d | value4 = %0d", value1, value2, value3, value4);
    
    return ({value1, value2, value3, value4});				// returning the passed argument value 
  endfunction
  
  initial begin
    // initialize
    a = 1634;
    b = 614;
    c = 95;
    d = 72661; #1;
    
    concatenate = return_value(a, b, c, d); #1;
    
    $display("pass by value => sent a = %0d | b = %0d | c = %0d | d = %0d - returned value from function = %0d", a, b, c, d, concatenate);
  end
endmodule
    