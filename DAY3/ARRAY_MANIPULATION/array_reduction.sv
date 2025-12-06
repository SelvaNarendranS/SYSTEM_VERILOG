// Array reduction methods
module array_reduction;
  int arr[10];
  
  initial begin
 
    arr = '{1,2,16,57,15,42,75,3,4,5};
    
    $display("\nThe entire array arr   = %p", arr);
    $display("The size of the array    = %0d", $size(arr));
    
    $display("sum of array arr         = %0d", arr.sum()); 		 		// sum
    $display("product of array arr     = %0d", arr.product());	 		// multiplication
    $display("bitwise and of array arr = %0d", arr.and()); 				// bitwise and
    $display("bitwise or of array arr  = %0d", arr.or());	 			// bit wise or
    $display("bitwise xor of array arr = %0d", arr.xor()); 				// bitwise xor
    
  end
endmodule
