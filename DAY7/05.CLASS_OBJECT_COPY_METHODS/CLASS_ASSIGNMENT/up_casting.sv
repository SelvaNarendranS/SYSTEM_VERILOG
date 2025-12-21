// class object copy methods - class assignment - up casting
class base;
  int a, b;								// class properties
  
  function new(int a = 1, b = 2);		// class methods
    this.a = a;
    this.b = b;
  endfunction
  
  function void print();
    $display("Parent class");
  endfunction
  
endclass

class child extends base;
  function new(int a = 1, b = 2);
    super.new(a, b);
  endfunction
  
  function void print();
    $display("Child class");
  endfunction
endclass

base h1, h2, h3;					// null empty handle created
child c1;

module up_casting;
  
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
    
    c1 = new();
    h3 = c1;				// up casting
    $display("------- h3.print ----------");
    h3.print;
    
    $display("------- c1.print ----------");
    c1.print;
  end
endmodule