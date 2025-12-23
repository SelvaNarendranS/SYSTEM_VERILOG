// inheritance - Inheritance with Constructor (super.new())
class parent;
  int a;
  
  function new(int a = 1);
    this.a = a;
  endfunction
  
  function void display();
    $display("a = %0d -- parent", a);
  endfunction
endclass

class child extends parent;
  int b;
  
  function new(int a = 10, b = 20);
    super.new(a);
    this.b = b;
  endfunction
  
  function void print();
    $display("b = %0d -- child", b);
  endfunction
endclass

module inheritance_with_super;
  
  child c1;						// child handle 
  parent p1;					// parent handle
  
  initial begin
    c1 = new();
    p1 = new();
    
    $display("child handle methods call");
    c1.display();				// parent method has been inherited to child  
    c1.print();					// child method
    
    $display("parent handle methods call");
    p1.display;
  end
endmodule  