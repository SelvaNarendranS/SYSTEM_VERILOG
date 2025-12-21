// class object copy methods - shallow copy flaw
class parent;								// parent class decleration
  int a;									
  function new(int a);
    this.a = a;
  endfunction
endclass

class child;								// child class decleration
  int b;
  parent parent_h1;							// parent class handle create 
  function new(int a, b);
    this.b = b;
    parent_h1 = new(a);						// calling nested class parent memory allocation from child
  endfunction
endclass

child child_h1, child_h2;					// child class handle create

module shallow_copy_flaw;
  
  initial begin
    child_h1 = new(10, 20);    				// child handle1 call memory allocation
    child_h2 = new child_h1;				// shallow copy
  
    $display("--------- before h2 handle change ------------");
    $display("child handle1 child_h1 => parent a = %0d | b = %0d", child_h1.parent_h1.a, child_h1.b);
    $display("child handle2 child_h2 => parent a = %0d | b = %0d", child_h2.parent_h1.a, child_h2.b);
  
  	child_h2.parent_h1.a = 36;				// only changing child handle2 but it affects the child handle1 also due to nested class (it affects only nested class)
  	child_h2.b = 145;
  
  	$display("--------- after h2 handle change ------------");
    $display("child handle1 child_h1 => parent a = %0d | b = %0d", child_h1.parent_h1.a, child_h1.b);
    $display("child handle2 child_h2 => parent a = %0d | b = %0d", child_h2.parent_h1.a, child_h2.b);
    
    child_h1.b = 675;
    child_h1.parent_h1.a = 1676;
    $display("--------- after h1 handle change ------------");
    $display("child handle1 child_h1 => parent a = %0d | b = %0d", child_h1.parent_h1.a, child_h1.b);
    $display("child handle2 child_h2 => parent a = %0d | b = %0d", child_h2.parent_h1.a, child_h2.b);
   end
endmodule    

