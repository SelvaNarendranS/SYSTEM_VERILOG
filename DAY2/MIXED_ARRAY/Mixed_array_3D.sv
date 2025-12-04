// 3D packed and 3D unpacked
module mixed_array_3D;		 				  //   	depth * row * width
  logic [2:0][3:0][7:0]arr[0:4][0:1][0:2];   // packed -->3*4*8 = 96bit array width
  							  			// unpacked --> 5*2*3 = 30 locations each ahas 96 bit size
  initial begin						  //            row * column * depth
    // Initialize
    arr = '{'{'{100,200,300}, '{400,500,600}}, 
            '{'{700,800,900}, '{1000,1100,1200}},
            '{'{1300,1400,1500}, '{1600,1700,1800}},
            '{'{1900,2000,2100}, '{2200,2300,2400}},
            '{'{2500,2600,2700}, '{2800,2900,3000}}};
    
    // Display initialize values
    $display("\nmixed array entire arr  = %p\n", arr);
    
    // reallocate values to specific bit & individual array element access
    arr[3][1][1] = 1600;
    $display("mixed array unpacked single element arr[3][1][1] = %0d\n", arr[3][1][1]);
    
    arr[2][1][0:1] = '{5700, 5800};
    $display("Part select unpacked row elements column depth arr[2][1][%0d:%0d] = %p\n",0, 1, arr[2][1][0:1]);
    
    arr[0][1][0] = 2700;
    arr[1][1][0] = 2800;
    for(integer i = 0; i < 2; i++)  
      $display("Part select unpacked column elements {arr[%0d][1][0]} = %0d", i, arr[i][1][0]);
    
    $display("\nPart select byte level access Before changing arr[%0d][%0d] = %p",4, 1, arr[4][1]);
    $display("Part select byte level access Before changing arr[%0d][%0d][%0d] = %0d",4, 1, 2, arr[4][1][2]);
    $display("Part select byte level access Before changed arr[%0d][%0d][%0d][%0d][%0d] = %b\n",4, 1, 2, 2, 1, arr[4][1][2][2][1]);
    arr[4][1][2][2][1] = 'd200;
    $display("Part select byte level access After changing arr[%0d][%0d] = %p",4, 1, arr[4][1]);
    $display("Part select byte level access After changing arr[%0d][%0d][%0d] = %0d",4, 1, 2, arr[4][1][2]);
    $display("Part select byte level access After changed arr[%0d][%0d][%0d][%0d][%0d] = %b\n",4, 1, 2, 2, 1, arr[4][1][2][2][1]);
    
    $display("\nPart select bit level access Before changing arr[%0d][%0d] = %p",4, 1, arr[4][1]);
    $display("Part select bit level access Before changing arr[%0d][%0d][%0d] = %0d",4, 1, 2, arr[4][1][2]);
    $display("Part select bit level access Before changed arr[%0d][%0d][%0d][%0d][%0d] = %b\n",4, 1, 2, 2, 1, arr[4][1][2][2][1]);
    $display("Part select bit level access Before changed arr[%0d][%0d][%0d][%0d][%0d][%0d] = %b\n",4, 1, 2, 2, 1, 5, arr[4][1][2][2][1][5]);
    arr[4][1][2][2][1][5] = 'd1;
    $display("\nPart select bit level access After changing arr[%0d][%0d] = %p",4, 1, arr[4][1]);
    $display("Part select bit level access After changing arr[%0d][%0d][%0d] = %d",4, 1, 2, arr[4][1][2]);
    $display("Part select bit level access After changed arr[%0d][%0d][%0d][%0d][%0d] = %b\n",4, 1, 2, 2, 1, arr[4][1][2][2][1]);
    $display("Part select bit level access After changed arr[%0d][%0d][%0d][%0d][%0d][%0d] = %b\n",4, 1, 2, 2, 1, 5, arr[4][1][2][2][1][5]);
    
    $display("\nmixed array entire arr = %p", arr);
    foreach(arr[r]) begin
      foreach(arr[r][c]) begin
        foreach(arr[r][c][d]) begin
          $display("mixed unpacked array arr[%0d][%0d][%0d] = %p", r, c, d, arr[r][c][d]);
          foreach(arr[r][c][d][upd]) begin
            $display("mixed packed array depth split arr[%0d][%0d][%0d][%0d] = %0d", r, c, d, upd, arr[r][c][d][upd]);
            foreach(arr[r][c][d][upd][upr]) begin
              $display("mixed packed array row split arr[%0d][%0d][%0d][%0d][%0d] = %b", r, c, d, upd, upr, arr[r][c][d][upd][upr]);
              foreach(arr[r][c][d][upd][upr][upb]) begin
                $display("mixed packed array bit split arr[%0d][%0d][%0d][%0d][%0d][%0d] = %b", r, c, d, upd, upr, upb, arr[r][c][d][upd][upr][upb]);
              end
            end
          end
        end
      end
    end

//foreach(arr[r,c,d,upd,upr,upb])
//      $display("mixed packed array bit split arr[%0d][%0d][%0d][%0d][%0d][%0d] = %b", r, c, d, upd, upr, upb, //arr[r][c][d][upd][upr][upb]);

  end    
endmodule