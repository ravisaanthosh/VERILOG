module dmuxtb;
reg s0,s1,s2,y;
wire y0,y1,y2,y3,y4,y5,y6,y7;
dmux uut(.s0(s0),.s1(s1),.s2(s2),.y(y),.y0(y0),.y1(y1),.y2(y2),.y3(y3),.y4(y4),.y5(y5),.y6(y6),.y7(y7));
initial begin
$dumpfile("dmux.vcd");
$dumpvars;
$monitor ($time,"s0=%b,s1=%b,s2=%b,y=%b,y0=%b,y1=%b,y2=%b,y3=%b,y4=%b,y5=%b,y6=%b,y7=%b",s0,s1,s2,y,y0,y1,y2,y3,y4,y5,y6,y7);
#5 s0=0;s1=1;s2=0;y=1;
#5 s0=0;s1=0;s2=0;y=0;
#5 s0=0;s1=0;s2=1;y=1;
#5 s0=0;s1=1;s2=0;y=0;
#5 s0=0;s1=1;s2=1;y=1;
#5 s0=1;s1=0;s2=0;y=0;
#5 s0=1;s1=0;s2=1;y=1;
#5 s0=1;s1=1;s2=0;y=0;
#5 s0=1;s1=1;s2=1;y=1;
end
endmodule
