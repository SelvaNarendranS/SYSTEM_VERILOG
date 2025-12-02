// structure array
typedef struct {
    logic [15:0]test1;
    byte test2;			
    int test3;
  }info;

module struct_array;
  
  initial begin
    info data[4];							// typedef struture array handle 
    data[0] = '{1613, 147, 1647};				// structure unpacked array assign
    data[1] = '{196, 24, 755};
    data[2] = '{236, 5227, 7542};
    data[3] = '{876, 774, 164};
    $display("\ndata order assignment = %p", data);
    
    data[1].test2 = 8416;								// unpacked member access
    $display("data[1] individual array member = %p", data[1]);
    
    $display("data[3].test2 array individual member access = %0d", data[3].test2); 
  end
endmodule
    
    
    
    