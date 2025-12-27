// interface_with_function
// interface
interface intf(input logic enable);
  			// optional arguments for interface
  logic [7:0]data;
  logic [7:0]out;
  
  function int add(input bit[3:0] a, b);			// function decleration in interface
    if(enable) begin 
      data = a + b;
      $display("%0t -- data received to interface function a = %0d | b = %0d", $time, a, b);
    end
    else
      $display("%0t -- Enable = 0 so data is not driven data a = %0d | b = %0d", $time, a, b);
  endfunction
  
endinterface