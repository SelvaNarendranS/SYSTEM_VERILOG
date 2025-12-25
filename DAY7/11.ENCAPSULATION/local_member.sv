// Encapsulation - local member
class parent;
  local int data;			 // local variable is only visible inside base class(inside declared class)
  
  function new(int data = 10);
    this.data = data;
    $display("parent class - data = %0d", data);
  endfunction
endclass

class child extends parent;
  int value = 10;
  
  function new(int data = 20);			
    super.new(data);						// only allocating the value to local variable at object allocation
    $display("child class - data = %0d | value = %0d", data, value);
  endfunction
  
//   function display();
//     super.data = 10;					// local variable is not visible inside extended class  ------ error
//   endfunction
  
endclass

module local_member;
  child c1;				// class handle
  
  initial begin
    c1 = new(50);
//     c1.data = 10;		 // local method is not possible - not visible inside the module ------ error
  end
endmodule 