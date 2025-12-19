// constructor with default arguments and overwriting the default arguments
class constructor_argu;
  int value;
  logic [7:0]data;				// class properties
  
  function new(int a = 6264, b = 254);				// class methods
    value = a;
    data  = b;							// when object is created class properties is loaded with this default values
  endfunction
endclass

module constructor_with_default_arguments;
  
  constructor_argu h1, h2, h3;       		// null empty handle only created
  
  initial begin
    h1 = new();							 	// handle has allocated with memory of class default properties
    h2 = new(9756555, );					// passing arguments and overwriting values of class properties
    h3 = new(3146, 122);
  
    $display("\nhandle1 by default arguments => value = %0d | data = %0d", h1.value, h1.data);
    $display("handle2 by overwriting arguments => value = %0d | data = %0d", h2.value, h2.data);
    $display("handle3 by overwriting arguments => value = %0d | data = %0d", h3.value, h3.data);
  end
endmodule