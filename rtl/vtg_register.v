// Rising edge register of arbitrary size and reset value

module vtg_register(
            clk,
            rst,
            we,
            datain,
            dataout
        );
        
    parameter SIZE = 1'b1;
    parameter RST_VAL = 1'b0;
    
    input wire clk;
    input wire rst;
    input wire we;
    input wire [SIZE-1:0] datain;
    output reg [SIZE-1:0] dataout;

always @ (posedge clk) begin
    if (rst) begin
        dataout <= RST_VAL;
    end
    
end

always @ (posedge clk) begin
    if (we) begin
        dataout <= datain;
    end
end

endmodule
        
