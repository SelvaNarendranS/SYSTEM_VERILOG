// Function Return
// takes a radius and returns the area of a circle.
module argument_return;
  int unsigned r;
  parameter real pi = 3.14;
  real out, aa;
  int ss; 
  
  initial begin 
            
    // initialize 
    repeat (10) begin
      r = $urandom_range(20, 1); #1;
      out = area_circle(r, pi, aa, ss);
      $display("R=%0d | area=%0.4f | z=%0.2f | s=%0d", r, out, aa, ss);
    end
  end
endmodule

function automatic real area_circle(
  input int unsigned a, 
  input real b,
  output real z,
  output int s); 
  
  real area;

  area = a * a * b;			// pi*r**2
  z = a + b;
  s = int'(a * b);			// casting because of int type and real data type to get an int data type
  return area;
endfunction