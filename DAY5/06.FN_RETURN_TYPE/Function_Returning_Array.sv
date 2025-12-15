// Function Returning Array
// function that returns a 4-element array containing the powers of 2:
module automatic_function;
  int arr[5];
  
  initial begin
    $display("Before array = %p", arr);
    pow(arr);
    $display("square of 2 = %p", arr);
  end
  
  function automatic pow(ref int arr[5]);
    foreach(arr[i]) 
      arr[i] = 2 ** i;
  endfunction
  
endmodule