// static casting shortint to int & longint
module casting_shortint_int_longint();

  int int_data;  
  shortint shtint_data; 
  longint lngint_data;

 initial begin
   shtint_data = 'b10101;
   $display("\nbefore casting shtint_data = %0b(%0d)",shtint_data, shtint_data);
   
   int_data = int'(shtint_data); // casting shortint to int
   $display("after casting shtint to int = %b(%0d)\n",int_data, int_data);
   
   lngint_data = longint'(shtint_data); // casting shortint to longint
   $display("after casting shtint to longint = %b(%0d)\n",lngint_data, lngint_data);
 end
endmodule