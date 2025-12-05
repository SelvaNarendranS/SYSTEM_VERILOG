// Associative array methods
// function size(), num() & exists()
module associative_array;
  logic [7:0]arr[int];
  
  initial begin
    arr[100]  = 1;
  	arr[200]  = 2;
    arr[300]  = 3;
    arr[1000] = 10;
    arr[6000] = 60;
    
    $display("\nAssociative array Entire array elements arr = %p", arr);
    $display("Associative array size() = %0d", arr.size());
    
    $display("\nAssociative array num() = %0d", arr.num());				// num() & size() both are same Returns the number of entries.
    
    $display("\nAssociative array num() = %0d", arr.exists(1000));		// Returns 1 if index 4 is exists else 0
    
    $display("\nAssociative array num() = %0d", arr.exists(110));		// Returns 1 if index 4 is exists else 0
    
  end
endmodule

