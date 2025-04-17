module mux(input i0,i1,sel,output y);
assign y= ~sel & i0 | sel & i1;
endmodule

using ternary operator
module mux(input i0,i1,sel,output y);
assign y= sel ? i0:i1;
endmodule
