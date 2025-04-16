module op(input a,b,c,output o);
always @(a or b or c);
assign o=~(a^b^c);
endmodule
