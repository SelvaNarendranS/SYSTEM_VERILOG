// static casting integer to int
module casting_integer_int();

 integer igr_data;  
  int int_data; 

 initial begin
   igr_data = 'b101010010xxzz;
   $display("\nbefore casting integer_data = %0b(%0d)",igr_data, igr_data);
   
   int_data = int'(igr_data); // casting integer to int
   $display("after casting integer to int = %b(%0d)\n",int_data, int_data);
 end
endmodule