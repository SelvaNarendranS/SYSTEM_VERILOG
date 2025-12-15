// Function array arguments
// associative array
module fn_array_associative_arguments;
  int arr[string], value[string];
  
  function int associative_array(int array[string], output int out[string]);
    out["out"] = array["data"] - array["info"];
  endfunction
  
  initial begin
    // initialize
    arr["data"] = 365322;
    arr["info"] = 6143;
    
    $display("the arr = %p", arr);
    
    associative_array(arr, value);
    
    $display("the array = %p | value = %p", arr, value);
  end
endmodule