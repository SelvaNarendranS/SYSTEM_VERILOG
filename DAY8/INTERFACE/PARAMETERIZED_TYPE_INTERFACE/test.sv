// Type-Parameterized Interface
// test

module test(intf intff);
  
  initial begin
    $monitor("data type size of a = %0d | a = %0d | z = %0d, data type size of Z = %0d", $size(intff.a), intff.a, intff.z, $size(intff.z));
    
    // initialization 
    intff.a = 14;	#5;
    
    intff.a = 34;	#5;
    
    intff.a = 76;	#5;
    
    intff.a = 164;  #5;
  end
endmodule