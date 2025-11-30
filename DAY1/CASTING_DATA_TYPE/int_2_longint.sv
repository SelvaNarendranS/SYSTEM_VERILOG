// static casting int to longint
module casting_int_longint();

 longint lngint_data;  
 int int_data; 

 initial begin
   int_data = 'b10101011;
   $display("\nbefore casting int_data = %0b(%0d)",int_data, int_data);
   
   lngint_data = longint'(int_data); // casting int to longint
   $display("after casting int to longint = %b(%0d)\n",lngint_data, lngint_data);
 end
endmodule