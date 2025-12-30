// defparam with Interface
// interface
interface intf #(parameter type V = int, 	// parameterized type interface
                 parameter WIDTH = 3);		// parameterized interface
  logic[WIDTH - 1:0] a;		// used parameter type
  V z;
endinterface