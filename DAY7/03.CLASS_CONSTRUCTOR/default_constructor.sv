// Default constructor
class constructor_dflt;
  int value;
  logic [7:0]data;				// class properties
  
  function new();				// class methods
    value = 317;
    data  = 214;				// when object is created class properties is loaded with this default values
  endfunction
endclass

module default_constructor;
  
  constructor_dflt h1, h2;       // null empty handle only created
  
  initial begin
    h1 = new();
  	h2 = new();					// handle has allocated with memory of class default properties
  
  
  	$display("\nhandle1 => value = %0d | data = %0d", h1.value, h1.data);
    $display("handle2 => value = %0d | data = %0d", h2.value, h2.data);
  end
endmodule 