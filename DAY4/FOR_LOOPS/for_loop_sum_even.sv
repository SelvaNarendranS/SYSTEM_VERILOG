// FOR LOOP
// sum of even numbers from 2 to 20, and print the result.
module for_loop;
  int max = 20;
  int sum;
  
  initial begin
    sum = 0;
    for(int i = 0; i <= max; i++) begin 
      if(i % 2 == 0)
        sum += i;
    end
    $display("Sum of even number from 0 to %0d sum = %0d", max, sum);
  end
endmodule
