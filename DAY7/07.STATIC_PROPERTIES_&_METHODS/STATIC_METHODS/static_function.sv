// static methods -- static function
class static_methods;
  static int count;						// static variable
  
  static function void increment();		// static function - inside only static variables are allowed
    count++;
  endfunction
endclass

module static_function;
  
  initial begin
    static_methods::increment();			// calling static function
    static_methods::increment();
    static_methods::increment();
    static_methods::increment();
    
    $display("count = %0d",static_methods::count);			// accessing static variable 
  end
endmodule
    