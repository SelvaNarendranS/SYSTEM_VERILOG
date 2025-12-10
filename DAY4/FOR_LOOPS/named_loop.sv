// NAMED LOOP
// Create a nested loop, name the outer loop, and exit only from the outer loop using disable when inner loop value equals 3.
module named_loop;
  initial begin
    outer_loop : for(int i = 0; i < 10; i++) begin
      inner_loop : for(int j = 0; j < 10; j++) begin
        if(j == 3) 
          disable outer_loop;
        $display("i=%0d j=%0d", i, j);
      end
    end
  end
endmodule