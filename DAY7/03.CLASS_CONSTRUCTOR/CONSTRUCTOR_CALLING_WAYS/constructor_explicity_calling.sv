// constructor calling ways - explicity calling
class constructor_calling;		// class in heap
  int a; 			
  string c;						// class - properties
  bit [3:0]b;
  
  // initialization
  function new();				// class methods - function constructor - explicitly calling
    a = 52;
    b = 10;
    c = "DIVIDE";
  endfunction
  
endclass

module constructor_explicity_calling;
  real divide;
  
  constructor_calling expli;					// handle created(null handle)
  //class  object1(handle1),
  
  initial begin
    expli = new();   			// handle is allocated with object memory(class properties default values allocated)
    
    divide = real'(expli.a) / expli.b;
      
      $display("\n\t------ expli (object) --------");
    $display("$Time = %0t | a = %0d | b = %0d | c = %0s, %0s = %0.3f", $time, expli.a, expli.b, expli.c, expli.c, divide); #1;
 
  end
endmodule