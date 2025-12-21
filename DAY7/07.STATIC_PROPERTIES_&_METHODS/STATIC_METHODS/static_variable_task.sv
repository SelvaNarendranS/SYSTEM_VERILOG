// static methods -- Non-Static task Accessing Static Variable 
class static_methods;
  static int count = 0, non_count = 0;						// static variable
  int a, b, c;								// non static variable
  
  function new(int a = 0, b = 0, c = 0);
    this.a = a;
    this.b = b;
    this.c = c;
  endfunction
  
  task rectangle;							// non static variable and static variable in non static method
    output int area;
    area = a * b * c;
    non_count++;
    $display("a, b, c = %0d, %0d, %0d | area = %0d | non_count = %0d | count = %0d", a, b, c, area, non_count, count);
  endtask
  
  static task increment();					// static task - inside only static variables are allowed
    count++;
  endtask
 
endclass

module static_variable_task;
  int out;
  
  static_methods h1, h2, h3;
  
  initial begin
    h1 = new(12, 3, 24);
    h2 = new(48, 15, 45);
    h3 = new(20, 31, 36);
    
    h1.rectangle(out);
    h2.rectangle(out);
    h3.rectangle(out);
    
    static_methods::increment();		// calling static function
    static_methods::increment();
    static_methods::increment();
    static_methods::increment();
    
    $display("count = %0d",static_methods::count);			// accessing static variable 
  end
endmodule
    