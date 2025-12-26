// Encapsulation -- inheritance + virtual
class parent;
  protected int value;
  
  virtual function int data(int a);		// virtual function
    a++;
    value = a;
    return value;
  endfunction
endclass

class child extends parent;				// inherited class
  
  function int data(int a);
    a += 1;
    value = a;
    return value;
  endfunction
endclass

module encapsulation_virtual;
  
  child c1;					// class handle
  
  initial begin
    c1 = new();				// class object allocation
    
    $display("value = %0d", c1.data(30));
//     $display("value = %0d", c1.data);	// protected not possible -- error 
  end
endmodule
    
  