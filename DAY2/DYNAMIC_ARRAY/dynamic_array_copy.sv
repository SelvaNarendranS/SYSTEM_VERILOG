// Dynamic array copy
module dynamic_array;
  logic [3:0]arr[];  //  dynamic array define
  reg [3:0]copy[];
  
  initial begin
    // dynamic array create
    arr = new[5];
    
    // initialize
    arr = '{1, 2, 3, 4, 5};
    
    // Display initilized values
    $display("\nDynamic array entire arr = %p", arr);
    $display("Dynamic array Size arr = %0d ", arr.size());   // to find size of array
    $display("Dynamic array entire arr copy = %p", copy);
    $display("Dynamic array Size arr = %0d \n", copy.size());   // to find size of array
    
    copy = arr;								// Array copy
    
    $display("\nDynamic array entire arr = %p", arr);
    $display("Dynamic array Size arr = %0d ", arr.size());   // to find size of array
    $display("Dynamic array entire arr copy = %p", copy);
    $display("Dynamic array Size arr = %0d \n", copy.size());   // to find size of array
  end
endmodule