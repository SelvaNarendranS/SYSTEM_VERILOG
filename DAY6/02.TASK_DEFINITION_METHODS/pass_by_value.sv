// task definition methods
// task pass by value as arguments 
module pass_by_value;
  int a, b;
  byte rn_value;
  
  task return_value;
    input bit [1:0]value1;
    input bit [3:0]value2;							// receiving arguments
    output logic [7:0]out;
    
    $display("Time = %0t | value to task value1, value2 = %0d, %0d", $time, value1, value2); #1;
    
    out = (value2 << value1);						// output of task
    
  endtask
  
  initial begin
    
    a = 3; 
    b = 7; #1;
    
    return_value(a, b, rn_value);					// passing arguments by value
    
    $display("Time = %0t | Positional arguments => sent --- a = %0d | b = %0d - output from task = %0d", $time, a, b, rn_value); #2;
    
    return_value(1, 15, rn_value);					// passing arguments by value
    
    $display("Time = %0t | Positional arguments => sent --- a = %0d | b = %0d - output from task = %0d", $time, a, b, rn_value); #3;
  end
endmodule
    