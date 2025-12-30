// defparam with Interface
// test

module test(intf intff);
  
  initial begin
    $monitor("data type size of a = %0d | a = %0d | z = %0d, data type size of Z = %0d", $size(intff.a), intff.a, intff.z, $size(intff.z));
    
    // initialization 
    intff.a = 3114;	#5;
    
    intff.a = 205431;	#5;
    
    intff.a = 66;	#5;
    
    intff.a = 1906132;  #5;
  end
endmodule