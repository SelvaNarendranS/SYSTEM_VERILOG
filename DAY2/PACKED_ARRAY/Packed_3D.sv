module packed_3D;
  logic [0:3][0:2][0:7]logic_3d;
  
  initial begin
    // initialize values
    logic_3d[0] = 24'hac_45_31;  
    logic_3d[1] = 24'hbc_12_72;
    logic_3d[2] = 24'hcc_45_41;
    logic_3d[3] = 24'hfc_45_61;
    
    // Display initialize values
    $display("Packed 3D array logic_3d = %h", logic_3d);
    foreach(logic_3d[i]) $display("Packed 3D array logic_3d[%0d] = %d", i,  logic_3d[i]);
    
    // reallocate values to specific bit 
    logic_3d[1][0][4] = 0;
    logic_3d[3][2] = 'd148;
    $display;
    
    // Display new allocated values & individual byte access
    foreach(logic_3d[i]) begin
      foreach(logic_3d[i][j]) begin
        $display("Packed 3D array logic_3d[%0d][%0d] = %d", i, j, logic_3d[i][j]);
      end
    end
  end
endmodule