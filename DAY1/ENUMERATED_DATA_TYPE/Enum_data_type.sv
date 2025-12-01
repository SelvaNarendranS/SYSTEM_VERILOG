// Enumerated data type 
module Enumerated;
  enum logic[1:0]{monday, tuesday, thursday, friday}imp_days;
  enum logic[2:0]{apple, mango, orange= 5, grapes, jackfruit}fruits;
  reg [2:0]week;
  
  initial begin 
    imp_days = monday;
    week = imp_days;
    $display("\ncurrent day = %s(%0d)", imp_days.name(), week);
    
    imp_days = friday;
    week = imp_days;
    $display("current day = %s(%0d)\n", imp_days.name(), week);
    
    fruits = mango;
    week = fruits;
    $display("Current fruit = %s(%0d)", fruits.name(), week);
    
    fruits = grapes;
    week = fruits;
    $display("Current fruit = %s(%0d)", fruits.name(), week);
    
    fruits = 7;
    week = fruits;
    $display("Current fruit = %s(%0d)", fruits.name(), week);
  end
endmodule
  