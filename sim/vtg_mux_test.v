`timescale 10ns/100ps

`include "vtg_mux.v"

module vtg_mux_test;

  // Net declarations
  
    reg     clk;
    reg     rst;
    
    reg     x;
    reg     y;
    reg     sel;
    wire    z;    



  // Module instantiations

    vtg_mux mu(
        .x(x),
        .y(y),
        .sel(sel),
        .z(z)
    );


  // Assignments


  // Behaviour

  always #4 clk = ~clk;  // 12.5 Mhz

    initial
    begin
        x <= 1'b0;
        y <= 1'b0;
        sel <= 1'b0;
         
    #5  x <= 1'b1;
    
    #5  sel <= 1'b1;
    
    #5  sel <= 1'b0;
    end

endmodule
