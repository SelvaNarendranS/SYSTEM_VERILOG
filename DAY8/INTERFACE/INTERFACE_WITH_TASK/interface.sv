// interface_with_task
// interface
interface intf(input logic enable);
  			// optional arguments for interface
  logic [7:0]data;
  logic [7:0]out;
  
  task write(input logic [7:0]d);			// task decleration in interface
    if(enable) begin 
      data = d;
      $display("%0t -- data received to interface task = %0d", $time, d);
    end
    else
      $display("%0t -- Enable = 0 so data is not driven data = %0d", $time, d);
  endtask
  
endinterface