// String operators
module string_operators;
  string str1;
  string str2;
  string temp;
  
  initial begin
    str1 = "shortput";
    str2 = "shortgoal";
    
    $display("\n----------str1 = %s | str2 = %s----------", str1, str2);
    
    if(str1 == str2)						// equal
      $display("\nSrting 1 & 2 are equal");
    else
      $display("Srting 1 & 2 are not equal");
    
    if(str1 != str2)						// not equal
      $display("Srting 1 & 2 are not equal");
    else
      $display("Srting 1 & 2 are equal");
    
    if(str1 > str2)							// greater than
      $display("Srting 1 greater than 2");
    else
      $display("Srting 1 not greater than 2");
    
    if(str1 >= str2)						// greater than equal
      $display("Srting 1 greater than equal to 2");
    else
      $display("Srting 1 not greater than equal to 2");
    
    if(str1 < str2)							// less than
      $display("Srting 1 less than to 2");
    else
      $display("Srting 1 not less than to 2");
    
    if(str1 <= str2)						// less than equal
      $display("Srting 1 less than equal to 2");
    else
      $display("Srting 1 not less than equal to 2");
    
    temp = {str1, str2};					// string Concatenation
    $display("string Concatenation temp = %s", temp);

    temp = {4{str2}};						// string Replication
    $display("string replication temp = %s", temp);
    
    temp = str1[5];							// indexing
    $display("string indexing temp = %s\n", temp);
  end
endmodule
      
  