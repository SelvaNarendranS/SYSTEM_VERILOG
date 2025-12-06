// array ordering 
module array_ordering;
  int arr[10];
  
  initial begin
    // initialize
    arr = '{13,52,16,57,95,42,75,3,4,67};
    
    $display("\nThe entire array arr = %p", arr);
    $display("The size of the array = %0d", $size(arr));
    
    arr.sort();												// sort function - ascending order 
    $display("The entire array after sort arr = %p", arr);
    
    arr.rsort();											// rsort function - descending order 
    $display("The entire array after rsort arr = %p", arr);
    
    arr.shuffle();												// shuffle function
    $display("The entire array after shuffle arr = %p", arr);
    
    arr.reverse();												// reverse function
    $display("The entire array after reverse arr = %p", arr);
    
  end
endmodule
