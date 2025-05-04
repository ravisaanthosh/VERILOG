module ttb;
reg t,en;
wire q,qb;
ten uut(.t(t),.en(en),.q(q),.qb(qb));
initial begin
$dumpfile("t.vcd");
$dumpvars;
$monitor($time,"t=%b,en=%b,q=%b,qb=%b",t,en,q,qb);
t=0; en=1; 
#5 t=0;   en=0;
#15 t=0;  en=0;
#25 t=1;  en=0;
#35 t=1;  en=1;
end
endmodule
