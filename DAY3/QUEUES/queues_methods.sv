// Queues methods 
module queues_methods;		// $ means unsigned infinity starting with 0 
  logic [7:0]arr[$];   		// unbounded queque 
  reg [7:0]index, item;
  							
  initial begin 
    // initialize
    arr = '{10,20,50};
  
    $display("\nunbounded Queues array entire elements arr = %p", arr);
    $display("unbounded Queues array Size = %0d", arr.size());
    
    arr.insert(2, 30);												// insert function
    arr.insert(0, 70);
    arr.insert(4, 80);    
    $display("\nAfter Insert function array elements arr = %p",  arr);
    $display("after insert array Size = %0d", arr.size());    		//  Size function
    
    index = 2;
    arr.delete(index);												// delete <index> function
    $display("\nAfter delete function array index 2 elements arr = %p",  arr);
    $display("after delete index array Size = %0d", arr.size());
    
    arr.delete();												// delete function
    $display("\nAfter delete function array elements arr = %p",  arr);
    $display("after delete array Size = %0d", arr.size());
    
    arr = '{10};
    // insert function
    arr.insert(1, 30);
    arr.insert(0, 70);
    arr.insert(3, 80);
    $display("\nAfter Insert function array elements arr = %p",  arr);
    $display("after insert array Size = %0d", arr.size());
    
    arr.push_back(150);												// Push back function
    $display("\nAfter Push back function array elements arr = %p",  arr);
    $display("after push back array Size = %0d", arr.size());
    
    item = 145;
    arr.push_front(item);											// Push front function
    $display("\nAfter push front function array elements arr = %p",  arr);
    $display("after push front array Size = %0d", arr.size());
    
    arr.pop_back();												// Push back function
    $display("\nAfter pop back function array elements arr = %p",  arr);
    $display("after pop back array Size = %0d", arr.size());
    
    arr.pop_front();												// Push back function
    $display("\nAfter pop front function array elements arr = %p",  arr);
    $display("after pop front array Size = %0d", arr.size());
   
  end
endmodule