// class object copy methods - class assignment
class base;
  int a, b;								// class properties
  
  function new(int a = 1, b = 2);		// class methods
    this.a = a;
    this.b = b;
  endfunction
endclass

base h1, h2;					// null empty handle created

module class_assignment;
  
  initial begin
  	h1 = new();
 	h2 = h1;						// class assignment --- only handle name only copies(no properties / methods / nested class got copied)
  
  	$display("--------- before h2 handle change ------------");
  	$display("handle1 h1 => a = %0d | b = %0d", h1.a, h1.b);
  	$display("handle2 h2 => a = %0d | b = %0d", h2.a, h2.b);
  
  	h2.a = 36;
  	h2.b = 145;
  
  	$display("--------- after h2 handle change ------------");
  	$display("handle1 h1 => a = %0d | b = %0d", h1.a, h1.b);
  	$display("handle2 h2 => a = %0d | b = %0d", h2.a, h2.b);
  end
endmodule