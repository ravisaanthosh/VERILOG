module bg(input [3:0] b,output [3:0] g);
assign g=b^(b>>1);
endmodule
