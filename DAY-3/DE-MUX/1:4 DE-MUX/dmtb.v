module demuxtb;
reg s0,s1,i;
wire y0,y1,y2,y3;
demux d(.s0(s0),.s1(s1),.i(i),.y0(y0),.y1(y1),.y2(y2),.y3(y3));
initial begin
$dumpfile("demuxx");
$dumpvars;
$monitor ($time,"s0=%b,s1=%b,i=%b,y0=%b,y1=%b,y2=%b,y3=%b",s0,s1,i,y0,y1,y2,y3);
	s1=0;s0 =0;i=1;
#5 	s1=0;s0 =1;i=1;
#5	s1=1;s0 =0;i=1;
#5 	s1=1;s0 =1;i=1;
end
endmodule
