// interface - simple interface
// test

module test(intf intff);
  
  initial begin
    $monitor("a = %b | b = %b | z = %b", intff.a, intff.b, intff.z);
    
    // initialization 
    intff.a = 0;
    intff.b = 0;	#5;
    
    intff.a = 0;
    intff.b = 1;	#5;
    
    intff.a = 1;
    intff.b = 0;	#5;
    
    intff.a = 1;
    intff.b = 1;	#5;
  end
endmodule