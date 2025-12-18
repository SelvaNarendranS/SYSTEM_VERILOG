// class handle assignment (copy, Dangling handle) - class assignment
class handle_assignment;				// class definition
  int value;
  bit [4:0]data;				// class properties
endclass

module class_handle_assignment;
  
 handle_assignment h1, h2;			// only handle has been created (null handle)
  
  initial begin
    
    h1 = new();					// empty handle(object) memory has been allocated(class properties default values allocated)
    
  	h1.value = 314;
 	h1.data  = 14;
    
    $display("\nhandle1 => value = %0d | data = %0d", h1.value, h1.data);
    
    h2 = h1;					// (Two handles(h1 & h2) -> One object(shares same object memory of h1) 
    
    $display("\nhandle1 => value = %0d | data = %0d", h1.value, h1.data);
    $write("\thandle2 => value = %0d | data = %0d", h2.value, h2.data);
    
    $display("\n----------- chaging h2 properties values ------------");
    
    h2.value = 857596;						// changing h2 values -- h1 values also get changes due to shared memory
    
    $display("handle1 => value = %0d | data = %0d", h1.value, h1.data);
    $write("\thandle2 => value = %0d | data = %0d\n ", h2.value, h2.data);
    
  end
endmodule
