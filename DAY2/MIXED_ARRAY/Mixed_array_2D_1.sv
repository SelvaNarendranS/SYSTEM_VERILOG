// 2D packed and 1D unpacked
module mixed_array_2D;		   //        row * width
  logic [3:0][7:0]arr[0:4];   // packed --> 4*8 = 32bit array width
  							  // unpacked --> 5 = 5 locations each ahas 32 bit size
  initial begin
    // Initialize
    arr = '{100,200,300,400,500};
    
    // Display initialize values
    $display("mixed array entire arr  = %p\n", arr);
    
    // reallocate values to specific bit & individual array element access
    arr[3] = 600;
    $display("mixed array Bit Slice arr[3] = %0d\n", arr[3]);
    
    arr[2:4] = '{600,800,900};
    $display("Part select unpacked location arr[%0d:%0d] = %p\n",2, 4, arr[2:4]);
    
    arr[4][3] = 'd10;
    $display("Part select unpacked row access arr[%0d][%0d] = %d\n",4, 0, arr[4][3]);
    
    $display("Part select unpacked row's bit level access Before changing arr[%0d][%0d] = %b",0, 2, arr[0][2]);
    $display("Part select unpacked row's bit level access Before changed arr[%0d][%0d][%0d] = %b\n",0, 2, 3, arr[0][2][3]);
    arr[0][2][3] = 'b1;
    $display("Part select unpacked row's bit level access After changed arr[%0d][%0d] = %b",0, 2, arr[0][2]);
    $display("Part select unpacked row's bit level access After changed arr[%0d][%0d][%0d] = %b\n",0, 2, 3, arr[0][2][3]);
    
    $display("\nmixed array entire arr  = %p", arr);
    foreach(arr[i]) $display("mixed array arr[%0d]  = %0d", i, arr[i]);
    
  end
endmodule