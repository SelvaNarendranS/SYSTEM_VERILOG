// Without Arguments & With Return function
// function that returns today’s weekday number
module no_arguments_return;
  logic [4:0]today;
  
  initial begin
    repeat(8) begin 
  		today = week_day();
   	    $display("Todays week day is = %0d(--%0s--)", today,
           (today == 0) ? "Sunday" :
           (today == 1) ? "monday" :
           (today == 2) ? "Tuesday" :
           (today == 3) ? "wednesday" :
           (today == 4) ? "Thursday" :
           (today == 5) ? "Friday" :
           (today == 6) ? "Saturday" : " not valid");
    end
  end
  
  function int week_day();
    int day;
    day = $urandom_range(6,0);
    return day;
  endfunction
endmodule