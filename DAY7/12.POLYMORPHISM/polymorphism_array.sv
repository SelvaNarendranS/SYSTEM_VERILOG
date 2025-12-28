// Polymorphism Using Array of Base Handles
class base;
  virtual function void done();		// virtual class
  endfunction
endclass

class child1 extends base;			// extended class
  function void done();
    $display("Child 1");			// overridden class method
  endfunction
endclass

class child2 extends base;			// extended class
  function void done();
    $display("Child 2");			// overridden class method
  endfunction
endclass

module ppolymorphism_array;
  base arr[2];						// array of handles
  child1 c1 = new();
  child2 c2 = new();
  
  initial begin
    arr[0] = c1;
    arr[1] = c2;					// upcasting
    
    foreach(arr[i])					// calling function inside class 
      arr[i].done;
  
  end
endmodule