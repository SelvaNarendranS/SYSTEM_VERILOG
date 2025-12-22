// inheritance - single inheritance basic
class parent;
  int a = 10;
  
  function void display();
    $display("a = %0d -- parent", a);
  endfunction
endclass

class child extends parent;
  int b = 20;
  
  function void print();
    $display("b = %0d -- child", b);
  endfunction
endclass

module single_inheritance_basic;
  
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