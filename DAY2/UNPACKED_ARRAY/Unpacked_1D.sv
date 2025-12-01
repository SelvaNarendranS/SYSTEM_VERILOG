module unpacked_1D;
  byte arr[4];
  
  initial begin
    // Initialize
    arr = '{1,2,3,4};
    
    // Display initialize values
    $display("Unpacked arr = %p", arr);
    
    // reallocate values to specific bit & individual array element access
    arr[3] = 6;
    $display("Unpacked arr = %p", arr);
    foreach(arr[i]) $display("Unpacked arr[%0d] = %0d",i, arr[i]);
    
  end
endmodule