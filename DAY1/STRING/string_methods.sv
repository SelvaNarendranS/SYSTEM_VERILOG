// string methods 
module string_methods;
  string str;
  string str1;
  string temp;
  
  initial begin
    str  = "greatestwall";
    str1 = "Greatfall";
    
    $display("\nString length 						  = %0d", str.len());			// len
    temp = str;
    temp.putc(7, "t");
    $display("String putc   						  = %s", temp);					// putc
    $display("String getc  							  = %c", str.getc(8));			// getc  
    $display("String toupper case					  = %s", str.toupper());        // toupper 
    $display("String tolower case    				  = %s", str.tolower());		// tolower 
    $display("String compare (case sencitive) 		  = %0d", str.compare(str1));	// compare
    $display("String icompare(ignore case sensetive)  = %0d", str.icompare(str1)); 	// icompare
    $display("String substr 						  = %s", str.substr(1,9));		// substr
  end
endmodule
    
    
    