// class static properties - static variable Vs non-static variable
class compare;
  int n_stic_var = 0;
  static int stic_var = 0;
  
  function void call();
    n_stic_var++;
    stic_var++;
    $display("in fn call --> n_stic_var = %0d | stic_var = %0d", n_stic_var, stic_var);
  endfunction
endclass

module static_vs_non_static;
  
  compare h1, h2, h3;
  
  initial begin
    h1 = new();
    h2 = new();
    h3 = new();
    
    $display("-------- objects allocated ------");
    $display("h1 : n_stic_var = %0d | stic_var = %0d", h1.n_stic_var, h1.stic_var);
    $display("h2 : n_stic_var = %0d | stic_var = %0d", h2.n_stic_var, h2.stic_var);
    $display("h3 : n_stic_var = %0d | stic_var = %0d", h3.n_stic_var, h3.stic_var);
    
    $display("-------- Handle function call ------(h1 called 2twice)");
    h1.call();
    h1.call();
    h2.call();
    h3.call();
    
    $display("-------- Final total ------");
    $display("h1 : n_stic_var = %0d | stic_var = %0d", h1.n_stic_var, h1.stic_var);
    $display("h2 : n_stic_var = %0d | stic_var = %0d", h2.n_stic_var, h2.stic_var);
    $display("h3 : n_stic_var = %0d | stic_var = %0d", h3.n_stic_var, h3.stic_var);
  end
endmodule
    