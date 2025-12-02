// union array
// typedef using to build union array
	typedef union packed{
    bit [7:0]a;					// for packed same data type & same size are allowed
    bit [7:0]b;
    bit [7:0]c;
    } info;
module union_array;
  							// union memory created by greatest 8bit size by variable name
  
  initial begin
    info data[2];   				// creating handle and array size
    data[0].a = 'hf9;
    $display("union data[0].a = %p", data[0]);			// assign int
    
    data[0].b = 'haf;								// assign byte so previous value also altered
    $display("union data[0].b = %p", data[0]);
    
    data[0].c = 'hd6;							// assign integer so previous value also altered
    $display("union data[0].c = %p", data[0]);
    
    data[1].a = 'hda;
    $display("union data[1].c = %p", data[1]);
    $display("union data.c = %p", data);
  end
endmodule