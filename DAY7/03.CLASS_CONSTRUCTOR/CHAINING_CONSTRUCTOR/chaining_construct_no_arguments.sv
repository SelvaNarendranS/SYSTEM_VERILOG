// chaining construct - without arguments 
typedef class display;						// class display decleration
  
// super class
class super_parent;
  int a;
  byte b;
  display spd;
  
  function new();
    a = 10;
    b = 1;
    
    spd = new();
    spd.disp(a, b, "SUPER_PARENT");
  endfunction
  
endclass : super_parent

// parent class
class parent extends super_parent;
  real c;
  logic [3:0] d;
  display pd;
  
  function new();
    c = 14.6989;
    d = 15;						
    
    pd = new();
    pd.disp(c, d, "PARENT");
  endfunction
endclass : parent

// child class
class child extends parent;
  longint e;
  logic [3:0] f;
  display cd;
  
  function new();							 // superior class has no arguments so "super" keyword not necessary, it automatically it has it.
    e = 142245;
    f = 02; 
    
    cd = new();
    cd.disp(e, f, "CHILD");
  endfunction
endclass : child

  // display class
class display;
  function void disp(longint dt1, longint dt2, string str1);
    $display("class = %0s | value1 = %0.04f | value = %0d", str1, dt1, dt2);
  endfunction
endclass
  
module chaining_construct;
  
  child child_h1;
  
  initial begin
    child_h1 = new();			// without super keyword only calling child class so it has super & parent within it
  end
endmodule