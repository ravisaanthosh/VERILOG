module mux(input s0,s1,s2,a,b,c,d,e,f,g,h,output y);
assign y= s2 ?(s1 ? (s0 ? h : d):(s0 ? f : b)):(s1 ? (s0 ? g : c):(s0 ? e : a));
endmodule
