module halfadder(input a,b,
	output sum,carry);
assign sum=a^b;
assign carry=a&b;
endmodule


module fulladder(input a,b,carry,
	output sum,out);
wire x,y,z;
assign out=y|z;
halfadder uut1(.a(a),.b(b),.sum(x),.carry(y));
halfadder uut2(.a(x),.b(carry),.sum(sum),.carry(z));
endmodule
