// conditional statements
// check age categorize using unique if condition
module unique_if;
  byte unsigned age;
  
  initial begin
    // initialize
    repeat(10) begin
      age = $urandom; #1;
      unique if(age < 13)									// Unique if condition 
        $display("age = %0d | Category = child ", age);		// multiple conditions overlap t each other so it gives warning
      else if(age < 20)
        $display("age = %0d | Category = Teenager ", age);
      else if(age < 60)
        $display("age = %0d | Category = Adult ", age);
      else
        $display("age = %0d | Category = senior ", age);
    end
  end
endmodule