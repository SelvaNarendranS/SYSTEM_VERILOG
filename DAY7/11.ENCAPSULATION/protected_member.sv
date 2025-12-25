// Encapsulation - protected member
class parent;
  protected int data, value = 30;		// protected member 
  
  function new(int data = 10);
    this.data = data;
    $display("parent class - data = %0d | value = %0d", data, value);
  endfunction
endclass

class child extends parent;
  
  function new(int data = 20);			// protected variable is only visible inside extended class
    super.new(data);
    super.value = 50;
    $display("child class - data = %0d | value = %0d", data, value);
  endfunction
endclass

module protected_member;
  child c1;				// class handle
  
  initial begin
    c1 = new(50);
//     c1.data = 10;		 // protected method is not possible - not visible inside the module ------ error
  end
endmodule 