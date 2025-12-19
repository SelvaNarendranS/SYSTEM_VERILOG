// creating handle outside the module
class base;
  int a, b;								// class properties
  
  function new(int c = 1, d = 2);		// class methods
    a = c;
    b = d;
  endfunction
endclass

base h1;								// null empty handle created

module handle_outside_module;
  
  initial begin
  	h1 = new();
  
    $display("--------- before h1 handle change ------------");
  	$display("handle1 h1 => a = %0d | b = %0d", h1.a, h1.b);

  	h1.a = 36;
  	h1.b = 145;
  
    $display("--------- after h1 handle change ------------");
  	$display("handle1 h1 => a = %0d | b = %0d", h1.a, h1.b);
  end
endmodule