// UNIQUE CASEX STATEMENT
// detect illegal states
module unique_casex;
  logic [2:0]in;
  parameter [2:0] idle = 0,
  				 start = 1,
  				   run = 2,
  				  stop = 3;
  logic [3:0]out;
  
  always_comb begin
    out = 0;
    unique casex(in)
      0 : out = idle;
      1 : out = start;
      2 : out = run;
      3 : out = stop;
    endcase
  end
  
  initial begin
    $monitor("Time = %0t | in = %b | out = %b", $time, in, out);
    
    // initialize
    in = 0; #1;
    
    in = 1; #1;
    in = 'bx0; #1;
    in = 'bz1; #1;
    in = 'bxx; #1;
    in = 'bzx; #1;
    in = 0; #1;
  end
endmodule