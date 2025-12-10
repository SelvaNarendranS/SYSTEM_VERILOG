// Nested FOR LOOP
// Square pattern printing
module nested_for;
  int size = 10;
  
  initial begin
    
    for(int i = 0; i < size; i++) begin
      for(int j = 0; j < size; j++) begin
        if(i == 0 || i == size-1 || j == 0 || j == size-1) 
          $write("* ");
        else
          $write("  ");
      end
      $display;
    end
  end
endmodule
    