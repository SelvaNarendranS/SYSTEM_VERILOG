// Automatic task
// automatic task that calculates the sum of digits of any integer.
module automatic_task;
  int num;
  int sum, count;
  
  initial begin
    repeat(10) begin
      num = $urandom_range(30, 0);
      sum_digit(num, sum, count);
      $display("num = %0d | sum of digits = %0d | count = %0d", num, sum, count);
    end
  end
  
  task automatic sum_digit(input int a, output int sum_dig, output int count_auto);
    int temp, c = 1;
    while(a !=0) begin
      temp = a % 10;
      sum_dig += temp;
      a /= 10;  
    end
    count_auto = c++;
  endtask
  
endmodule