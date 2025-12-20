// class exten keyword
class parent;												// parent class (main class)
  int a, b;
  function new(int a = 2, b = 3);							// first this parent executes by default value
    this.a = a;
    this.b = b;
    display_parent(a, b);
  endfunction
  
  // extern keyword fn void type
  extern function void display_parent(int a, b); 			// extern keyword decleration 
  
endclass

 
class child extends parent;									// child class from parent (sub class of main class)
  int a, c;
  function new(int a = 6);									// then this executes
    super.a = a;											// passes value a by overwriting previous value
    c = display_child(a, b);
  endfunction
  
  // extern keyword fn return type
  extern function int display_child(int a, b); 			// extern keyword decleration
    
endclass

// extern keyword - extern function from class parent
function void parent :: display_parent(int a, b);		// extern keyword definition
  $display("a = %0d | b = %0d | class parent", a, b);	// no return type		
endfunction
    
// extern keyword - extern function from class parent
function int child :: display_child(int a, b);		// extern keyword definition      
  $display("a = %0d | b = %0d | class child", a, b);		// return type
  return a+b;
endfunction

module extern_keyword;
  
  child c1;
  
  initial begin
    c1 = new(); #1;
    $display("a = %0d | b = %0d | class child -- out from exten fn -- c = %0d", c1.a, c1.b, c1.c); 
  end
endmodule
    
// syntax
// decleration = extern_key fn fn_data_type fn_name(arguments);
// definition  = function fn_return_data_type class_name :: function_name(arguments);