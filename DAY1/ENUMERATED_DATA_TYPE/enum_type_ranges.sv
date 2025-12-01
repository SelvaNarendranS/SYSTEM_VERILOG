// Enumerated data type ranges 
module Enumerated_type_ranges;
  enum logic[3:0]{monday, tuesday[4] = 3, thursday, friday}imp_days;         // name value auto increment
//   				name	name constant		
  enum logic[3:0]{apple, mango, orange= 5, grapes, jackfruit[7:10], pinapple, gova}fruits; 
//   						auto increment - 		name range constant
  reg [3:0]week;
  
  initial begin
    
    imp_days = monday;						// name constant
    week = imp_days;
    $display("\ncurrent day = %s(%0d)", imp_days.name(), week);
    
    imp_days = friday;						// name constant
    week = imp_days;
    $display("current day = %s(%0d)", imp_days.name(), week);
    
    fruits = mango;							// associate name constant
    week = fruits;
    $display("Current fruit = %s(%0d)", fruits.name(), week);
    
    fruits = grapes;						// associate name constant
    week = fruits;
    $display("Current fruit = %s(%0d)", fruits.name(), week);
    
    fruits = 7;
    week = fruits;
    $display("Current fruit = %s(%0d)", fruits.name(), week);
    
    fruits = 11;
    week = fruits;
    $display("Current fruit = %s(%0d)\n", fruits.name(), week);
    
  end
endmodule
  