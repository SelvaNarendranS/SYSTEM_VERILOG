// static_utility - passing arguments in static method
class math;
  static int count_fn = 0, count_task = 0;				// static variable			
  
  static function int add(int a, int b);				// static function			
    count_fn++;
    return a + b;
  endfunction
  
  static task division;									// static task
    input int a;
    input int b;
    output real div;
    
    div = real'(a) / b;
    count_task++;
  endtask
endclass

module static_utility;
  int addition;
  real divide;
  int v1, v2;
  
  initial begin
    repeat(5) begin
      v1 = $urandom_range(1, 50);
      v2 = $urandom_range(1, 20);
      $display("-----inputs => a = %0d | b = %0d", v1, v2); 
      
      addition = math::add(v1, v2);							// static function call
      math::division(v1, v2, divide);						// static task call
      
      $display("static function => add = %0d | fn_count = %0d", addition, math::count_fn);
      $display("static task => divide = %0.3f | task_count = %0d\n", divide, math::count_task);
    end
  end
endmodule
      