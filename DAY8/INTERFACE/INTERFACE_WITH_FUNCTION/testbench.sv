// interface_with_function
// testbench
`include "interface.sv"
`include "test.sv"

module testbench;
  logic enable;
  
  intf intff(enable); 		// interface instantate
  test tst(intff);		// test
  
  // instantation
  register dut(.data(intff.data), .enable(intff.enable), .out(intff.out));
  
  initial enable = 0;
  always #5 enable = ~enable;
  
  initial begin
    $monitor("data = %0d | enable = %0d | out = %0d", intff.data, intff.enable, intff.out);
    
    $dumpfile("dump.vcd");
    $dumpvars;
    #50 $finish;
  end
endmodule