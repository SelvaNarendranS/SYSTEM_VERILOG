// structure 
module structure;
  struct {				// define a structure
    string name;
    int mobile;
    bit [7:0]age;
  } person1;
  
initial begin
    
    person1.name   = "jack";		// assigning values to each datatypes
    person1.mobile = 874581876;
    person1.age    = 32;
    
  $display("\nperson1 details - \n\tname = %s \n\tmobile = %0d \n\t age = %0d\n",person1.name, person1.mobile, person1.age); 
 
  end
endmodule