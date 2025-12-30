// defparam with Interface
// design
module sum_of_digits(intf intff);
  integer sum, store, temp;
  
  always @(*) begin
    store = intff.a;
    sum = 0;
    while(store != 0) begin
      temp = store % 10;
      sum += temp;
      store /= 10;
    end
  end
  
  assign intff.z = sum;
endmodule