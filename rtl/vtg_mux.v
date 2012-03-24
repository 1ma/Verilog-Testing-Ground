// Ultra simple 1bit multiplex0r

module vtg_mux(
        input x,
        input y,
        input sel,
        output z
        );
        
assign z = (!sel & x) | (sel & y);

endmodule
