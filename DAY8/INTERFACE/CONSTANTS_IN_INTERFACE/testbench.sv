// Constants in Interface (parameter vs localparam)
// testbench
`include "interface.sv"
`include "test.sv"

module testbench;
  intf #(10) intff();	// initialize  parameter interface
  test tst(intff);		// passing arguments test (test handle)
  
  // instantation with interface to dut
  digits dut(intff);
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
  end
  
endmodule