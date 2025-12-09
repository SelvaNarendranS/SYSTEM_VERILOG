// conditional statements
// First number divisible by 7 using break
module break_key;
  logic [7:0]arr[];
  int a = -1;
  byte out;
  
  initial begin 
    arr = new[7];
    
    // initialize
    arr = '{10,13,21,40,49,63,68};
    $display("Given Array = %p", arr);
    
    foreach(arr[i]) begin
      if(arr[i] % 7 == 0) begin
        a = i;
        break;					// stop the loop once the first match is found
    end
    end
    
    if(a != -1)
      $display("First divisible element divisible by 7 is = %0d", arr[a]);
    else
      $display("not divisible");
  end
endmodule