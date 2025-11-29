// 2 states
module vaiable_2states;
  int      a;		// 32 bit signed
  bit      b;		// >=1 bit unsigned
  byte	   c;		// 8 bit signed
  shortint d;		// 16 bit signed
  longint  e;		// 64 bit signed 
    
  initial begin
    
    $display("\nDefault value of int = %b", a);
    $display("Default value of bit = %b", b);
    $display("Default value of byte = %b", c);
    $display("Default value of shortint = %0d", d);
    $display("Default value of longint = %0d", e);
    
    #5;
    // Initialize
	a = 9814; 			//int
	b = 1'b1; 			//bit
	c = 130;  			//byte
	d = 11;				//shortint
	e = 19674246;			//longint
    
    $display("\nAfter initialize value of int = %0d(%b)", a, a);
    $display("After initialize value of bit = %b", b);
    $display("After initialize value of byte = %0d(%b)", c, c);
    $display("After initialize value of shortint = %0d(%b)", d, d);
    $display("After initialize value of longint = %0d(%b)", e, e);
    
  end
endmodule
