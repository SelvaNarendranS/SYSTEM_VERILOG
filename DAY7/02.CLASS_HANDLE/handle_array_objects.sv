// Array of objects(handles)
class array_objects;
  int data;
  byte info;
  string status;										// class properties
  
  function new(int data = 786_717,						// class methods
              byte info = 36, 
               string status = "DEFAULT VALUE");
    
    this.data   = data;
    this.info   = info;
    this.status = status;
  endfunction
endclass

module handle_array_objects;
  
  array_objects h[5];				// array of handles(all type of array possible)
//   array_objects h[];
//   array_objects h[string];
//   array_objects h[$];
  
  initial begin
    
    foreach(h[i]) begin
    	h[i] = new();
      $display("handle%0d - data = %0d | info = %0d | status = %0s", i, h[i].data, h[i].info, h[i].status);
    end
  end
endmodule