module dtb;
reg d,en;
wire q,qb;
den uut(.d(d),.en(en),.q(q),.qb(qb));
initial begin
$dumpfile("d.vcd");
$dumpvars;
$monitor($time,"d=%b,en=%b,q=%b,qb=%b",d,en,q,qb);
d=0; en=1; 
#5 d=0;   en=0;
#15 d=0;  en=0;
#25 d=1;  en=0;
#35 d=1;  en=1;
end
endmodule
