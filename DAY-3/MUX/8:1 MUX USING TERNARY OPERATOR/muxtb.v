module muxtb;
reg s0,s1,s2,a,b,c,d,e,f,g,h;
wire y;
mux uut(.s0(s0),.s1(s1),.s2(s2),.a(a),.b(b),.c(c),.d(d),.e(e),.f(f),.g(g),.h(h),.y(y));
initial begin
$dumpfile("mux.vcd");
$dumpvars;
//$display("Time\ts0\ts1\ts2\ta\t\tb\tc\td\te\tf\tg\t\th\ty");
//$monitor("%0t\t%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b",$time,s0,s1,s2,a,b,c,d,e,f,g,h,y);
$monitor($time,"s0=%b,s1=%b,s2=%b,a=%b,b=%b,c=%b,d=%b,e=%b,f=%b,g=%b,h=%b,y=%b",s0,s1,s2,a,b,c,d,e,f,g,h,y);
s0=0;s1=0;s2=0;a=0;b=1;c=0;d=1;e=0;f=0;g=1;h=0;
#5s0=0;s1=1;s2=1;a=0;b=1;c=0;d=0;e=0;f=0;g=1;h=0;
end
endmodule
