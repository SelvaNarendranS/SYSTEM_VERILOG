// Recursive function
// function that returns the sum of the first N natural numbers.
module recurisive_function;
  int num = 6;
  int sum;
  
  initial begin
    repeat(10) begin
      num = $urandom_range(30, 0);
      sum = sum_rec(num);
      $display("num = %0d | sum = %0d", num, sum);
    end
  end
  
  function int sum_rec(int a);
  if(a == 0)
    sum_rec = a;
  else
    sum_rec = a + sum_rec(a-1);
endfunction
  
endmodule
    

  