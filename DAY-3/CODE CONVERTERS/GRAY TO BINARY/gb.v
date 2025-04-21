module gb(input[3:0] g,output[3:0] b);
assign b=g^(g>>1);
endmodule
