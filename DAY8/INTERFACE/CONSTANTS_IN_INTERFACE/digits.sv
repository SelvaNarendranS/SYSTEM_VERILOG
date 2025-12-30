// Constants in Interface (parameter vs localparam)
// design
module digits(intf intff);
  integer sum, store;
  
  always @(*) begin
    store = intff.a;
    sum = 0;
    while(store != 0) begin
      sum ++;
      store /= 10;
    end
  end
  
  assign intff.z = sum;
endmodule