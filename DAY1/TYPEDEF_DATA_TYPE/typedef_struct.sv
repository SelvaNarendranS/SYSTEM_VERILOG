// userdefined typedef structure 
module typedef_structure;
 typedef struct {				// define a structure
    string name;
    longint mobile;
    bit [7:0]age;
  } details;
  
  initial begin
    details person1;			// creating handle name for structure typedef
    details person2;
    
    person1 	   = '{"sam", 98796314, 21};
    person2.name   = "jack";
    person2.mobile = 876481876;
    person2.age    = 32;
    
    $display("person1 details - \n\tname = %s \n\tmobile = %0d \n\t age = %0d\n",person1.name, person1.mobile, person1.age); 
    $display("person2 details - \n\tname = %s \n\tmobile = %0d \n\t age = %0d",person2.name, person2.mobile, person2.age); 
  end
endmodule