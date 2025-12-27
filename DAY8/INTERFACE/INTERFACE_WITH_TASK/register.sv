// interface_with_task
// design
module register(
  input logic[7:0]data,
  input enable,
  output logic [7:0]out);
  
  always_comb begin
    if(enable)
      out = data;
    else 
      out = out;
  end
endmodule