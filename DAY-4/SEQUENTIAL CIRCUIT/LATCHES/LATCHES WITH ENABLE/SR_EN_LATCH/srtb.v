module srltb;
reg s,r,en;
wire q,qb;
sren uut(.s(s),.r(r),.en(en),.q(q),.qb(qb));
initial begin
$dumpfile("sr.vcd");
$dumpvars;
$monitor($time,"s=%b,r=%b,en=%b,q=%b,qb=%b",s,r,en,q,qb);
s=0;r=0;
#5 s=0; r=0; en=0;
#15 s=0; r=1; en=0;
#25 s=1; r=0; en=0;
#35 s=1; r=1; en=0;
end
endmodule
