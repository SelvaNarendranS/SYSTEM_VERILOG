// static methods -- static task
class static_methods;
  static int count;						// static variable
  
  static task increment();				// static function - inside only static variables are allowed
    count++;
  endtask
endclass

module static_task;
  
  initial begin
    static_methods::increment();			// calling static function
    static_methods::increment();
    static_methods::increment();
    static_methods::increment();
    
    $display("count = %0d",static_methods::count);			// accessing static variable 
  end
endmodule
    