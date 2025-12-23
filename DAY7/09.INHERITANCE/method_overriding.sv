// inheritance - method_overriding
class parent;
  int a;
  
  function new(int a = 1);
    this.a = a;
  endfunction
  
  function void print();
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

module method_overriding;
  
  child c1;						// child handle 
  
  initial begin
    c1 = new();
    
    $display("child handle methods call");
    c1.print();				// parent method has been inherited to child  
    
  end
endmodule  