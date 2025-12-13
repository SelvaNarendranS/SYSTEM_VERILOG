// With Arguments & With Return
// takes a radius and returns the area of a circle.
module argument_return;
  int unsigned r;
  parameter real pi = 3.14;
  real out; 
  
  initial begin 
    $monitor("R = %0d | area = %0.4f", r, out);
        
    // initialize 
    repeat (10) begin
      r = $urandom_range(20, 1); #1;
      out = area_circle(r, pi);
    end
  end
endmodule

function real area_circle(
  input int unsigned a, 
  input real b);
// function real area_circle(input a,b);
//   int a;
//   real b;
   area_circle = a * a * b;
endfunction