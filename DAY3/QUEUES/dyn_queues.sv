// dynamic of queues array
module dyn_queues;
  int arr[][$];				// dynamic * queues
  							//     row * queues

  initial begin
    arr = new[5];
    
    arr[0] = '{13,31,65,78,65,6};
    arr[1] = '{61,78,9,5,13};
    arr[2] = '{16,94,76,1};
    arr[3] = '{364,6,58};
    arr[4] = '{61,34};
    
    $display("The entire array arr = %p", arr);
    $display("The size of the arr = %0d", arr.size());
    
    foreach(arr[i])
      $display("The specific element values arr[%0d] = %p", i, arr[i]);
    
    arr[0].pop_front();
    $display("pop_front of arr[0] = %p", arr[0]);    
  end
endmodule