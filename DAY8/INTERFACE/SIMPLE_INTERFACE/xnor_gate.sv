// interface - simple interface
// design
module xnor_gate(
  input logic a, b,
  output logic z);
  
  assign z = ~(a ^ b);
endmodule