module mux(input s0,s1,s2,a,b,c,d,e,f,g,h,output y);
assign y= s2 ?(s1 ? (s0 ? h : d):(s0 ? f : b)):(s1 ? (s0 ? g : c):(s0 ? e : a));
endmodule

behavioral model
module mux(input s0,s1,s2,a,b,c,d,e,f,g,h,output reg y);
always begin @(*)
	if (s0==0 & s1==0 & s2==0)
		y=a;
	else if (s0==0 & s1==0 & s2==1)
		y=b;
	else if (s0==0 & s1==1 & s2==0)
		y=c;
	else if (s0==0 & s1==1 & s2==1)
		y=d;
        else if (s0==1 & s1==0 & s2==0)
		y=e;
	else if (s0==1 & s1==0 & s2==1)
		y=f;
	else if (s0==1 & s1==1 & s2==0)
		y=g;
	else if (s0==1 & s1==1 & s2==1)
		y=h;
end
endmodule
