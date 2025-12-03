// 1D packed and 2D unpacked
module static_array;			 //   		width
  logic  [7:0]arr[5][0:2];		// packed --> 8 = 8bit array width
  							// unpacked --> 5*3 = 15 locations each ahas 32 bit size
  initial begin					//       row * column
    // Initialize
    arr = '{'{1,2,3}, 
            '{4,5,6}, 
            '{7,8,9}, 
            '{10,11,12},
            '{13,14,15}};
    
    // Display initialize values
    $display("staic mixed array entire arr  = %p\n", arr);
    
    // reallocate values to specific bit & individual array element access
    arr[3] = '{25,26,27};
    $display("static mixed array unpacked row element arr[3] = %p\n", arr[3]);
    
    arr[2][1] = 64;
    $display("static mixed array unpacked column element arr[2][1] = %0d\n", arr[2][1]);
    
    
    $display("Part select bit level access Before changing arr[%0d][%0d] = %b(%0d)",0, 2, arr[0][2], arr[0][2]);
    $display("Part select bit level access Before changed arr[%0d][%0d][%0d] = %b\n",0, 2, 3, arr[0][2][3]);
    arr[0][2][3] = 'd1;
    $display("Part select bit level access After changed arr[%0d][%0d] = %b(%0d)",0, 2, arr[0][2], arr[0][2]);
    $display("Part select bit level access After changed arr[%0d][%0d][%0d] = %b\n",0, 2, 3, arr[0][2][3]);
    
    $display("\nstatic mixed array entire arr = %p", arr);
    foreach(arr[i]) begin 
      foreach(arr[i][j])
        $display("static mixed array entire arr[%0d][%0d] = %0d",i, j, arr[i][j]);
      end
    end
endmodule