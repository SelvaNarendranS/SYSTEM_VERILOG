// Parameterized Class – Multiple Parameters
class base #(parameter int DEPTH = 8, WIDTH = 4,		// parameter - default integer -- changed to int
             parameter byte ADDR = 16,					// multiple parameter
             parameter logic[3:0]COUNT = 0);				
  function void show();
    $display("value in parameter inside class DEPTH = %0d, WIDTH = %0d, ADDR = %0d, COUNT = %0d", DEPTH, WIDTH, ADDR, COUNT);
  endfunction
endclass

module multiple_parameters;
  base #(16, 8, 32, 4)b1;			// creating handle bt changing parameter value - from default
  base b2;							// creating handle by default value of parameter 
  base #(.COUNT(8))b3;				// only assigning value to one parameter		-- more readable
//   base #(, , ,8)b3;				// can also be declared
  
  initial begin
    b1 = new();
    b2 = new();
    b3 = new();// object allocation
    
    $display("Changed parameter");
    b1.show();			// class function call
    $display("\ndefault parameter");
    b2.show();
    $display("\nonly assigning value to one parameter");
    b3.show();
  end
endmodule    