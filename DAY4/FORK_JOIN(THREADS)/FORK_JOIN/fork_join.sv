// FORK - JOIN
module fork_join;
  initial begin
    $display("\n Starting of the initial block");
    $display("time = %0t - start of initial", $time); #5;
    
    fork
      $display("time = %0t - start of fork join", $time);
      
      #5 $display("time = %0t - Task A delay 5", $time);
      #2 $display("time = %0t - Task B delay 2", $time);
      #3 $display("time = %0t - Task c delay 3", $time);
      
      $display("time = %0t - end of fork join ", $time);
    join
    
    $display("time = %0t - end of initial delay", $time);
    $display(" ending of the initial block\n");
  end
endmodule