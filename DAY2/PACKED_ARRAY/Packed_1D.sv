module packed_1D;
  logic [7:0]logic_1d;
  bit [16]bit_1d;
  
  initial begin
    // initialize values
    logic_1d = 'hd2;  
    bit_1d = 'hfa_79; 
    
    // Display initialize values
    $display("Packed 1D array logic_1d = %p(%b)", logic_1d, logic_1d);
    $display("Packed 1D array bit_1d = %p(%b)", bit_1d, bit_1d);
    
    // reallocate values to specific bit 
    logic_1d[3:1] = 'h2;
    bit_1d[14] = 'b1;  
    
    // Display new allocated values
    $display("Packed 1D array logic_1d = %p(%b)", logic_1d, logic_1d);
    $display("Packed 1D array bit_1d = %p(%b)", bit_1d, bit_1d);
    
  end
endmodule