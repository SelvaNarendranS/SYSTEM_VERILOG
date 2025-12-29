// parameterized interface
// interface
interface intf #(parameter WIDTH = 1);		// parameterized interface
  logic [WIDTH - 1:0]a;		// used parameter for width
  logic [WIDTH - 1:0]b;
  logic [63:0]z;
endinterface