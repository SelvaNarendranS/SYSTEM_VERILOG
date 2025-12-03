// userdefined typedef union 
module typedef_union;
  typedef union {				// define a union
    longint mobile;
    bit [7:0]age;
  } details;
  
  initial begin
    details person1;			// creating handle name for union typedef
    details person2;
    
    person1. mobile = 9876314;
    person2.mobile  = 8764816;
    
    $display("person1 details - %p", person1);     $display("person2 details - %p\n", person2); 
    
	person1.age     = 18763;
    person2.age     = 327541;
    $display("person1 details - %p", person1); 
    $display("person2 details - %p", person2);
    
  end
endmodule