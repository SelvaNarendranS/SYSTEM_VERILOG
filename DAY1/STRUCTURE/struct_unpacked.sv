// structure unpacked
module struct_unpacked;
  struct {
    logic [15:0]test1[4];
    byte test2[3];			
    int test3;
  }info;
  
  initial begin
    
    info = '{'{16'hab3, 16'hac6, 16'h614, 16'h34}, '{121, 134, 147}, 1647};				// unpacked assign
    $display("\ninfo order assignment = %p", info);
    
    info.test3 = 846;								// unpacked member access
    $display("info individual member = %p", info);
    
    $display("info individual member access = %p", info.test2); 
  end
endmodule
    
    
    
    