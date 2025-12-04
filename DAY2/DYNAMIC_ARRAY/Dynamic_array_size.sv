// Dynamic array methods function size
module dynamic_array;
  logic [3:0]arr[];  //  dynamic array define
  reg [3:0]size_arr;
  
  initial begin
    // dynamic array create
    arr = new[5];
    
    // initialize
    arr = '{1, 2, 3, 4, 5};
    
    // Display initilized values
    $display("\nDynamic array entire arr = %p", arr);
    $display("Dynamic array Size arr = %0d \n", arr.size());   // to find size of array
    
    // resizing the created dynamic array with previous value retain
    arr = new[arr.size() + 3](arr);
    size_arr = arr.size();
    $display("\nDynamic array entire arr = %p ", arr);
    $display("Dynamic array Size arr = %0d \n", size_arr);	   // to find size of array
  end
endmodule