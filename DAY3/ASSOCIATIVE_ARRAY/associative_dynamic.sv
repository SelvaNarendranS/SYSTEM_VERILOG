// Associative array of dynamic array 
module associative_dynamic;
  int assoc_dyn[string][];  
  		// associative & dynamic 
  
  initial begin 
    assoc_dyn["A"] = new[2];
    assoc_dyn["B"] = new[3];
    
    assoc_dyn["A"] = '{100, 200};
    assoc_dyn["B"] = '{300, 400, 500};
    
    $display("\nassociative_dynami entire = %p", assoc_dyn);
    $display("associative_dynami size = %0d", assoc_dyn.size());
    foreach(assoc_dyn[KEY,i])
      $display("associative_dynami column wise dyn_assoc[%s][%0d] = %0d", KEY, i, assoc_dyn[KEY][i]);
    
  end
endmodule