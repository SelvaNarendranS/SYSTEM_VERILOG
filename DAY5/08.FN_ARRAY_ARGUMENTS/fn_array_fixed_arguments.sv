// Function array arguments
// fixed array
module fn_array_fixed_arguments;
  int arr[8];
  
  function int fixed_array(ref int array[8]);
    foreach(array[i])
      array[i] = i * i+5;
  endfunction
  
  initial begin
    // initialize
    foreach(arr[i]) begin
      arr[i] = $urandom_range(1, 20);
    end
    
    $display("the arr = %p", arr);
    
    fixed_array(arr);
    
    $display("the array = %p", arr);
  end
endmodule