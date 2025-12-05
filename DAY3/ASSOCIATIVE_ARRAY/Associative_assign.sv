// Associative array assigning methods
module associative_array;
  logic [3:0]arr[int];
  
  initial begin
    arr[100]  = 1;
  	arr[200]  = 2;
    arr[300]  = 3;
    arr[1000] = 10;
    
    $display("\nAssociative array Direct assignment elements of Entire array = %p", arr);
    $display("Associative array size = %0d", arr.size());
    //overwritten
    arr = '{101:1, 201:2, 301:3, 501:5, 1001:10};
    arr[1100]  = 1;
    arr[2050]  = 2;
    arr[300]  = 3;
    arr[13000] = 10;
    
    $display("\nAssociative array assignment pattern elements of Entire array = %p", arr);
    $display("Associative array size = %0d", arr.size());
  end
endmodule

