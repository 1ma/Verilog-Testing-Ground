`timescale 10ns/100ps

`include "vtg_register.v"

module vtg_register_test;

  // Net declarations
  
    reg     clk;
    reg     rst;
    
    reg     we;
    reg     prod1;
    reg [3:0]   prod2;
    
    wire    recv1;
    wire [3:0]  recv2;    



  // Module instantiations

    // 1bit standard register
    vtg_register #(
        .SIZE(1),
        .RST_VAL(1'b0)
       )r1(
        .clk(clk),
        .rst(rst),
        .we(we),
        .datain(prod1),
        .dataout(recv1)
       );
     // 4bit register with modded reset value
     vtg_register #(
        .SIZE(4),
        .RST_VAL(4'b1010)
       )r2(
        .clk(clk),
        .rst(rst),
        .we(we),
        .datain(prod2),
        .dataout(recv2)
       );


  // Behaviour
  always #4 clk = ~clk;  // 12.5 Mhz

    initial
    begin
    
    // 0 ns
        clk <= 1'b0;
        rst <= 1'b1;
        prod1 <= 1'b0;
        prod2 <= 4'b0000;
        we <= 1'b0;
        
    // 100 ns
    #10 rst <= 1'b0;
        we <= 1'b1;
        prod1 <= 1'b1;
        prod2 <= 4'b0101;
    
    // 200 ns
    #10 prod1 <= 1'b0;
        prod2 <= 4'b1111;
        
    end

endmodule
