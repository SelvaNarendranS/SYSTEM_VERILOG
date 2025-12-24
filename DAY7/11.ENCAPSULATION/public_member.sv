// Encapsulation - public member
class parent;
  int data, value; 		// default public member
  
  function new(int a);
    value = a;
  endfunction
  
  function void demo();
    $display(" in side class data = %0d | value = %0d ", data, value);
  endfunction
endclass

module public_member;
  parent p1, p2; 		// handle for parent class
  
  initial begin 
    p1 = new(10);     // object allocation
    
    p1.data = 30;
    p1.demo;
    
    p2 = new(100);	// object allocation to new handle
    p2.value = 50;
    p2.data  = 60;
    p2.demo;
  end
endmodule
    
