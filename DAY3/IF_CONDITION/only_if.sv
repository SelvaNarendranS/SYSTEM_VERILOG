// conditional statements
// check the given number is positive using only if condition
module only_if;
  byte a;
  
  initial begin
    // initialize
    repeat(10) begin
      a = $random; #1;
      $display("a= %b, %0d",a, a);
      if(a >= 0)
        $display("a = %0d | Positive numbers", a);
    end
  end
endmodule    