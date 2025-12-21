// static variable - class static properties
class variable;
  // static variable(class static properties)
  static int data;					// only variable decleration
  static int value = 0;				// value declered at decleration
  
  function new();
    data = 0;						// its get set at the time of object creation
     $display("at instante --- data = %0d | value = %0d", data, value);
    data++;
    value++;							
  endfunction
endclass

module class_static_properties;
  
  variable h1, h2, h3;
  
  initial begin 
  	h1 = new();
    h2 = new();
    h3 = new();								
  																// to access static variable
    $display("total count of values -- data = %0d | value = %0d", variable::data, variable::value);
  end
endmodule    