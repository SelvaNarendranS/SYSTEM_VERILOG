// UNIQUE0 CASE STATEMENT
// detect multiple error_code
module unique0_case;
  logic [2:0]in_error;
  enum logic[2:0]{parity, timeout = 3, overflow = 5}error;
  logic out;
  
  always_comb begin
    out = 0;
    unique0 case(in_error)
      parity   : error = parity;
      timeout  : error = timeout;
      overflow : error = overflow;
      default  : out = 1;
    endcase
  end
  
  initial begin
    $monitor("Time = %0t | in_error = %b | error = %s | out = %0s", $time, in_error, error, out ? "MULTIPLE ERROR" : "0");
    
    // initialize
    in_error = 0; #1;
    
    in_error = 1; #1;
    in_error = 5; #1;
    in_error = 4; #1;
    in_error = 2; #1;
    in_error = 7; #1;
    in_error = 3; #1;
  end
endmodule