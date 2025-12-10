// LOOP INSIDE GENERATE
// 4 bit and gate using generate
module generate_for_loop;
  parameter int bits = 4;
  logic [bits -1:0]a, b, c;
  
  genvar i;
  generate 
    for(i = 0; i < bits; i++) begin : and_g
      assign c[i] = (a[i] & b[i]);
    end
  endgenerate
  
  initial begin
    $monitor("\nTime = %0t | a = %b, b = %b, c = %b\n", $time, a, b, c);
    // initialize
    a = 5;
    b = 12; #1;
    
    $finish;
  end
endmodule
    
    