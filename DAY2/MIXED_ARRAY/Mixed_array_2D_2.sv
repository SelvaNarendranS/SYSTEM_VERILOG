// 2D packed and 2D unpacked
module mixed_array_2D;		   //   	row * width
  logic [3:0][7:0]arr[0:4][0:2];   // packed --> 4*8 = 32bit array width
  							  // unpacked --> 5*3 = 15 locations each ahas 32 bit size
  initial begin				  //            row * column
    // Initialize
    arr = '{'{100,200,300}, 
            '{400,500,600}, 
            '{700,800,900},
            '{1000,1100,1200},
            '{1300,1400,1500}};
    
    // Display initialize values
    $display("mixed array entire arr  = %p\n", arr);
    
    // reallocate values to specific bit & individual array element access
    arr[3][1] = 1600;
    $display("mixed array unpacked single element arr[3][1] = %0d\n", arr[3][1]);
    
    arr[2][0:2] = '{1700, 1800, 1900};
    $display("Part select unpacked row elements arr[2][%0d:%0d] = %p\n",0, 2, arr[2][0:2]);
    
    arr[0][1] = 2700;
    arr[1][1] = 2800;
    for(integer i = 0; i < 2; i++)  
      $display("Part select unpacked column elements {arr[%0d][1]} = %0d", i, arr[i][1]);
    
    $display("\nPart select byte level access Before changing arr[%0d][%0d] = %p",0, 2, arr[0][2]);
    $display("Part select byte level access Before changed arr[%0d][%0d][%0d] = %b\n",0, 2, 3, arr[0][2][3]);
    arr[0][2][3] = 'd200;
    $display("Part select byte level access After changed arr[%0d][%0d] = %p",0, 2, arr[0][2]);
    $display("Part select byte level access After changed arr[%0d][%0d][%0d] = %b\n",0, 2, 3, arr[0][2][3]);
    
    $display("Part select bit level access Before changing arr[%0d][%0d] = %d",0, 2, arr[0][2][3]);
    $display("Part select bit level access Before changed arr[%0d][%0d][%0d][4] = %b\n",0, 2, 3, arr[0][2][3][4]);
    arr[0][2][3][4] = 'd1;
    $display("Part select bit level access After changed arr[%0d][%0d] = %d",0, 2, arr[0][2][3]);
    $display("Part select bit level access After changed arr[%0d][%0d][%0d] = %b\n",0, 2, 3, arr[0][2][3][4]);
    
    $display("\nmixed array entire arr = %p", arr);
    foreach(arr[i]) begin
      foreach(arr[i][j]) begin
        $display("mixed Unpacked array arr[%0d][%0d] = %0d", i, j, arr[i][j]);
        foreach(arr[i][j][k])
          $display("mixed packed array arr[%0d][%0d][%0d] = %0d", i, j, k, arr[i][j][k]);
      end
    end
  end    
endmodule