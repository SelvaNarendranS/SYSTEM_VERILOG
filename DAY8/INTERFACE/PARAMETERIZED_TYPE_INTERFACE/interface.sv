// Type-Parameterized Interface
// interface
interface intf #(parameter type V = int, 
                 parameter type S = bit);		// parameterized interface
  S a;		// used parameter type
  V z;
endinterface