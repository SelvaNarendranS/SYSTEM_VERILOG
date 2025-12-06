// Array Manipulation Method
// Array locator methods mandatory 'With' clause
module array_locator;
  int arr[16];
  int temp[$];
  //int value;
  
  initial begin
    arr = '{1, 3, 2, 4, 10, 6, 14, 8, 3, 6, 7, 16, 2, 26, 47,45};	// initialize
    
    temp = arr.find(value) with (value < 4);						// find function
    $display("\nFind function with value < 4 temp = %p", temp);
    $display("Size/ number of elements = %0d", temp.size());
    
    temp = arr.find_index(index) with (index > 2);					// find_index function
    $display("\nFind_index function with index > 2 temp = %p", temp);
    $display("Size/ number of elements = %0d", temp.size());
    
    temp = arr.find_first(value) with (value > 7);					// find_first function
    $display("\nFind_first function with value > 7 temp = %p", temp);
    $display("Size/ number of elements = %0d", temp.size());
    
    temp = arr.find_first_index(index) with (index % 2 == 0 );			// find_first_index function
    $display("\nFind_first_index function with index mod 2 temp = %p", temp);
    $display("Size/ number of elements = %0d", temp.size());
    
    temp = arr.find_last(value) with (value > 7);					// find_last function
    $display("\nFind_last function with value > 7 temp = %p", temp);
    $display("Size/ number of elements = %0d", temp.size());
    
    temp = arr.find_last_index(index) with (index % 2 == 0);				// find_last_index function
    $display("\nFind_last_index function with index mod 2  temp = %p", temp);
    $display("Size/ number of elements = %0d", temp.size());
  end
endmodule