/*module exor(input a,b,output y);
assign y=(a^b);
endmodule*/

/*module exor(input a,b,output y);
xor tb(y,a,b);
endmodule*/

module exor(input a,b,output y);
always @(a or b);
assign y=(a^b);
endmodule
