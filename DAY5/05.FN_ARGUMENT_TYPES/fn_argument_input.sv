// Function arguments - input
module fn_argument_input;
  int unsigned a, b;
  byte unsigned c, d;
  int unsigned maximum, minimum;
  
  initial begin
    
    // initialize
    repeat(5) begin
      a = $urandom_range(1, 20);
      b = $urandom_range(1, 20);
      c = $urandom_range(1, 20);
      d = $urandom_range(1, 20);
      
      maximum = max(a, b);
      minimum = min(c, d); #1;
      add(maximum, minimum);
    end
  end
endmodule

function int max(input int num1, num2);			// function max
  
  $display("function max received num1, num2 = %0d, %0d", num1, num2);
  
  return (num1 > num2) ? num1 : num2;			
endfunction

function int min(input int num1, num2); 		// function min 
  
  $display("function min received num1, num2 = %0d, %0d", num1, num2);
  
  return (num1 < num2) ? num1 : num2;
endfunction

function void add(input int num1, num2);
  
  display(num1 + num2);					// function calling a function
  
endfunction
    
function void display(int out);				// function display
  
      $display("function add sum = %0d", out);
  
endfunction