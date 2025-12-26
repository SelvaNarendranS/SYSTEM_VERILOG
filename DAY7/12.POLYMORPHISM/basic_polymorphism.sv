// Basic Polymorphism (With virtual)
class parent;
  int a;
  												// 3 main requirements for polymorphism
  virtual function int evaluate(int a, b, output string str);			// virtual function - prototype 
  endfunction
endclass

class child extends parent;						// inheritance -- extended class from parent
  int b;
  
  function int evaluate(int a, b, output string str);				// overriding class method function 
    str = "child class";
    return a + b;
  endfunction
endclass

module basic_polymorphism;
  int sum;
  string from;
  
  child c1;					// child handle 
  
  initial begin
    c1 = new();
    
    sum = c1.evaluate(10, 20, from);
    $display("sum = %0d -- %0s", sum, from);
  end
endmodule