module dtb;
reg s,i;
wire y1,y0;
d uut(.s(s),.i(i),.y1(y1),.y0(y0));
initial begin
$dumpfile("d.vcd");
$dumpvars;
$monitor ($time,"s=%b,i=%b,y1=%b,y0=%b",s,i,y1,y0);
s=0;i=1;
#5 s=1;i=0;
end
endmodule
