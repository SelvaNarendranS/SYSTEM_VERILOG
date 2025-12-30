// Constants in Interface (parameter vs localparam)
// interface
interface intf #(parameter value = 32); 	// parameterized interface
  localparam WIDTH = 32;				// local parameter fixed no override
  logic[WIDTH - 1:0] a;		// used local parameter
  logic [value - 1] z;		// used parameter
endinterface