// conditional statements
// check mode select by flag using unique0 if condition
module unique0_if;
  logic [1:0]mode;
  logic flag;
  
  initial begin
    // initialize
    repeat(10) begin
      mode = $urandom;
      flag = $random; #1;
      
      unique0 if(mode == 0 & flag)				// Unique0 if condition 
        $display("mode0- active");				// multiple conditions overlap t each other so it gives warning
      else if(mode == 1)
        $display("mode1");
      else if(mode == 2)
        $display("mode2");
      else if(mode == 3)
        $display("mode3");
      else
        $display("Nomatch");
    end
  end
endmodule