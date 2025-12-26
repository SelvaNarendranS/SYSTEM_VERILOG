// Polymorphism with Multiple Derived Classes
class base;
  														// 3 main requirements for polymorphism
  virtual function int calculate(int a, b, output string mat);			// virtual function - prototype
  endfunction
endclass

class add extends base;									// inheritance -- extended class -1 from case class
  
  function int calculate(int a, b, output string mat);	// overriding class method function 
    mat = "ADDITION";
    return a + b;
  endfunction
endclass

class sub extends base;									// inheritance -- extended class -2 from case class
  
  function int calculate(int a, b, output string mat);	// overriding class method function 
    mat = "SUBRACTION";
    return a - b;
  endfunction
endclass

class multiply extends base;									// inheritance -- extended class -3 from case class
  
  function int calculate(int a, b, output string mat);	// overriding class method function 
    mat = "MULTIPLICATION";
    return a * b;
  endfunction
endclass

class divide extends base;									// inheritance -- extended class -4 from case class
  
  function int calculate(int a, b, output string mat);	// overriding class method function 
    mat = "DIVISION";
    return a / b;
  endfunction
endclass

module multiple_children_polymorphism;
  string math;
  int result;
  
  add      a;
  sub      s;
  multiply m;
  divide   d;				// child handle
  
  initial begin
    a = new();
    s = new();
    m = new();
    d = new();				// child handle object allocation
    
    result = a.calculate(1762, 34, math);				// class method call
    $display("time: %0t - a = %0d | b = %0d | result = %0d --- '%0s'", $time, 1762, 34, result, math); #1;
    
    result = s.calculate(1762, 34, math);				// class method call
    $display("time: %0t - a = %0d | b = %0d | result = %0d --- '%0s'", $time, 1762, 34, result, math); #1;
    
    result = m.calculate(1762, 34, math);				// class method call
    $display("time: %0t - a = %0d | b = %0d | result = %0d --- '%0s'", $time, 1762, 34, result, math); #1;
    
    result = d.calculate(1762, 34, math);				// class method call
    $display("time: %0t - a = %0d | b = %0d | result = %0d --- '%0s'", $time, 1762, 34, result, math); #1;
  end
endmodule