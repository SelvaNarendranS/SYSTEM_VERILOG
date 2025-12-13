// Basic function
// Void function
module void_function;
  int value;
  
  function void no_return(int a);
   
    $display("Received argument value = %0d", a);		// void function so no return type
    
  endfunction
  
  initial begin
    
    // initialize 
    value = 31698; #1;
    
    no_return(value); #1;		// pass by value
    no_return(168352);			// pass by direct number
    
  end
endmodule
    