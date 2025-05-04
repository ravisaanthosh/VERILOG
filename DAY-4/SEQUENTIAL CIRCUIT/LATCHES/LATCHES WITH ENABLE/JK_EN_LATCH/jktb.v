module jktb;
reg j,k,en;
wire q,qb;
jken uut(.j(j),.k(k),.en(en),.q(q),.qb(qb));
initial begin
$dumpfile("jk.vcd");
$dumpvars;
$monitor($time,"j=%b,k=%b,en=%b,q=%b,qb=%b",j,k,en,q,qb);
j=0;k=0;
#5 j=0; k=0; en=0;
#15 j=0; k=1; en=0;
#25 j=1; k=0; en=0;
#35 j=1; k=1; en=0;
#45 j=1; k=1; en=1;
end
endmodule
